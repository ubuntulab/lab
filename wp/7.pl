#!/usr/bin/perl
print"Refresh:1 \n";
print"Content-type: text/html \n\n";
use CGI ':standard';
($s,$m,$h)=localtime(time); 
print"the current time is $h hours $m minutes $s seconds";
