#!/usr/bin/perl
# File: a1q4.pl Author: Haorui Yang
# Solution to question 4 of assignment 1, CSCI4152/6509 Fall 2021
#/<[^!].*[^-]>/



while(<>)
{   
    $_ =~ s{\n}{ }g;  
    if(~m/<.*\D*\w*[ ]*>/){
        #print "$_ ";
        if(/[<!--].*[-->]$/){
            ;
        }
        elsif(/[<].*[<!--].*[-->].*[>]$/){
            ;
        }
        else{
            print "$& ";
        }
    }
}