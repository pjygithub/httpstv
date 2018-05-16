<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<link rel="shortcut icon" href="./img/logo.ico" />
	<link rel="bookmark" href="./img/logo.ico" type="image/x-icon"　/>
	<title>网星电视直播源管理——加密 · 安全 · 网星。新一代互联网电视直播源管理系统。</title>
	<link href="../css/pc.css" rel="stylesheet">
</head>
<body>
<div class="top_page_div">
	<div class="top_main_box">
			<h1>管理中心</h1>
			<h4>——加密 · 安全 · 网星。  新一代互联网电视直播源管理系统。</h4>
	</div>
</div>
<div class="main_box">
	<div class="add_channel_maindiv">

<?php

//自定义关闭报错
ini_set("display_errors", "off");
error_reporting(E_ALL | E_STRICT);

// 数据库配置
include('conn.php'); 

if (!empty($_POST['tvl_class'])) {
	$tvl_class_q = array();
	$tvl_class_q = $_POST[tvl_class];
	$tvl_class_a = implode('', $tvl_class_q);
}else{
	echo mysqli_error($con);
}

mysql_select_db("httpstv",$con);
$sql = "INSERT INTO tvl_channel (CHName, CHIcon, CHLock, AID, CID) VALUES ('$_POST[CHName]','/img/icon/$_POST[CHIcon].png',1,'$_POST[tvl_area]','$tvl_class_a')";
if (!mysql_query($sql,$con)){
	die('错误' .mysql_error());

}

echo "Return：已被添加1行!";
mysql_close($con);

echo "<br / ><br / >";
echo "<a href='./ba1dea27da5af301e81a1f8eafc68d5503edef890b4ae817a8de068250778ae2.php'>返回</a>";

?>
</div>
</div>
		
<center><div class="erweima"><span>联系我们</span><img src="../img/erweima.png"></center>
</div>
		</div>

<div class="bottom_main">
	<span>All Rights Reserved © 2018    GXULOVE.COM.,Ltd</span><br /><br/>
	<span>我们的电邮：jydf200910@163.com</span>
</div>
</body>
</html>
