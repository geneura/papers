#!/usr/bin/perl

use strict;
use warnings;
use File::Slurp qw(read_file);
use v5.14;

my $file = shift || 'partitions.dat';

my $data = read_file( $file );

my @lines = split("\n", $data );
my @results;
my $max_entropy = 0;
my $max_parts = 0;
for my $l (@lines ) {
  chop $l; chop $l; #out with backslashes
  my @values = split(/\&\s*/, $l);
  my $sum = 0;
  map( $sum +=$_, @values[1..$#values] );
  my $entropy = 0;
  my $parts;
  for my $v ( @values[1..$#values] ) {
    if ( $v > 0 ) {
      $parts++;
      my $fraction = $v/$sum;
      $entropy -= $fraction * log( $fraction );
    }
  }
  if ( $entropy > $max_entropy ) {
    $max_entropy = $entropy;
  }
  if ( $parts > $max_parts ) {
    $max_parts = $parts;
  }
  push @values, ($entropy, $parts);
  push @results, \@values;
}

for my $r (@results ) {
  my @row = @$r;
  if ( $row[$#row-1] eq $max_entropy ) {
    $row[0] = "\\textit{ $row[0] }";
  }
  printf "%s & %.3f & %d \\\\\n", join("&", @row[0..$#row-2]), $row[$#row-1] , $row[$#row];
}


