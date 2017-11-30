#!/usr/bin/perl
print"content-type:text/html \n\n";
use CGI ':standard'; 
print"<html><body>";
foreach $var(sort(keys(%ENV)))
{
if($var=~/SERVER./||$var=~/GATEWAY./)
{
print"$var=$ENV{$var}<br/>";
}
}
print"</body></html>";
