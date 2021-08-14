<?php

function __exec($cmd) {
    ob_start();
    passthru("${cmd} 2>&1");
    return ob_get_clean();
}

// CONVERT FROM XML TO LILYPOND
if(in_array("xml",$argv)) {
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
}

// FIXING BOCKPARTS
if(in_array("ly",$argv)) {
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
}

// FIXING HEADER
if(in_array("ly",$argv)) {
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
}

// GENERATE THE PDF AND MIDI
if(in_array("pdf",$argv)) {
    $files=glob("*.ly");
    foreach($files as $file) {
        $file2=str_replace(".ly",".pdf",$file);
        if(!file_exists($file2)) {
            echo "Processing ${file} ... ";
            $output=__exec("lilypond ${file}");
            if(file_exists($file2)) {
                $warning=strpos($output,"advertencia")!==false;
                $error=strpos($output,"error")!==false;
                $nocabe=strpos($output,"la música no cabe en la página")!==false;
                $comprimir=strpos($output,"comprimiendo la música para que quepa")!==false;
                if($error) {
                    echo "OK WITH ERRORS\n";
                } elseif($warning && !$nocabe && !$comprimir) {
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
}

// CONVERT MIDI TO MP3
if(in_array("mp3",$argv)) {
    $files=glob("*.midi");
    foreach($files as $file) {
        $file2=str_replace(".midi",".wav",$file);
        $file3=str_replace(".midi",".mp3",$file);
        if(!file_exists($file3)) {
            echo "Processing ${file} ... ";
            // FOR CENTOS7
            //~ __exec("/usr/bin/timidity -x'bank 0\\n0 /usr/share/soundfonts/fluid-soundfont-lite-patches/FluidR3_GM-B0/Oboe' -OwM -o ${file2} ${file}");
            // FOR DEBIAN10
            __exec("/usr/bin/timidity -x'bank 0\\n0 /usr/share/midi/freepats/Tone_000/068_Oboe' -OwM -o ${file2} ${file}");
            __exec("lame -f ${file2} ${file3}");
            if(file_exists($file2)) {
                unlink($file2);
            }
            if(file_exists($file3)) {
                echo "OK\n";
            } else {
                echo "KO\n";
            }
        }
    }
}
