#!/usr/bin/perl -w
use strict;

my $input = <>;
chomp $input;

if ($input =~ m/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^A-Za-z0-9])\S{10}/){
    if($input =~ m/\s/){   
        print "Not Match\n";    
    }
    else{
        print "Matches\n";
    }
}
else{
    print "Not Match\n";
}