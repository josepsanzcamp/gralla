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

// FIXING INSTRUMENT NAME
$files=glob("*.ly");
foreach($files as $file) {
    $buffer=file_get_contents($file);
    $hash1=md5($buffer);
    $tempos=substr_count($buffer,"\\header {instrument=");
    if($tempos!=0) {
        $buffer=explode("\n",$buffer);
        // TREURE TOTS ELS INSTRUMENTS DELS HEADERS
        foreach($buffer as $key=>$val) {
            if(strpos($val,"\\header {instrument=")!==false) {
                $buffer[$key]="  \\header {}";
            }
        }
        // TREURE TOTS ELS shortInstrumentName
        foreach($buffer as $key=>$val) {
            if(strpos($val,"shortInstrumentName")!==false) {
                $buffer[$key]=str_replace(array(
                    'shortInstrumentName = #"G"',
                    'shortInstrumentName = #" "',
                    'shortInstrumentName = #"T"',
                    'shortInstrumentName = #"B"',
                    'shortInstrumentName = #"C"',
                ),"",$val);
            }
        }
        // POSAR ELS INSTRUMENTS A CADA LINIA
        $linies=array();
        foreach($buffer as $key=>$val) {
            if(strpos($val,"\\liniaroA")!==false) {
                $pos=strpos($val,"\\liniaroA");
                $id=substr($val,$pos+9,1);
                if(!isset($linies[$id])) {
                    $linies[$id]=$val;
                } else {
                    $buffer[$key]=$linies[$id];
                }
            }
        }
        // CONTINUAR
        $buffer=implode("\n",$buffer);
    }
    $hash2=md5($buffer);
    if($hash1!=$hash2) {
        echo "Fixing instrument name for ${file} ... ";
        file_put_contents($file,$buffer);
        echo "FIXED\n";
    }
}

//~ // UNDO BOOKS SECTIONS
//~ $files=glob("*.ly");
//~ foreach($files as $file) {
    //~ $buffer=file_get_contents($file);
    //~ $hash1=md5($buffer);
    //~ $books=substr_count($buffer,"\\book ");
    //~ if($books!=0) {
        //~ $buffer=explode("\n",$buffer);
        //~ $state=0;
        //~ $count=count($buffer);
        //~ for($i=0;$i<$count;$i++) {
            //~ $val=trim($buffer[$i]);
            //~ if($state==0 && strpos($val,"\\book {")!==false) {
                //~ $state++;
            //~ } elseif($state==1 && strpos($val,"\\bookpart {")!==false) {
                //~ $state++;
            //~ } elseif($state==2 && strpos($val,"\\book {")!==false) {
                //~ $state++;
                //~ unset($buffer[$i-2]);
                //~ unset($buffer[$i-1]);
            //~ }
            //~ if(in_array($state,array(1,3))) {
                //~ unset($buffer[$i]);
            //~ }
        //~ }
        //~ $buffer=implode("\n",$buffer)."\n";
    //~ }
    //~ $hash2=md5($buffer);
    //~ if($hash1!=$hash2) {
        //~ echo "Undo books sections for ${file} ... ";
        //~ file_put_contents($file,$buffer);
        //~ echo "UNDOED\n";
    //~ }
//~ }

// FIXING BOOKS SECTIONS
$files=glob("*.ly");
foreach($files as $file) {
    $buffer=file_get_contents($file);
    $hash1=md5($buffer);
    $books=substr_count($buffer,"\\book ");
    if($books==0) {
        $temp2=explode("\\bookpart {",$buffer);
        $temp0=array_shift($temp2);
        $temp1=array_shift($temp2);
        $buffer=array();
        $buffer[]=$temp0;
        $buffer[]="\\book {\n\n";
        $buffer[]="\\paper {\n";
        $buffer[]="  print-page-number = false\n";
        $buffer[]="  #(set-paper-size \"a4\")\n";
        $buffer[]="  #(layout-set-staff-size 20)\n";
        $buffer[]="}\n\n";
        $buffer[]="\\bookpart {".$temp1;
        if(count($temp2)) {
            $buffer[]="\\bookpart {".implode("\\bookpart {",$temp2);
        }
        $buffer[]="}\n\n";
        // TREURE PART MIDI
        if(!count($temp2)) {
            $temp2[]=$temp1;
        }
        foreach($temp2 as $key=>$val) {
            $val=explode("\n",$val);
            $remove=0;
            foreach($val as $key2=>$val2) {
                if(strpos($val2,"\\unfoldRepeats")!==false) $remove=1;
                if(strpos($val2,"}\\score {")!==false) $remove=1;
                if($remove) unset($val[$key2]);
                if(strpos($val2,"\\midi")!==false) $remove=0;
            }
            $val=implode("\n",$val);
            $temp2[$key]=$val;
        }
        // CONTINUAR
        $buffer[]="\\book {\n\n";
        $buffer[]="\\paper {\n";
        $buffer[]="  print-page-number = false\n";
        $buffer[]="  #(set-paper-size \"a5landscape\")\n";
        $buffer[]="  #(layout-set-staff-size 16)\n";
        $buffer[]="  #(define output-suffix \"a5\")\n";
        $buffer[]="}\n\n";
        $buffer[]="\\bookpart {".implode("\\bookpart {",$temp2);
        $buffer[]="}\n\n";
        $buffer[]="\\book {\n\n";
        $buffer[]="\\paper {\n";
        $buffer[]="  print-page-number = false\n";
        $buffer[]="  #(set-paper-size \"a6landscape\")\n";
        $buffer[]="  #(layout-set-staff-size 12)\n";
        $buffer[]="  #(define output-suffix \"a6\")\n";
        $buffer[]="}\n\n";
        $buffer[]="\\bookpart {".implode("\\bookpart {",$temp2);
        $buffer[]="}\n\n";
        $buffer=implode("",$buffer);
    }
    $hash2=md5($buffer);
    if($hash1!=$hash2) {
        echo "Fixing books sections for ${file} ... ";
        file_put_contents($file,$buffer);
        echo "FIXED\n";
    }
}

// GENERATE THE PDF AND MIDI
$files=glob("*.ly");
foreach($files as $file) {
    $file2=str_replace(".ly",".pdf",$file);
    if(!file_exists($file2)) {
        echo "Processing ${file} ... ";
        $output=__exec("lilypond ${file}");
        if(file_exists($file2)) {
            $warning=stripos($output,"warning")!==false;
            $error=stripos($output,"error")!==false;
            if($error) {
                echo "OK WITH ERRORS\n";
            } elseif($warning) {
                echo "OK WITH WARNINGS\n";
            } else {
                echo "OK\n";
            }
        } else {
            echo "KO\n";
            $file2=str_replace(".ly",".midi",$file);
            if(file_exists($file2)) {
                unlink($file2);
            }
        }
    }
}
