#!/usr/bin/perl

print "IT,EVALUATIONS,BEST_F,AVERAGE_F,BEST_DEPTH,AVERAGE_DEPTH,BEST_SIZE,AVERAGE_SIZE,BEST_AGE,AVERAGE_AGE \n";

while ($linea=<>){
		chop($linea);
	if ($linea=~/(\d+);(\d+);(\d*);;\((\d\.\d+)-([-]\d\.\d+)\);\((\d\.\d+)-([-]\d\.\d+)\);(\d+);(\d\.\d+);(\d+);(\d+.\d+);(\d+);(\d+\.\d+);/){
		print $1;
		print ",";
		print $2;
		print ",";
		#print $3; #TIME
		#print ";";
		print $4;
		print ",";
		#print $5; #BEST FITNESS Segunda componente
		#print ";";
		print $6;
		print ",";
		#print $7; #AVERAGE FITNESS Segunda componente
		#print ";";
		print $8; 
		print ",";
		print $9;
		print ",";
		print $10;
		print ",";
		print $11;
		print ",";
		print $12;
		print ",";
		print $13;
		print "\n";
	}
}



#print $p1_t . "\n" . $p2_t . "\n" . $p3_t . "\n" . $p4_t . "\n";
#print $p1_p . "\n" . $p2_p . "\n" . $p3_p . "\n" . $p4_p . "\n";
