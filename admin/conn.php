<?php   
  
  //自定义关闭报错
ini_set("display_errors", "off");
error_reporting(E_ALL | E_STRICT);

 $conn = mysql_connect("127.0.0.1","root","pjy123") or die("数据库链接错误  ".mysql_error()); 

 mysql_select_db("httpstv",$conn) or die("数据库访问错误   ".mysql_error());  
   
 mysql_query("SET NAMES 'utf8'",$conn); //指定字符集
?>  
