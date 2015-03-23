<%@ page contentType="textml;charset=UTF-8" language="java"%>
<%@ include file="taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>index</title>
<script src="${img}/index/Scripts/AC_ActiveX.js" type="text/javascript"></script>
<script src="${img}/index/Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<style>
body{background:url('${img}/index/r6c.jpg')}
#bgimg{margin:20px auto 0 auto;background-image:url('${img}/index/bg.jpg');position:relative}
#line{width:35px;height:500px;left:40px;background-color:#666666;position:absolute; filter:alpha(opacity:60);opacity:0.6;}
.zi1{background-image:url('${img}/index/1_1.png');width:57px;height:85px;position:absolute;left:55px;top:10px;filter:alpha(opacity:70);opacity:0.7;}
.zi1:hover{background-image:url('${img}/index/1_2.png');width:57px;height:85px;position:absolute;left:55px;top:10px;filter:alpha(opacity:70);opacity:0.7;}
.zi2{background-image:url('${img}/index/2_1.png');width:57px;height:85px;position:absolute;left:55px;top:100px;filter:alpha(opacity:70);opacity:0.7;}
.zi2:hover{background-image:url('${img}/index/2_2.png');width:57px;height:85px;position:absolute;left:55px;top:100px;filter:alpha(opacity:70);opacity:0.7;}
.zi3{background-image:url('${img}/index/3_1.png');width:57px;height:85px;position:absolute;left:55px;top:250px;filter:alpha(opacity:70);opacity:0.7;}
.zi3:hover{background-image:url('${img}/index/3_2.png');width:57px;height:85px;position:absolute;left:55px;top:250px;filter:alpha(opacity:70);opacity:0.7;}
.zi4{background-image:url('${img}/index/4_1.png');width:57px;height:85px;position:absolute;left:55px;top:350px;filter:alpha(opacity:70);opacity:0.7;}
.zi4:hover{background-image:url('${img}/index/4_2.png');width:57px;height:85px;position:absolute;left:55px;top:350px;filter:alpha(opacity:70);opacity:0.7;}
.zi5{background-image:url('${img}/index/5_1.png');width:57px;height:85px;position:absolute;left:5px;top:420px;}
.zi5:hover{background-image:url('${img}/index/5_2.png');width:57px;height:85px;position:absolute;left:5px;top:420px;}
.zi6{background-image:url('${img}/index/6_1.png');width:57px;height:85px;position:absolute;left:5px;top:180px;}
.zi6:hover{background-image:url('${img}/index/6_2.png');width:57px;height:85px;position:absolute;left:5px;top:180px;}
.zi7{background-image:url('${img}/index/7_1.png');width:57px;height:85px;position:absolute;left:5px;top:300px;}
.zi7:hover{background-image:url('${img}/index/7_2.png');width:57px;height:85px;position:absolute;left:5px;top:300px;}
.zi8{background-image:url('${img}/index/8_1.png');width:57px;height:85px;position:absolute;left:5px;top:60px;}
.zi8:hover{background-image:url('${img}/index/8_2.png');width:57px;height:85px;position:absolute;left:5px;top:60px;}
</style>
<script>
$(function(){
	var width_screen = window.innerWidth;
	var bgwidth = width_screen*0.7;
	var bgheight = bgwidth*0.625;
	$('#bgimg').css("background-size",bgwidth+'px '+bgheight+'px');
	$('#bgimg').css("width",bgwidth);
	$('#bgimg').css("height",bgheight);
	$('#line').css("height",bgheight);
	$('#flash').css("width",bgwidth);
	$('#flash').css("height",bgheight);
});

function goToHtml(i){
	if(i==5){
		window.open("${ctx}/index/photowall");
	}else if(i==6){
		window.location.href="${ctx}/work/waterfall";
	}else if(i==8){
		window.location.href="${ctx}/index/main";
	}else{
		window.location.href="${ctx}/index/main";
	}
}
</script>
</head>
<body>
<div id="bgimg">
 	<div id="line"></div>
    <div id="zi1" class="zi1" onclick="goToHtml(1);"></div>
	<div id="zi2" class="zi2" onclick="goToHtml(2);"></div>
	<div id="zi3" class="zi3" onclick="goToHtml(3);"></div>
	<div id="zi4" class="zi4" onclick="goToHtml(4);"></div>
	<div id="zi5" class="zi5" onclick="goToHtml(5);"></div>
	<div id="zi6" class="zi6" onclick="goToHtml(6);"></div>
	<div id="zi7" class="zi7" onclick="goToHtml(7);"></div>
    <div id="zi8" class="zi8" onclick="goToHtml(8);"></div>
	
    <div id="Layer1">
      <script type="text/javascript">
		AC_AX_RunContent( 'width','800','height','500','src','${img}/index/pu.swf','quality','high','type','application/x-shockwave-flash','wmode','transparent','movie','${img}/index/pu.swf' ); //end AC code
	</script>
	<noscript>
	 <object id="flash" width="800" height="500">
        <param name="movie" value="${img}/index/pu.swf">
        <param name="quality" value="high">
        <param name="wmode" value="transparent">
        <embed src="${img}/index/pu.swf" width="800" height="500" quality="high" type="application/x-shockwave-flash" wmode="transparent"></embed>
      </object>
      </noscript>
    </div>
</div>
</body>
</html>
