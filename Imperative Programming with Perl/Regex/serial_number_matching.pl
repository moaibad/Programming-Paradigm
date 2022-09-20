#!/usr/bin/perl -w

use strict;

print "Input Serial Number : ";
my $input = <>;
chomp $input;

if ($input =~ m/^(\d{2})(\-)(\w{5})(\-)(\w{6})/){
    if(length($input) == 15){
        print "$input is valid serial number";
    }
    else{
       print "$input is invalid serial number"; 
    }
}
else{
    print "$input is invalid serial number";
}