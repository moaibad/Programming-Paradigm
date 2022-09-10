#!/usr/bin/perl

use strict;


#Counting Year
my $year = 1980;

while($year <= 2010){
    print "$year\n";
    
    if($year%10 == 0){
        print "This is a new decade!\n";
    }

    $year = $year+1;
}


#Backward loop
my $number = 10;
print "\nCountdown : \n";
while($number>=0){
    print "$number\n";

    if($number == 0){
        print "We have lift off!";
    }
    $number = $number-1;
}
