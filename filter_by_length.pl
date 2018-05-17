#!/usr/bin/perl
use strict;
use warnings;
#Fuction��������ƴ����Ϻ�ɾ�����ȵ���200������

use Bio::SeqIO;

my @fa = glob("*.fa");
foreach  (@fa) {
	$_ =~/(\d*[a-zA-Z]+\d+)/;
	my $str = $1 . ".fas";
    my $in = Bio::SeqIO->new(-file=>"$_", -format=>"fasta");
    my $out = Bio::SeqIO->new(-file=>">$str", -format=>"fasta");
    while ( my $seq = $in->next_seq) {
	    my $len = $seq->length;
	    if ($len >= 200) {
		    $out->write_seq($seq);
	    }
    }
}