#!/usr/bin/perl
my $filestr=shift @ARGV;
@files = split/,/,$filestr;
system("cat @files");

