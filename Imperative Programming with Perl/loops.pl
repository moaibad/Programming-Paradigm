#!/usr/bin/perl

use strict;

my $year = 1980;

while($year <= 2010){
    print "$year\n";
    
    if($year%10 == 0){
        print "This is a new decade!\n";
    }
    
    $year = $year+1;
}