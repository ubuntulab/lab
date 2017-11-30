#!/usr/bin/perl
print "refresh:1 \n";
print "content-type:text/html \n\n";
use CGI':standard'; 
print"<html><body>";
open(fh, "<", "count.dat"); 
$count =<fh>;
close(fh);
$count++;
print "Visited $count times.";
open(fh, ">", "count.dat"); 
print fh $count; 
close(fh);
print "</body></html>";
