#!/usr/bin/perl

$conta = 0;
$ex = 0;

while ($linea=<>){
		chop($linea);
	if ($linea=~/(\d+);(\d+);(\d+);;\((\d+\.\d+)-(\d+\.\d+)\);\((\d+\.\d+)-(\d+\.\d+)\);(\d+);(\d+\.\d+);(\d+);(\d+.\d+);(\d+);(\d+\.\d+);(.+)/){
		
		if($1==49){
			open(FILE, '>a_'.$conta.'.sh');
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



#print $p1_t . "\n" . $p2_t . "\n" . $p3_t . "\n" . $p4_t . "\n";
#print $p1_p . "\n" . $p2_p . "\n" . $p3_p . "\n" . $p4_p . "\n";
