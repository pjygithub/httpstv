<?php   
  
    //自定义关闭报错
    ini_set("display_errors", "off");
    error_reporting(E_ALL | E_STRICT);
    //连接数据库
    $conn = mysql_connect("127.0.0.1","root","pjy123") or die("数据库链接错误  ".mysql_error()); 
    //选择数据库
    mysql_select_db("httpstv",$conn) or die("数据库访问错误   ".mysql_error());  
    //指定字符集 
    mysql_query("SET NAMES 'utf8'",$conn); 
?>  
