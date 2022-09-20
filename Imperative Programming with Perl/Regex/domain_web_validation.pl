#!/usr/bin/perl -w
use strict;

my $domain1 = "www.google.com";
my $domain2 = "google.com";
my $domain3 = "www.google.my";
my $domain4 = "yahoo.com";
my $domain5 = "www.yahoo.com";
my $domain6 = "www.abc123.id";
my $domain7 = "www.abc123.sg";
my $domain8 = "www.detik.net";

if ($domain1 =~ m/(www.)([a-z0-9]+)(.com|.id|.net)/){
    print "$domain1 is Valid";
}
else{
    print "$domain1 is Invalid";
}


