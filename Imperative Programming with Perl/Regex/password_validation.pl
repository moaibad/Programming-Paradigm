#!/usr/bin/perl -w
use strict;

my $input = <>;
chomp $input;

if ($input =~ m/^(?=.*[a-z])(?=.*[A-Z])(?=.*[^A-Za-z0-9](?=.*[0-9]))/){
    print "Matches\n";
}
else{
    print "Not Match\n";
}