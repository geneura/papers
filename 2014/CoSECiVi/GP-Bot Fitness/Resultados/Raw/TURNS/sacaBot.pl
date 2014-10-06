#!/usr/bin/perl

$conta = 0;
$ex = 0;

while ($linea=<>){
		chop($linea);
	if ($linea=~/(\d+);(\d+);(\d+);;\((\d+\.\d+)-(\d+\.\d+)\);\((\d+\.\d+)-(\d+\.\d+)\);(\d+);(\d+\.\d+);(\d+);(\d+.\d+);(\d+);(\d+\.\d+);(.+)/){
		if($1==49){
			open(FILE, '>t_'.$conta.'.sh');
			print FILE "#!/bin/bash";
			print FILE "\n";
			print FILE "tree=\"";
			print FILE $14;
			print FILE "\"\n";
			print FILE "java -jar gpagent.jar \" \$tree \" ;";
			close (FILE);
			$conta++;

		}
	}
}


