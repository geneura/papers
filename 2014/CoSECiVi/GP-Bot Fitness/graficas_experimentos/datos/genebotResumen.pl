#!/usr/bin/perl

print "J1,J2,Wins,Type,Turns,Map \n";

while ($linea=<>){
	chop($linea);
			# $1     $2    $3     $4     $5    $6     $7    $8    $9
	if ($linea=~/^([ast])_(\d+),([ast])_(\d+),([ast])_(\d+)/){
		print $1;
		print "_";
		print $2;
		print ",genebot,";

		if($5 == $3 && $6 == $4){
			print "genebot";
		}else{
			print $5;
			print "_";
			print $6;
		}
		print ",";
		print $1;
		print "\n";
	}
}



#print $p1_t . "\n" . $p2_t . "\n" . $p3_t . "\n" . $p4_t . "\n";
#print $p1_p . "\n" . $p2_p . "\n" . $p3_p . "\n" . $p4_p . "\n";
