#!/usr/bin/perl
my $arg=shift @ARGV;
my $outdir=shift@ARGV;
$/=eof;
open IN, $arg;
$content=<IN>;
close IN;

$outprefix=$arg;
$outprefix=~s/^.+\///g;
$outfile="$outdir/$outprefix.printed";
open OUT, ">$outfile";
print OUT "Printing arg $arg: $content\n";
close OUT;

