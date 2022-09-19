#!/usr/bin/perl -w
use strict;

my $input = <>;
chomp $input;

if ($input =~ m/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^A-Za-z0-9])(?=.*[^-\s])\S{10}/){
    print "Matches\n";
}
else{
    print "Not Match\n";
}