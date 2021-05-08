<?php

$words = array();
$words = $argv;

unset($words[0]);

$line = implode(" ",$words);

try{
	$memorized = file(__DIR__."/.memorized");
	
	foreach($memorized as $mem){
		if(str_starts_with($mem,$line)){
			$mem = str_replace(array("\n", "\r"), '', $mem);
			$tmp = str_replace($line,"",$mem);
			if($line != ""){
				print($tmp).",,";
			}
		}else if($line == "@"){
			$mem = str_replace(array("\n", "\r"), '', $mem);
			print($mem.",,");
		}
	}die();
}catch(exception $e){}

print($line);
