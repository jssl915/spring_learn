<%@ page contentType="textml;charset=UTF-8" language="java"%>
<%@ include file="taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="textml; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="login.css">
<style>
a{text-decoration:none;}
.clearB{clear:both;}
body{font-family:"Comic Sans MS",cursive;}
#CSS3_box{width:550px;height:450px;margin:50px auto;position:relative;}
#CSS3_box ul{padding-left:20px;}
#CSS3_box li{float:left;width:100px;height:30px;line-height:30px;background-color:#0CF;-moz-transform:rotate(-45deg);-webkit-transform:rotate(-45deg);text-align:right;padding-right:5px;}
#CSS3_box li.list02{background-color:#0CC;}
#CSS3_box li.list03{background-color:#F66;}
#CSS3_box li a{color:white;}
.mainBox{width:480px;height:380px;border-radius:6px;border:1px solid #666;margin-top:10px;background-color:white;position:relative;z-index:20;box-shadow:5px 5px #999;}
.mainBox h1{width:520px;height:50px;background-color:#06C;color:white;margin-left:-20px;margin-top:60px;text-align:center;}
.mainBox h1::before{content:"";width:0;height:0;border-width:10px;border-style:solid;border-color:#03C #03C transparent transparent;position:absolute;top:110px;left:-20px;}
.mainBox h1::after{content:"";width:0;height:0;border-width:10px;border-style:solid;border-color:#03C transparent transparent #03C;position:absolute;top:110px;left:480px;}
.t_login{color:#666;text-align:center;font-size:20px;font-weight:900;width:308px;}
.mainBox h3{padding:10px 35px 10px 80px;color:#666;}
</style>
<title>注册成功！</title>

</head>
<body style="background-color:#6F605A">
<div id="CSS3_box">
   <br class="clearB" /> 
   <div class="mainBox">
  		 <h1>注册成功</h1>
   <div style="position:relative;top:10px;left:130px;height:120px">
	<div style="position:absolute;left:0px;top:0px"><img src="${img}/yes.jpg" style="width:100px;height:100px"></div>
    <div style="position:absolute;left:120px;top:30px;font-size:26px;color:green">成功啦!</div>
    
   </div>  
 	<div style="margin:50px 0 0 150px">非常感谢您的注册！<a href="login.jsp">请登录</a><br></div>	
    </div>
 </div>   
</body>
</html>