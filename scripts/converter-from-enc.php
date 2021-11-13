<?php

if(!function_exists("__exec1")) {
    function __exec1($cmd) {
        ob_start();
        passthru("${cmd} 2>&1");
        return ob_get_clean();
    }
}

// CONVERT FROM ENC TO LILYPOND
$files=glob("*.enc");
foreach($files as $file) {
    $file2=str_replace(".enc",".ly",$file);
    if(!file_exists($file2)) {
        echo "Processing ${file} ... ";
        __exec1("enc2ly ${file}");
        if(file_exists($file2)) {
            echo "OK\n";
        } else {
            echo "KO\n";
        }
    }
}

// FIXING MIDI REPETITIONS
$files=glob("*.ly");
foreach($files as $file) {
    $buffer=file_get_contents($file);
    $hash1=md5($buffer);
    $midis=substr_count($buffer,"\\midi");
    if($midis==0) {
        $buffer=explode("\n",$buffer);
        $state=0;
        foreach($buffer as $key=>$val) {
            if($val=="  \\score {") {
                $state=1;
                $cache=array();
                $cache[]="  \\score { \\unfoldRepeats";
            } elseif($state==1) {
                if($val=="    \\layout {}") {
                    $cache[]="    \\midi {}";
                } elseif($val=="  }") {
                    $cache[]="  }";
                    $buffer[$key]=implode("\n",array_merge(array($val),$cache));
                    $state=0;
                } else {
                    $cache[]=$val;
                }
            }
        }
        $buffer=implode("\n",$buffer);
    }
    $hash2=md5($buffer);
    if($hash1!=$hash2) {
        echo "Fixing midi repetitions for ${file} ... ";
        file_put_contents($file,$buffer);
        echo "FIXED\n";
    }
}

// FIXING TEMPO ISSUES
$files=glob("*.ly");
foreach($files as $file) {
    $buffer=file_get_contents($file);
    $hash1=md5($buffer);
    $tempos=substr_count($buffer,"\\tempo");
    if($tempos==0) {
        $buffer=str_replace("\n{\n","\n{\n  \\tempo 4=120\n",$buffer);
    } else {
        $pos=strpos($buffer,"\n{\n");
        $pos2=strpos($buffer,"\n}\n\n",$pos);
        $tempos=substr_count($buffer,"\\tempo",$pos,$pos2-$pos);
        if($tempos==1) {
            $pos3=strpos($buffer,"\\tempo",$pos);
            $pos4=strpos($buffer,"=",$pos3);
            $pos5=strpos($buffer,"\n",$pos4+3);
            $buffer2=substr($buffer,$pos3,$pos5-$pos3);
            $pos=strpos($buffer,"\n{\n",$pos2);
            while($pos!==false) {
                $pos2=strpos($buffer,"\n}\n\n",$pos);
                $tempos=substr_count($buffer,"\\tempo",$pos,$pos2-$pos);
                if($tempos==0) {
                    $buffer=substr_replace($buffer,"\n{\n  ${buffer2}\n",$pos,3);
                }
                $pos=strpos($buffer,"\n{\n",$pos2);
            }
        }
    }
    $hash2=md5($buffer);
    if($hash1!=$hash2) {
        echo "Fixing tempo issues for ${file} ... ";
        file_put_contents($file,$buffer);
        echo "FIXED\n";
    }
}
