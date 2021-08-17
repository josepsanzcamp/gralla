<?php

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
