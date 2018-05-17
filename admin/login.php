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
        <h1>网星电视直播源管理</h1>
         <h4>——加密 · 安全 · 网星。  新一代互联网电视直播源管理系统。</h4>
    </div>
</div>
<div class="main_box">
    <div class="login_class">
        <?php 
            //自定义关闭报错
            ini_set("display_errors", "off");
            error_reporting(E_ALL | E_STRICT);

            //登录  
            if(!isset($_POST['submit'])){  
                exit('非法访问!');
                echo "<a href='./index.php'>";
                echo "返回</a>";  
            }  
            $username = htmlspecialchars($_POST['username']);  
            $password = MD5($_POST['password']);  
            
            //包含数据库连接文件  
            include('conn.php');  
            //检测用户名及密码是否正确  
            $check_query = mysql_query("select userid from tvl_admin where username='$username' and password='$password' limit 1");  
            if($result = mysql_fetch_array($check_query)){  
                //登录成功  
                session_start();  
                $_SESSION['username'] = $username;  
                $_SESSION['userid'] = $result['userid'];  
                echo $username,' 欢迎你！进入 <a href="   ba1dea27da5af301e81a1f8eafc68d5503edef890b4ae817a8de068250778ae2.php">管理中心</a><br />';  
                //echo '点击此处 <a href="login.php?action=logout">注销</a> 登录！<br />';  
                exit;  
            } else {  
                exit('登录失败！点击此处 <a href="javascript:history.back(-1);">返回</a> 重试');  
            }   
  
            //注销登录  
            if($_GET['action'] == "logout"){  
                unset($_SESSION['userid']);  
                unset($_SESSION['username']);  
                echo '注销登录成功！点击此处 <a href="login.php">登录</a>';  
                exit;  
            }  
            
        ?> 
    </div> 
</div>
<center>
    <div class="erweima">
        <span>联系我们</span>
        <img src="../img/erweima.png">
    </div>
</center>
 
<div class="bottom_main">
    <span>All Rights Reserved © 2018    GXULOVE.COM.,Ltd</span><br /><br/>
    <span>我们的电邮：jydf200910@163.com</span>
</div>
</body>
</html>
