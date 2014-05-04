#!/usr/bin/env perl

use strict;
use warnings;

use v5.14;
use File::Slurp;

my @files=glob "generacion50/* generacion1/*";
my @dists =  qw(weibull norm gamma);
say 'library("fitdistrplus")';

for my $f ( @files ) {
  my $var_name = $f;
  $var_name =~ s{/}{.};
  say "noise.$var_name <- read.table('$f')";
  my $gof = "gof.$var_name <- ";
  my @gof_variables;
  
  for my $d ( @dists ) {
    my $this_var = "fit.$d.$var_name";
    say "$this_var <- fitdist( noise.$var_name\$V1, '$d')";
    push @gof_variables, $this_var;
  }
  say "gof.$var_name <- gofstat( list("
    .join(", ", @gof_variables)."),fitnames=c("
      .join(", ", map("\"$_\"",@dists))."))";
}
