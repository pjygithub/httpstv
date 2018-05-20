<!--
	@ author: Pan Jinyong
	@ date: 2018-5-14
	@ version: 0.0.2

-->

<!-- 公共部分1start-->
<?php

//自定义关闭报错
ini_set("display_errors", "off");
error_reporting(E_ALL | E_STRICT);

//载入数据库
include('conn.php'); 

?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<link rel="shortcut icon" href="./img/logo.ico" />
	<link rel="bookmark" href="../img/logo.ico" type="image/x-icon"　/>
	<title>网星电视直播源管理——加密 · 安全 · 网星。新一代互联网电视直播源管理系统。</title>
	<link href="../css/style.css" rel="stylesheet">
</head>
<body>
<div class="top_page_div">
	<div class="top_main_box">
			<h1>管理中心</h1>
			<h4>——加密 · 安全 · 网星。  新一代互联网电视直播源管理系统。
				<a href="../index.php">回到首页</a>&nbsp;
				<a href="./index.php">注销退出</a>
			</h4>
	</div>
</div>
<div class="add_main_box">
	<h2>频道添加</h2>
	<hr />
	<form class="add_admin_form" action="./add_channel.php" method="post" name="add_channel" target="_self">
		<div class="add_admin_channel">
			<!--<p>*频道ID：</p><input class="input1" type="text" name="CHID">（请填写数字）<br />-->
			<p>*频道名称：</p>
			<input class="input1" type="text" name="CHName"><br />
			<p>*频道台标路径：</p>
			<input class="input1" type="text" name="CHIcon">（请填写路径。如"cctv/cctv1".png）<br/>
			<p>*频道地区：</p>
			<div class="areaid">
				<?php 
					$result_tvl_area = mysql_query("SELECT * FROM tvl_area");
					// 显示目录-地区表
					while($row = mysql_fetch_array($result_tvl_area)){
						$areaid = $row['AID'];
						echo "<ul><li> <input class='area' type='radio' name='tvl_area' value='" . $areaid . "' id='". $areaid . "' /> " . $row['AName'] . "</li></ul>";
					}
				?>
		
		<br />
		<p>*频道分类：</p>
			<div class="area_class">
				<?php 
					$result_tvl_class = mysql_query("SELECT * FROM tvl_class");
					// 显示目录-地区表
					while($row = mysql_fetch_array($result_tvl_class)){
						$classid = $row['CID'];
						echo "<ul><li><input class='class' type='checkbox' name='tvl_class[]' value='" . $classid . "' id='". $classid . "'/>" . $row['CName']. "</li></ul>";
					}
				?>
			</div>
			<br />
		<input class="input2" type="reset" name="resname"  value="我要重置" />
		<input class="input2" type="submit" name="add_channel"  value="确认无误，添加频道"/><br />
	</form>

<br /><br /><br /><br />

	<h2>直播源添加</h2>
	<hr />
	<div class="add_admin_channel_url">
			<form class="form" action="./add_url.php" method="post" name="add_url" target="_self">
				<p>*源属频道名称：</p>
				<div class= "channel_id">
					<?php 
						$result_tvl_channel = mysql_query("SELECT * FROM tvl_channel");
						// 显示目录-地区表
						while($row = mysql_fetch_array($result_tvl_channel)){
							$channelid = $row['CHID'];
							echo "<ul><li> <input class='area' type='radio' name='tvl_channel' value='" . $channelid . "' id='". $channelid . "' /> " . $row['CHName'] . "</li></ul>";
						}
					?>
				</div>
				<P>*源来自何处：</p>
				<input class="input1" type="text" name="UFrom"><br />
				<p>*源直播地址：</p>
				<input class="input1" type="text" name="UUrl"><br />
				<p>*源非移动端直播地址：</p>
				<input class="input1" type="text" name="UPage"><br />
				<p>*源请求头：</p>
				<input class="input1" type="text" name="UHeader"><br />
				</P>
				<br />
				<br />
				<input type="reset" name="resname"  value="我要重置" />
				<input class="input1" type="submit" name="add_channel"  value="确认无误，添加频道"/><br />
			</form>
	</div>
</div>		
<center>
	<div class="erweima">
		<span>联系我们</span>
		<img src="../img/erweima.png">
	</div>
</center>

<div class="bottom">
<div class="bottom_main">
	<span>All Rights Reserved © 2018    GXULOVE.COM.,Ltd</span><br /><br/>
	<span>我们的电邮：jydf200910@163.com</span>
</div>
</div>
</body>
</html>
