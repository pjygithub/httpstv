<!-- 
	@ author: Pan Jinyong
	@ date: 2018-5-17
	@ version: 0.1.3 
-->

<!-- 公共部分1 start-->

<?php
//关闭报错
ini_set("display_errors", "off");
error_reporting(E_ALL | E_STRICT);

// 载入数据库
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
	<link href="./css/style.css" rel="stylesheet">
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
				$result_tvl_area = mysql_query("SELECT * FROM tvl_area");
				// 显示目录-地区表
				while($row = mysql_fetch_array($result_tvl_area)){
					$areaid = $row['AID'];
					if ($row['AID']!=0) {
						echo "<li>";
						echo "<a href='#'>";
						// echo "<a href=./";
						// echo $row['AID'];
						// echo "/index.html>";
						echo $row['AName'];
						echo "</a>";
						echo "</li>";	
					}
				}

			?>
		</ul>
	</div>

	<div class="main_content">

<!-- 公共部分1 end -->	
		<div class="cctvlist">
			<p>
				<h2>央视频道 
					<!-- <p><a href="">更多>>></a></p> -->
				</h2>
			</p>
			<hr />
			<ul class="cctv">
				<?php 
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
			</ul>
		</div>
		<div class="weishilist">
			<h2>卫视频道 
				<!--<p><a href="">更多>>></a></p>-->
			</h2>
			<hr />
			<ul class="weishi">
				<?php 
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
			<h2>港澳台及国际 
				<!--<p><a href="">更多>>></a></p>-->
			</h2>
			<hr />
			<ul class="othertv">
				<?php 
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

<!-- 公共部分2start-->
	</div>
</div>

<center>
	<div class="erweima">
		<span>联系我们</span>
		<img src="./img/erweima.png">
</center>
	</div>

<div class="bottom_main">
	<span>All Rights Reserved © 2018    GXULOVE.COM.,Ltd</span><br /><br/>
	<p>
		<a href="./admin/" >进入管理中心</a>
	</p>
	<span>我们的电邮：jydf200910@163.com</span>
</div>
</body>
</html>
