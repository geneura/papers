#!/usr/bin/perl

my %almacen;

#my $entrada = "sal.txt";

my $turno;
my $p1="false"; my @p1_planets; my @p1_ships;
my $p2="false"; my @p2_planets; my @p2_ships;
my $p3="false"; my @p3_planets; my @p3_ships;
my $p4="false"; my @p4_planets; my @p4_ships;

my $p1_t="-1" , $p2_t="-1" , $p3_t="-1" , $p4_t="-1";
my $p1_p="-1" , $p2_p="-1" , $p3_p="-1" , $p4_p="-1";

my $conta = "4";

my $leer = 4;


while ($linea=<>){
		chop($linea);
	if ($linea=~/Turn ([^ \n]*)/){
		$turno = $1;
		$leer = 4;
	}elsif($leer > 0){

		#Observado desde el punto de vista del jugador P1
		if($linea=~/Player 1: P1 - (true|false)-(\d*)\/(\d*)-(\d*)\/(\d*)/){
				$p1 = $1;
				$p1_t = $turno;
				$p1_p = $conta;
				$conta--;
				push(@p1_planets,$3>0?$2/$3-0.5:0);
				push(@p1_ships, $5>0?$4/$5-0.5:0);
				$leer --;
				#print $2/$3-0.5 . "\n";
				#print $4/$5-0.5 . "\n";
		}elsif($linea=~/Player 1: P2 - (true|false)-(\d*)\/(\d*)-(\d*)\/(\d*)/){
				$p1 = $1;
				$p1_t = $turno;
				$p1_p = $conta;
				$conta--;
				push(@p2_planets,$3>0?$2/$3-0.5:0);
				push(@p2_ships, $5>0?$4/$5-0.5:0);
				$leer --;
				#print $2/$3-0.5 . "\n";
				#print $4/$5-0.5 . "\n";
		}elsif($linea=~/Player 1: P3 - (true|false)-(\d*)\/(\d*)-(\d*)\/(\d*)/){
				$p1 = $1;
				$p1_t = $turno;
				$p1_p = $conta;
				$conta--;
				push(@p3_planets,$3>0?$2/$3-0.5:0);
				push(@p3_ships, $5>0?$4/$5-0.5:0);
				$leer --;
				#print $2/$3-0.5 . "\n";
				#print $4/$5-0.5 . "\n";
		}elsif($linea=~/Player 1: P4 - (true|false)-(\d*)\/(\d*)-(\d*)\/(\d*)/){
				$p1 = $1;
				$p1_t = $turno;
				$p1_p = $conta;
				$conta--;
				push(@p4_planets,$3>0?$2/$3-0.5:0);
				push(@p4_ships, $5>0?$4/$5-0.5:0);
				$leer --;
				#print $2/$3-0.5 . "\n";
				#print $4/$5-0.5 . "\n";
		}

		#Observado desde el punto de vista del jugador P2

				elsif($linea=~/Player 2: P1 - (true|false)-(\d*)\/(\d*)-(\d*)\/(\d*)/){
				$p1 = $1;
				$p1_t = $turno;
				$p1_p = $conta;
				$conta--;
				push(@p2_planets,$3>0?$2/$3-0.5:0);
				push(@p2_ships, $5>0?$4/$5-0.5:0);
				$leer --;
				#print $2/$3-0.5 . "\n";
				#print $4/$5-0.5 . "\n";
		}elsif($linea=~/Player 2: P2 - (true|false)-(\d*)\/(\d*)-(\d*)\/(\d*)/){
				$p1 = $1;
				$p1_t = $turno;
				$p1_p = $conta;
				$conta--;
				push(@p1_planets,$3>0?$2/$3-0.5:0);
				push(@p1_ships, $5>0?$4/$5-0.5:0);
				$leer --;
				#print $2/$3-0.5 . "\n";
				#print $4/$5-0.5 . "\n";
		}elsif($linea=~/Player 2: P3 - (true|false)-(\d*)\/(\d*)-(\d*)\/(\d*)/){
				$p1 = $1;
				$p1_t = $turno;
				$p1_p = $conta;
				$conta--;
				push(@p3_planets,$3>0?$2/$3-0.5:0);
				push(@p3_ships, $5>0?$4/$5-0.5:0);
				$leer --;
				#print $2/$3-0.5 . "\n";
				#print $4/$5-0.5 . "\n";
		}elsif($linea=~/Player 2: P4 - (true|false)-(\d*)\/(\d*)-(\d*)\/(\d*)/){
				$p1 = $1;
				$p1_t = $turno;
				$p1_p = $conta;
				$conta--;
				push(@p4_planets,$3>0?$2/$3-0.5:0);
				push(@p4_ships, $5>0?$4/$5-0.5:0);
				$leer --;
				#print $2/$3-0.5 . "\n";
				#print $4/$5-0.5 . "\n";
		}

		#Observado desde el punto de vista del jugador P3

		elsif($linea=~/Player 3: P1 - (true|false)-(\d*)\/(\d*)-(\d*)\/(\d*)/){
				$p1 = $1;
				$p1_t = $turno;
				$p1_p = $conta;
				$conta--;
				push(@p3_planets,$3>0?$2/$3-0.5:0);
				push(@p3_ships, $5>0?$4/$5-0.5:0);
				$leer --;
				#print $2/$3-0.5 . "\n";
				#print $4/$5-0.5 . "\n";
		}elsif($linea=~/Player 3: P2 - (true|false)-(\d*)\/(\d*)-(\d*)\/(\d*)/){
				$p1 = $1;
				$p1_t = $turno;
				$p1_p = $conta;
				$conta--;
				push(@p2_planets,$3>0?$2/$3-0.5:0);
				push(@p2_ships, $5>0?$4/$5-0.5:0);
				$leer --;
				#print $2/$3-0.5 . "\n";
				#print $4/$5-0.5 . "\n";
		}elsif($linea=~/Player 3: P3 - (true|false)-(\d*)\/(\d*)-(\d*)\/(\d*)/){
				$p1 = $1;
				$p1_t = $turno;
				$p1_p = $conta;
				$conta--;
				push(@p1_planets,$3>0?$2/$3-0.5:0);
				push(@p1_ships, $5>0?$4/$5-0.5:0);
				$leer --;
				#print $2/$3-0.5 . "\n";
				#print $4/$5-0.5 . "\n";
		}elsif($linea=~/Player 3: P4 - (true|false)-(\d*)\/(\d*)-(\d*)\/(\d*)/){
				$p1 = $1;
				$p1_t = $turno;
				$p1_p = $conta;
				$conta--;
				push(@p4_planets,$3>0?$2/$3-0.5:0);
				push(@p4_ships, $5>0?$4/$5-0.5:0);
				$leer --;
				#print $2/$3-0.5 . "\n";
				#print $4/$5-0.5 . "\n";
		}

		#Observado desde el punto de vista del jugador P4
		elsif($linea=~/Player 4: P1 - (true|false)-(\d*)\/(\d*)-(\d*)\/(\d*)/){
				$p1 = $1;
				$p1_t = $turno;
				$p1_p = $conta;
				$conta--;
				push(@p4_planets,$3>0?$2/$3-0.5:0);
				push(@p4_ships, $5>0?$4/$5-0.5:0);
				$leer --;
				#print $2/$3-0.5 . "\n";
				#print $4/$5-0.5 . "\n";
		}elsif($linea=~/Player 4: P2 - (true|false)-(\d*)\/(\d*)-(\d*)\/(\d*)/){
				$p1 = $1;
				$p1_t = $turno;
				$p1_p = $conta;
				$conta--;
				push(@p2_planets,$3>0?$2/$3-0.5:0);
				push(@p2_ships, $5>0?$4/$5-0.5:0);
				$leer --;
				#print $2/$3-0.5 . "\n";
				#print $4/$5-0.5 . "\n";
		}elsif($linea=~/Player 4: P3 - (true|false)-(\d*)\/(\d*)-(\d*)\/(\d*)/){
				$p1 = $1;
				$p1_t = $turno;
				$p1_p = $conta;
				$conta--;
				push(@p3_planets,$3>0?$2/$3-0.5:0);
				push(@p3_ships, $5>0?$4/$5-0.5:0);
				$leer --;
				#print $2/$3-0.5 . "\n";
				#print $4/$5-0.5 . "\n";
		}elsif($linea=~/Player 4: P4 - (true|false)-(\d*)\/(\d*)-(\d*)\/(\d*)/){
				$p1 = $1;
				$p1_t = $turno;
				$p1_p = $conta;
				$conta--;
				push(@p1_planets,$3>0?$2/$3-0.5:0);
				push(@p1_ships, $5>0?$4/$5-0.5:0);
				$leer --;
				#print $2/$3-0.5 . "\n";
				#print $4/$5-0.5 . "\n";
		}

		elsif($linea=~/Player ([^ \n]*) Wins!/){
			if($1 eq "1"){$p1_t=$turno; $p1_p="1"}
			if($1 eq "2"){$p2_t=$turno; $p2_p="1"}
			if($1 eq "3"){$p3_t=$turno; $p3_p="1"}
			if($1 eq "4"){$p4_t=$turno; $p4_p="1"}
		}
	}
}

#foreach(@p1_ships) { print "$_\r\n"; }

my $p1_planets_area = 0.0; my $p1_ships_area = 0.0;
my $p2_planets_area = 0.0; my $p2_ships_area = 0.0;
my $p3_planets_area = 0.0; my $p3_ships_area = 0.0;
my $p4_planets_area = 0.0; my $p4_ships_area = 0.0;

for($i = 1; $i< $turno; $i++ ){
	print $p1_planets[$i] .";". $p2_planets[$i] .";". $p3_planets[$i] .";". $p4_planets[$i] ."\r\n";
	#print $p1_ships[$i] .";". $p2_ships[$i] .";". $p3_ships[$i] .";". $p4_ships[$i] ."\r\n";

	$p1_ships_area = $p1_ships_area + $p1_ships[$i];
	$p2_ships_area = $p2_ships_area + $p2_ships[$i];
	$p3_ships_area = $p3_ships_area + $p3_ships[$i];
	$p4_ships_area = $p4_ships_area + $p4_ships[$i];

	$p1_planets_area = $p1_planets_area + $p1_planets[$i];
	$p2_planets_area = $p2_planets_area + $p2_planets[$i];
	$p3_planets_area = $p3_planets_area + $p3_planets[$i];
	$p4_planets_area = $p4_planets_area + $p4_planets[$i];
}

print "=====================================================================\r\n";
print "P1 - Planetas: ". $p1_planets_area/$turno . " - Naves: " . $p1_ships_area/$turno ."\r\n";
print "P2 - Planetas: ". $p2_planets_area/$turno . " - Naves: " . $p2_ships_area/$turno ."\r\n";
print "P3 - Planetas: ". $p3_planets_area/$turno . " - Naves: " . $p3_ships_area/$turno ."\r\n";
print "P4 - Planetas: ". $p4_planets_area/$turno . " - Naves: " . $p4_ships_area/$turno ."\r\n";