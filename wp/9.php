<?php
date_default_timezone_set("Asia/Calcutta");
setcookie('lastvisit',date("d/m/y h:i:s"),time()+60);
if(isset($_COOKIE['lastvisit']))
{
echo "Last visited time: ".$_COOKIE['lastvisit'];
}
else echo "The cookie 'lastvisit' is stale!";
?>
