#!/usr/bin/perl
# File: a1q4.pl Author: Haorui Yang
# Solution to question 5 of assignment 1, CSCI4152/6509 Fall 2021

use warnings;
use strict;

my $string = "";

while(<>)
{       
    $string = $string.$_;
}

$string =~ s{\n}{ }g;

while($string = ~ /<.*>/){
    print "$_\n";
}

print "$string";



