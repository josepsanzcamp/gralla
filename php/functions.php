<?php

// RETURN THE UTF-8 CONVERTED STRING IF IT'S NEEDED
function __getmail_getutf8($temp) {
	if(!mb_check_encoding($temp,"UTF-8")) $temp=mb_convert_encoding($temp,"UTF-8");
	return $temp;
}

function metadata($file) {
	if(!file_exists($file)) return array();
	// PREPARE DATA
	$buffer=file_get_contents($file);
	$pos=strpos($buffer,"\\header {");
	$pos2=strpos($buffer,"\n",$pos);
	$pos3=strpos($buffer,"}",$pos2);
	$datas=substr($buffer,$pos2+1,$pos3-$pos2-1);
	$datas=trim($datas);
	$datas=explode("\n",$datas);
	foreach($datas as $key=>$val) $datas[$key]=trim($val);
	// PREPARE RESULT
	$result=array();
	foreach($datas as $data) {
		$key=strtok($data,"=");
		$val=strtok("");
		// PREPARE KEY
		$key=trim($key);
		$key=__getmail_getutf8($key);
		// PREPARE VAL
		$val=trim($val);
		if(substr($val,0,1)=="\"" && substr($val,-1,1)=="\"") {
			$val=substr($val,1,-1);
			$val=trim($val);
		}
		$val=__getmail_getutf8($val);
		$val=str_replace("\\","",$val);
		if($val!="") $result[$key]=$val;
	}
	return $result;
}

?>