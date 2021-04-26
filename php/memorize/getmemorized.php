<?php
include(__DIR__."/../functions/util.php");

$lines = file(__DIR__."/.memorized");
$nlines = array();
$i = 0;
foreach($lines as $line){
	$nlines[$i++] = removeLineBreak($line);
}

if(isset($lines)){
	echo implode(",",$nlines);
}
