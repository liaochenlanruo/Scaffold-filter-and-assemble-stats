#!/usr/bin/perl
use strict;
use warnings;
#function����>������ָĳɡ�scaffolds1,2������


my $i = 1;
open IN,"IN.fa" || die;
open OUT,">>IN_scaf.fa" || die;
while (<IN>) {
	chomp;
	if (/(\>\d+)/) {
		print OUT ">scaffold" . $i . "\n";
		$i++;
	}else{
	   print OUT $_ . "\n";
	}
}
close IN;
close OUT;
