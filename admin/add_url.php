<?php

//自定义关闭报错
ini_set("display_errors", "off");
error_reporting(E_ALL | E_STRICT);

// 数据库配置
include('conn.php'); 

mysql_select_db("httpstv",$con);
$sql = "INSERT INTO tvl_url (CHID, UFrom, UUrl, UPage,UHeader)  VALUES  ('$_POST[tvl_channel]','$_POST[UFrom]','$_POST[UUrl]','$_POST[UPage]','$_POST[UHeader]')";
if (!mysql_query($sql,$con)){
	die('错误' .mysql_error());

}
echo "1行被添加";
mysql_close($con);

echo "<br / >";
echo "<a href='./ba1dea27da5af301e81a1f8eafc68d5503edef890b4ae817a8de068250778ae2.php'>返回</a>";

?>
