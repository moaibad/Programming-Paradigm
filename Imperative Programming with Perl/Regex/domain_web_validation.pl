#!/usr/bin/perl -w
use strict;


my @domain = ("www.google.com","google.com","www.google.my","yahoo.com",
              "www.yahoo.com","www.abc123.id","www.abc123.sg",
              "www.detik.net");


for(my $i = 0; $i <= $#domain; $i++){

    if ($domain[$i] =~ m/(www.)([a-z0-9]+)(.com|.id|.net)/){
        print("$domain[$i] is Valid\n");
    }
    else{
        print("$domain[$i] is Invalid\n");
    }
}
    


