<?php

$lib = file(__DIR__."/.config")[0];

include("$lib/util.php");

$lines = file(__DIR__."/.memorized");
$nlines = array();
$i = 0;

foreach($lines as $line){
	$nlines[$i++] = removeLineBreak($line);
}

if(isset($lines)){
	echo implode(",",$nlines);
}
