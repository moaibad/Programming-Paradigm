#!/usr/bin/perl -w

use strict;

my $input = <>;
chomp $input;

if ($input =~ m/^(\d{2})(\-)(\w{5})(\-)(\w{6})/){
    if(length($input) == 15){
        print "$input is Valid Serial Number";
    }
    else{
       print "$input is Invalid Serial Number"; 
    }
}
else{
    print "$input is Invalid Serial Number";
}