#!/usr/bin/perl

use strict;

my $x = 5.1;
my $y = 5;

if ( $x > $y ){
    print "x is greater than y\n";
}
else{
    print "y is greater than x\n";
}

$x = 5.0;
$y = 5.0;

if ( $x > $y ){
    print "x is greater than y\n";
}
elsif ( $y > $x ){
    print "y is greater than x\n";
}
elsif ( $y == $x ){
    print "x is equal to y\n";
}