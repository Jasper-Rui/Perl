
use warnings;
use strict;

sub conc{
    my $string = shift;
    my $input = shift;

    if($string lt $input){
        print $string.$input;
    }
    else{
        print $input.$string;
    }
    #my @array = {$string, $input};
    #@array =  sort {$a<=>$b} @array;


    #print $string.$input;
}

print &conc('aaa','ccc');
print "\n";
print &conc('ccc','aaa');
print "\n";