<%@ page contentType="textml;charset=UTF-8" language="java"%>
<%@ include file="taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="textml; charset=utf-8" />
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
.mainBox{width:480px;height:430px;border-radius:6px;border:1px solid #666;margin-top:10px;background-color:white;position:relative;z-index:20;box-shadow:5px 5px #999;}
.mainBox h1{width:520px;height:50px;background-color:#06C;color:white;margin-left:-20px;margin-top:60px;text-align:center;}
.mainBox h1::before{content:"";width:0;height:0;border-width:10px;border-style:solid;border-color:#03C #03C transparent transparent;position:absolute;top:110px;left:-20px;}
.mainBox h1::after{content:"";width:0;height:0;border-width:10px;border-style:solid;border-color:#03C transparent transparent #03C;position:absolute;top:110px;left:480px;}
.t_login{color:#666;text-align:center;font-size:20px;font-weight:900;width:308px;}
.mainBox h3{padding:10px 35px 10px 80px;color:#666;}
</style>
<title>注册</title>

<script>

function register(){
	if($('#userName').val()==''){
		$('#errorMessage').show();
		$('#error').text("用户名不能为空!");
		return false;
	}
	if($('#passWord').val()==''){
		$('#errorMessage').show();
		$('#error').text("密码不能为空!");
		return false;
	}
	$('#form1').submit();
}

</script>
</head>
<body style="background-color:#6F605A">
<form id="form1" action="RegisterClServlet" method="post">
<div id="CSS3_box">
   <br class="clearB" /> 
   <div class="mainBox">
   	<h1>注册</h1>
    <div style="margin:50px 0 0 80px">
    <table class="t_login">
      <tr><td align="right" width="80px;height:30px;">用户名：</td><td width="200px"><input type="text" id = "userName" name="userName" style="height:20px;width:200px"></td></tr>
      <tr><td align="right" width="80px;height:30px;">密&nbsp;&nbsp;码：</td><td width="200px"><input type="password" id = "passWord" name="passWord" style="height:20px;width:200px"></td></tr>
      <tr><td align="right" width="100px;height:30px;">电&nbsp;&nbsp;话：</td><td width="200px"><input type="text" id = "userPhone" name="userPhone" style="height:20px;width:200px"></td></tr>
      <tr><td align="right" width="80px;height:30px;">地&nbsp;&nbsp;址：</td><td width="200px"><input type="text" id = "userAddress" name="userAddress" style="height:20px;width:200px"></td></tr>
      <tr id="errorMessage"><td></td><td style="color:red;font-size:14px;" align="left" id="error"></td></tr>
      <tr>
	      <td></td>
	      <td align="left" style="heigth:30px;">
	      <input type="submit" value="注册"  onclick="register();" style="color:#666;width:60px;height:28px">
	      <input type="reset" value="清空" style="color:#666;width:60px;height:28px">
	      <input type="button" value="返回登录" onclick="login();" style="color:#666;width:65px;height:28px">
	      </td>
      </tr>
  	</table>
    </div>
    <h3>欢迎注册!</h3>      
   </div>  
</div>
</form>
</body>
<script type="text/javascript">
 	function login(){
 		location.href='login.jsp';
 	}
 </script>
</html>