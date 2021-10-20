#!/usr/bin/perl


use warnings;
use strict;

my %f=();
my $tot=0;


while (<>) {
    while (/[a-zA-Z]/) {
        my $l = $&; 
        $_ = $';
        $f{lc $l} += 1; 
        $tot ++;
    }
}




for (sort { $f{$b} <=> $f{$a} } keys %f) {
	print sprintf("%6d %.4lf %s\n",$f{$_}, $f{$_}/$tot, $_);
}
