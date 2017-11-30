<?php
mysql_connect('localhost','root','password');
mysql_select_db('cse');
mysql_query("insert into contacts values('$_POST[name]','$_POST[addr1]','$_POST[addr2]','$_POST[email]')");
$results=mysql_query("select * from contacts where name='$_POST[name]'");
echo"<table>";
echo"<th>Name</th><th>addr1</th><th>addr2</th><th>email</th>";
while($row=mysql_fetch_row($results))
{
echo"<tr><td>$row[0]</td><td>$row[1]</td><td>$row[2]</td><td>$row[3]</td></tr>";
}
echo"</table>";
?>
