<?php

function __exec($cmd) {
    ob_start();
    passthru("${cmd} 2>&1");
    return ob_get_clean();
}

// CONVERT FROM ENC TO LILYPOND
$files=glob("*.enc");
foreach($files as $file) {
    $file2=str_replace(".enc",".ly",$file);
    if(!file_exists($file2)) {
        echo "Processing ${file} ... ";
        __exec("enc2ly ${file}");
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
        $pos=strpos($buffer,"\\score {");
        while($pos!==false) {
            $pos2=strpos($buffer,"}",$pos);
            $diff=substr_count($buffer,"{",$pos,$pos2-$pos+1)-substr_count($buffer,"}",$pos,$pos2-$pos+1);
            while($diff!=0) {
                $pos2=strpos($buffer,"}",$pos2+1);
                $diff=substr_count($buffer,"{",$pos,$pos2-$pos+1)-substr_count($buffer,"}",$pos,$pos2-$pos+1);
            }
            $midi=substr($buffer,$pos,$pos2-$pos+1);
            $midi=str_replace("\\score {","\\score { \\unfoldRepeats",$midi);
            $midi=str_replace("\\layout {}","\\midi {}",$midi);
            $buffer=substr_replace($buffer,$midi,$pos2+1,0);
            $pos=strpos($buffer,"\\score {",$pos2+strlen($midi));
        }
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
        $pos2=strpos($buffer,"\n}\n",$pos);
        $tempos=substr_count($buffer,"\\tempo",$pos,$pos2-$pos);
        if($tempos==1) {
            $pos3=strpos($buffer,"\\tempo",$pos);
            $pos4=strpos($buffer," = ",$pos3);
            $pos5=strpos($buffer," ",$pos4+3);
            $buffer2=substr($buffer,$pos3,$pos5-$pos3);
            $pos=strpos($buffer,"\n{\n",$pos2);
            while($pos!==false) {
                $pos2=strpos($buffer,"\n}\n",$pos);
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
