<?php
define('DB_SERVER','sql100.epizy.com');
define('DB_USER','epiz_25727131');
define('DB_PASS' ,'UuPCZ07ypBca');
define('DB_NAME', 'epiz_25727131_shopping');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>