#!/usr/bin/perl
print "content-type:text/html \n\n";
use CGI':standard'; 
print"<html><body>";
$p=param("p");
@greetings=("Good morning","Welcome","How are you doing?","Hello!"); 
$i=int rand scalar @greetings;
print "Hi $p, $greetings[$i]"; 
print"</body></html>";
