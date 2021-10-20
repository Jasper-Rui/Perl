#!/usr/bin/perl
# word frequencies
use warnings;
use strict;

my %f=();
my $tot=0;
my @most_frequest_word = ();
my @only_once_word = ();


#another way to do this - using the modifier /g for regex match
while (<>) {
    foreach my $let (/\w+/g) {              
        $f{lc $let} += 1;                                     
        $tot ++;                                  
    }
}

my $i = 0;
my $n = 0;
for (sort { $f{$b} <=> $f{$a} } keys %f) {
    @most_frequest_word[$i] = $_;
    $i++;
    if($f{$_} == 1){
        $only_once_word[$n] = $_;
        $n++;
    }
}



print "10 most common words are:\n";
for (my $j = 0; $j < 10; $j++) {
    print "$most_frequest_word[$j] "; 
}

print "\n";

print "The numebr of word only appear once is $n";
