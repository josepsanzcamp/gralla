<?php

function __exec($cmd) {
    ob_start();
    passthru("${cmd} 2>&1");
    return ob_get_clean();
}

// CONVERT FROM XML TO LILYPOND
$files=glob("*.xml");
foreach($files as $file) {
    $file2=str_replace(".xml",".ly",$file);
    $file3=str_replace(".xml",".ly~",$file);
    if(!file_exists($file2)) {
        echo "Processing ${file} ... ";
        __exec("musicxml2ly ${file}");
        if(file_exists($file3)) {
            unlink($file3);
        }
        if(file_exists($file2)) {
            echo "OK\n";
        } else {
            echo "KO\n";
        }
    }
}

// FIXING BOCKPARTS
$files=glob("*.ly");
foreach($files as $file) {
    $buffer=file_get_contents($file);
    $hash1=md5($buffer);
    $bookparts=substr_count($buffer,"\\bookpart");
    if($bookparts==0) {
        $pos=strpos($buffer,"\\score {");
        $score=trim(substr($buffer,$pos));
        $buffer=substr($buffer,0,$pos);
        // FIND PARTS
        $parts=array();
        $pos=0;
        for(;;) {
            $pos2=strpos($score,"\\new Staff\n",$pos+1);
            if($pos2===false) break;
            $parts[]=substr($score,$pos,$pos2-$pos);
            $pos=$pos2;
        }
        $pos2=strpos($score,">>",$pos+1);
        $pos2=strpos($score,">>",$pos2+1);
        $parts[]=substr($score,$pos,$pos2-$pos+3);
        $parts[]=substr($score,$pos2+3);
        $midis=$parts;
        $pos=strpos($midis[0],"<<");
        $midis[0]=substr($midis[0],0,$pos)."\\unfoldRepeats {".substr($midis[0],$pos+2);
        $last=count($midis)-1;
        $pos=strrpos($midis[$last],">>");
        $midis[$last]=substr($midis[$last],0,$pos)."}".substr($midis[$last],$pos+2);
        $midis[$last]=str_replace("\\layout {}","\\midi {\\tempo 4 = 120 }",$midis[$last]);
        // ADD BOOKPARTS
        $buffer.="\\bookpart {";
        $buffer.=implode("",$parts);
        $buffer.=implode("",$midis);
        $buffer.="}\n\n";
        for($i=1;$i<$last;$i++) {
            $buffer.="\\bookpart {";
            $buffer.=$parts[0];
            $buffer.=$parts[$i];
            $buffer.=$parts[$last];
            $buffer.=$midis[0];
            $buffer.=$midis[$i];
            $buffer.=$midis[$last];
            $buffer.="}\n\n";
        }
    }
    $hash2=md5($buffer);
    if($hash1!=$hash2) {
        echo "Fixing bockparts for ${file} ... ";
        file_put_contents($file,$buffer);
        echo "FIXED\n";
    }
}

// FIXING HEADER
$files=glob("*.ly");
foreach($files as $file) {
    $buffer=file_get_contents($file);
    $hash1=md5($buffer);
    $buffer=explode("\n",$buffer);
    foreach($buffer as $key=>$val) {
        if(strpos($val,"encodingsoftware")!==false) {
            //~ unset($buffer[$key]);
            $buffer[$key]='    tagline=""';
        } elseif(strpos($val,"encodingdate")!==false) {
            unset($buffer[$key]);
        }
    }
    $buffer=implode("\n",$buffer);
    $hash2=md5($buffer);
    if($hash1!=$hash2) {
        echo "Fixing header for ${file} ... ";
        file_put_contents($file,$buffer);
        echo "FIXED\n";
    }
}
