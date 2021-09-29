#!/usr/bin/perl


while(<>)
{   
    $_ =~ s{\n}{}g;  
    if(/<mu...>/){
        print "$& ";
    }

}