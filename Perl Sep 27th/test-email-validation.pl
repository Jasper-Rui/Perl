#!/usr/bin/perl
# File: a1q4.pl Author: Haorui Yang
# Solution to question 4 of assignment 1, CSCI4152/6509 Fall 2021

use warnings;
#[a-zA-Z][a-zA-Z0-9_.=+--]*
#[a-zA-Z]*([0-9]*)([a-zA-Z0-9\_\.\=\-\+])

while(<>)
{   
    if (/([a-zA-Z][a-zA-Z0-9_.=+--]*)\@([a-zA-Z0-9-]+)\.([a-zA-Z]*)/) {
        print "$&: $_";
    }    
}
