#!/usr/bin/perl -w
use strict;

print "Input Password : ";
my $input = <>;
chomp $input;

if ($input =~ m/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^A-Za-z0-9])(?=.*[^-\s])\S{10}/){
    print "Password Valid!\n";
}
else{
    print "Invalid Password!\n";
}