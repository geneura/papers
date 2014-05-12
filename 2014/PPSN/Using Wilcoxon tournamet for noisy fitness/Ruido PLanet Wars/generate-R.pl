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
    say "cat('$d ', $this_var\$estimate,  '\\n')";
  }

  say "gof.$var_name <- gofstat( list("
    .join(", ", @gof_variables)."),fitnames=c("
      .join(", ", map("\"$_\"",@dists))."))";
  say "cat( 'Fit  AIC ', gof.$var_name\$aic, '\\n')";
  say "cat( 'Fit  Chi^2 p value', gof.$var_name\$chisqpvalue, '\\n')";
  say "cat( 'Fit  Chi^2', gof.$var_name\$chisq, '\\n')";
  say "cat( 'Gamma params', fit.gamma.$var_name\$estimate, '\\n')";
}
say "flush.console()";
