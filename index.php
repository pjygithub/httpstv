<!--
	@ author: Pan Jinyong
	@ date: 2018-5-13
	@ version: 0.0.2

-->

<!-- 公共部分1start-->

<?php

//自定义关闭报错
ini_set("display_errors", "off");
error_reporting(E_ALL | E_STRICT);

// 数据库配置

include('./admin/conn.php'); 

?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<link rel="shortcut icon" href="./img/logo.ico" />
	<link rel="bookmark" href="./img/logo.ico" type="image/x-icon"　/>
	<title>网星电视直播源管理——加密 · 安全 · 网星。新一代互联网电视直播源管理系统。</title>
	<link href="./css/pc.css" rel="stylesheet">
</head>
<body>
<div class="top_page_div">
	<div class="top_main_box">
			<h1>网星电视直播源管理</h1>
			<h4>——加密 · 安全 · 网星。  新一代互联网电视直播源管理系统。</h4>
	</div>
</div>
<div class="main_box">
	<div class="menu">
		<ul>
			<li><a href="./index.php">-首页-</a><li>
			<?php 
			mysql_select_db("httpstv", $con);
			$result_tvl_area = mysql_query("SELECT * FROM tvl_area");
				// 显示目录-地区表
				while($row = mysql_fetch_array($result_tvl_area)){
					$areaid = $row['AID'];
					if ($row['AID']!=0) {
					echo "<li>";
					echo "<a href='#'>";
				  	//echo "<a href=./";
				  	//echo $row['AID'];
				  	//echo "/index.html>";
				 	echo $row['AName'];
				 	echo "</a>";
				 	echo "</li>";
					}
				 }

			?>
		</ul>
	</div>

	<div class="main_content">

<!-- 公共部分1 end-->	
		<div class="cctvlist">
			<p><h2>央视频道 <!--<span><a href="">更多>>></a></span>--></h2></p>
			<hr />
			<ul class="cctv">
				<?php 
				mysql_select_db("httpstv", $con);
				$result_tvl_channel_cctv = mysql_query("SELECT * FROM tvl_channel WHERE AID=1 AND CHID!=0");
					// 显示央视-频道表
					while($row = mysql_fetch_array($result_tvl_channel_cctv)){			
						
						echo "<li>";
						echo "<a href='#'>";
					  	//echo "<a href=./";
					  	//echo $row['AID'];
					  	//echo "/index.html>";
					  	echo "<img src='.";
					 	echo $row['CHIcon'];
					 	echo "'/>";
					 	echo "</a>";
					 	echo "</li>";
						
					 }
				?>
		</div>
		<div class="weishilist">
			<h2>卫视频道 <!--<span><a href="">更多>>></a></span>--></h2>
			<hr />
			<ul class="weishi">
				<?php 
				mysql_select_db("httpstv", $con);
				$result_tvl_channel_weishi = mysql_query("SELECT * FROM tvl_channel WHERE AID=2");
					// 显示卫视频道-频道表
					while($row = mysql_fetch_array($result_tvl_channel_weishi)){			
						
						echo "<li>";
						echo "<a href='#'>";
					  	//echo "<a href=./";
					  	//echo $row['AID'];
					  	//echo "/index.html>";
					  	echo "<img src='.";
					 	echo $row['CHIcon'];
					 	echo "'/>";
					 	echo "</a>";
					 	echo "</li>";
						
					 }
				?>
			</ul>
		</div>
		<div class="otherlist">
			<h2>港澳台及国际 <!--<span><a href="">更多>>></a></span>--></h2>
			<hr />
			<ul class="othertv">
				<?php 
				mysql_select_db("httpstv", $con);
				$result_tvl_channel_gangaotai = mysql_query("SELECT * FROM tvl_channel WHERE AID=71 or AID=81 OR AID=91");
					// 显示港澳台频道-频道表
					while($row = mysql_fetch_array($result_tvl_channel_gangaotai)){			
						
						echo "<li>";
						echo "<a href='#'>";
					  	//echo "<a href=./";
					  	//echo $row['AID'];
					  	//echo "/index.html>";
					  	echo "<img src='.";
					 	echo $row['CHIcon'];
					 	echo "'/>";
					 	echo "</a>";
					 	echo "</li>";
						
					 }
				?>

			</ul>
		</div>
		<!--<div class="shuzilist">
			<h2>数字频道 <span><a href="">更多>>></a></span>--></h2>

			<!--<ul class="weishi">
				<?php 
				mysql_select_db("httpstv", $con);
				$result_tvl_channel_shuzi1 = mysql_query("SELECT * FROM tvl_channel");

				/** while ($row = mysql_fetch_array($result_tvl_channel_shuzi1)){
					$str = $row['CID'];
					if(strpos($str,'12')===false){
						$cid_q = 0;
						$cid_i = 0;
					    echo '不存在！';
					}else{
						$cid_q = 12;
						$cid_i = int($cid_q);
					    echo '存在！';
					};
					print_r($cid_i)	;
					die;
					*/		
				$result_tvl_channel_shuzi2 = mysql_query("SELECT * FROM tvl_channel where CID=12");
									// 显示数字-频道表
					while($row = mysql_fetch_array($result_tvl_channel_shuzi2)){			
					
						echo "<li>";
						echo "<a href='#'>";
					  	//echo "<a href=./";
					  	//echo $row['AID'];
					  	//echo "/index.html>";
					  	echo "<img src='.";
					 	echo $row['CHIcon'];
					 	echo "'/>";
					 	echo "</a>";
					 	echo "</li>";
						
					 }
				?>
			</ul>
	
		</div>-->
<!-- 公共部分2start-->
	</div>
</div>
<center><div class="erweima"><span>联系我们</span><img src="./img/erweima.png"></center>
</div>
		</div>

<div class="bottom_main">
	<span>All Rights Reserved © 2018    GXULOVE.COM.,Ltd</span><br /><br/>
	<p><a href="./admin/" >进入管理中心</a></p>
	<span>我们的电邮：jydf200910@163.com</span>
</div>
</body>
</html>
