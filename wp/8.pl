#!/usr/bin/perl
print"Content-type:text/html \n\n";
use CGI':standard';
use DBI;
$name=param("name");
$age=param("age");
$dbh=DBI->connect("DBI:mysql:cse","root","password");
$sth=$dbh->prepare("insert into students values('$name','$age')");
$sth->execute();
$sth = $dbh->prepare("select * from students");
$sth->execute();
print "<h1>STUDENTS</h1>";
print "<table border=5>";
while(($name,$age)=$sth->fetchrow())
{
print "<tr><td>$name</td><td>$age</td></tr>";
}
print"</table>";
$sth->finish(); 
$dbh->disconnect();
