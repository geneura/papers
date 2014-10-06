#!/usr/bin/perl


while ($linea=<STDIN>){
	chop($linea);
	if($linea=~/Turn (\d+)/){
		$turnos = $1;
	}elsif ($linea=~/Player (\d) Wins!/){
		$player = $1;
	}
}

print $ARGV[0];
	print ",";
	print $ARGV[1];
	print ",";
	if($player == 1){print $ARGV[0]; }
	elsif($player == 2){print $ARGV[1]; }
	else {print "EMPATE";}
	print ",";
	print $turnos;
	print ",";
	print $ARGV[2];
	print "\n";


