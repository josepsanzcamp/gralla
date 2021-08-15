<?php

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
        $buffer[]="}\n\n";
        $buffer[]="\\bookpart {".$temp1;
        $buffer[]="\\bookpart {".implode("\\bookpart {",$temp2);
        $buffer[]="}\n\n";
        $buffer[]="\\book {\n\n";
        $buffer[]="\\paper {\n";
        $buffer[]="  print-page-number = false\n";
        $buffer[]="  #(set-paper-size \"a6landscape\")\n";
        $buffer[]="  #(layout-set-staff-size 14)\n";
        $buffer[]="}\n\n";
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
