#!/usr/bin/env perl

use v5.14;
use strict;
use File::Slurp qw(read_file write_file);

my $tikz_start=<<EOF;
\\documentclass{standalone}
\\usepackage{tikz}

\\begin{document}
\\begin{tikzpicture}
EOF

my $tikz_end=<<EOF;
\\end{tikzpicture}
\\end{document}
EOF

my @files = glob "g*.tex";

for my $f (@files ) {
  my $output_file = "png_$f";
  my $f_content = read_file( $f );
  write_file($output_file, "$tikz_start\n$f_content\n$tikz_end\n");
}
