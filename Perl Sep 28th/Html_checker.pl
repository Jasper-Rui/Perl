#!/usr/bin/perl
# File: a1q4.pl Author: Haorui Yang
# Solution to question 5 of assignment 1, CSCI4152/6509 Fall 2021
#/<[^!].*[^-]>/

my $length = 0;
my $minlength = 2;
my $maxlength = 0;
my $tags = 0;
my $avglength = 0;

while(<>)
{   
    $_ =~ s{\n}{ }g;  
    if(~m/<(.*?)>/){
        #print "$_ ";
        if(/[<!--].*[a-zA-Z0-9_-]*[-->]$/){
            ;
        }
        elsif(/[<][a-zA-Z0-9_-]*.*([<!--])[a-zA-Z0-9_-]*..*([-->])[a-zA-Z0-9_-]*..*[>]$/){
            ;
        }
        else{
            #print "$& ";
            $tags++;
            $length = $length + length $&;
            if($length > $maxlength){
                $maxlength = $length;
            }
            if($length < $minlength){
                $minlength = $length;
            }  
        }
    }
}
if($tags != 0){
    $avglength = $length / $tags;
}

if($tags == 0){
    $minlength = 0;
}


print "Tag count: $tags\n";
print "Min length: $minlength\n";
print "Max length: $maxlength\n";
print "Avg length: $avglength\n";