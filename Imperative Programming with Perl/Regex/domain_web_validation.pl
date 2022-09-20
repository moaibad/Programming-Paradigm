#!/usr/bin/perl -w
use strict;

my @domain = ("www.google.com","google.com","www.google.my","yahoo.com",
              "www.yahoo.com","www.abc123.id","www.abc123.sg",
              "www.detik.net")

if ($domain1 =~ m/(www.)([a-z0-9]+)(.com|.id|.net)/){
    print "$domain1 is Valid";
}
else{
    print "$domain1 is Invalid";
}


