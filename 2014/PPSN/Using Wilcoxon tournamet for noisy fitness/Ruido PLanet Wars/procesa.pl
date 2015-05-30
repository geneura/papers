#!/usr/bin/env perl

use strict;
use warnings;

use File::Slurp::Tiny qw(read_lines);

use v5.14;

my @files = <generacion*/??>;
my @data = ['Gen','ID','Fitness'];
for my $f (@files ) {
    my @file_content = read_lines($f);
    my ($gen,$id) = ($f =~ m{(\d+)/(\d+)});
    for my $c (@file_content) {
	chomp $c;
	(push @data, [$gen, "ID$id", $c]) if $c;
    }
    
}
say join("\n",map join(",",@$_), @data);
