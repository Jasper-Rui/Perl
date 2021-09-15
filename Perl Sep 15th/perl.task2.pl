#!/usr/bin/perl
use warnings;
use strict;

sub conc{
    my $string = shift;
    my $input = shift;

    if($string lt $input){
        $string.$input;
    }
    else{
        $input.$string;
    }
    #my @array = {$string, $input};
    #@array =  sort {$a<=>$b} @array;
    #this is for numerical
    #@array = sort {$b cmp $array} @array;
    #print $string.$input;
}

print &conc('aaa','ccc');
print "\n";
print &conc('ccc','aaa');
print "\n";
