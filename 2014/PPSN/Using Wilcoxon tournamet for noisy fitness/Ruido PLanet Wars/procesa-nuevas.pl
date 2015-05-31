#!/usr/bin/env perl

use strict;
use warnings;

use File::Slurp::Tiny qw(read_lines);

use v5.14;

my @files = <Nuevas_simulaciones/*>;
my @data = ['Gen','ID','Fitness'];
for my $f (@files ) {
    my @file_content = read_lines($f);
    my ($gen,$id) = ($f =~ m{g(\d+)_(\d+)});
    for my $c (@file_content) {
	my @fitness_pieces = split(";",$c);
	my $fitness = 0;
	map( $fitness += $_ , grep( /\d/, @fitness_pieces ) );
	push @data, [$gen, "ID$id", $fitness];
    }
    
}
say join("\n",map join(",",@$_), @data);
