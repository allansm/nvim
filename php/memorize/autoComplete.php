<?php

//include("../functions/util.php");

$words = array();
$words = $argv;

unset($words[0]);

$line = implode(" ",$words);

try{
	$memorized = file(__DIR__."/.memorized");
	
	foreach($memorized as $mem){
		if(str_starts_with($mem,$line)){
			$tmp = str_replace($line,"",$mem);
		//if(!(strpos($mem, $line) === false)){
			if($line != ""){
				print($tmp)." ";
				//die();
			}
		}else if($line == "@"){
			print($mem." ");
		}
	}
}catch(exception $e){}

//print(removeLineBreak($line));
print($line);
