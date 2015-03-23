<%@ page contentType="textml;charset=UTF-8" language="java"%>
<%@ include file="../taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="textml; charset=utf-8" />
<title>pic</title>
<style type="text/css"> 
*{margin:0;padding:0;}
h1{text-align:center;height:100px;}
body{background-color:RGB(232,231,226);}
.all{margin:0 auto;width:1000px;}
.number{float:left;width:225px;}
.content{margin:5px;background-color:white;}
img{margin:5px;}
.loading{position:absolute;width:100%;height:40px;display:none;text-align:center;background-color:RGB(189,203,207);}
#toTop{position:fixed;_position:fixed;font-size:12px;color:Blue;width:15px;text-align:center;right:300px;bottom:100px;cursor:pointer;background-color:RGB(243,247,251);display:none;}

</style> 
<script type="text/javascript"> 
//数据源 
var imgArray = []; //img数组 也就是数据来源 
var total = 74;

window.onload = function () { 	
	//初始参数 
	var reset = 0; //某些滚动条会触发三次scroll事件 用这个解决 
	var surplusHeight = 800; //差值 
	var imgWidth = "206px"; //img的宽度 
	var imgHeight = 0; //img的高度 
	var textHeight = 0; //文字高度 
	var showTopButtonHeight = 500;//回到顶部按钮的距离 
	var bigDivCount = 4; 
	var div1 = $("one"); 
	var div2 = $("two"); 
	var div3 = $("three"); 
	var div4 = $("four"); 
	var loading = $("loading"); 
	var toTop = $("toTop"); 
	//得到浏览器的名称 
	var browser = getBrowser();	
	for(var i=1;i<total+1;i++){
		imgArray.push('${js}/photowall/images/thumbs/'+i+'.jpg');
	}
	
	//初始化 
	loadImg(); 
	//主会场 
	window.onscroll = fun_scroll; 
	//滚动方法 
	function fun_scroll() { 
		//body的高度 
		var topAll = (browser == "Firefox") ? document.documentElement.scrollHeight : document.body.scrollHeight; 
		//卷上去的高度 
		var top_top = document.body.scrollTop || document.documentElement.scrollTop; 
		//回到顶部按钮操作 
		if (top_top > showTopButtonHeight){
			toTop.style.display = "block"; 
		}else{ 
			toTop.style.display = "none"; 
		}
		//控制滚动条次数以及判断是否到达底部 
		if (reset == 0) { 
			var topAll = (browser == "Firefox") ? document.documentElement.scrollHeight : document.body.scrollHeight; //body的高度 
			var top_top = document.body.scrollTop || document.documentElement.scrollTop; //卷上去的高度 
			var result = topAll - top_top; 		
			if (result < surplusHeight) { 
				setTimeout(loadImg, 1000); 
				reset = 1; 
			} 
		}else{ 
			setTimeout(function () { reset = 0; }, 1000); 
			} 
		} 

//加载图片 
function loadImg() { 
	loading.style.display = "none"; 
	for (var i = 0; i < bigDivCount; i++) { 
		div1.appendChild(addDiv()); 
		div2.appendChild(addDiv()); 
		div3.appendChild(addDiv()); 
		div4.appendChild(addDiv()); 
	} 
	setTimeout(function () { 
		var hh = (browser == "Firefox") ? document.documentElement.scrollHeight : document.body.scrollHeight; 
		loading.style.top = hh + "px"; 
		loading.style.display = "block"; 
	}, 1000); 
} 

//声明一个包含img和title的div 
function addDiv() { 
	//数组下标的随机值 	
	var ran = Math.round(Math.random() * (imgArray.length - 1)); 
	//title层 
	var small_div = document.createElement("div"); 
	//内部img 
	var img = document.createElement("img"); 
	img.alt = ""; 
	img.src = imgArray[ran];
	img.style.width = imgWidth; 
	//包含img的层 
	var div = document.createElement("div"); 
	div.className = "content"; 
	div.appendChild(img); 
	return div; 
} 

//通过id得到对象 
function $(id) { 
	return document.getElementById(id); 
} 

//得到浏览器的名称 
function getBrowser() { 
	var OsObject = ""; 
	if (navigator.userAgent.indexOf("MSIE") > 0) { 
		return "MSIE"; 
	} 
	if (isFirefox = navigator.userAgent.indexOf("Firefox") > 0) { 
		return "Firefox"; 
	} 
	if (isSafari = navigator.userAgent.indexOf("Safari") > 0) { 
		return "Safari"; 
	} 
	if (isCamino = navigator.userAgent.indexOf("Camino") > 0) { 
		return "Camino"; 
	} 
	if (isMozilla = navigator.userAgent.indexOf("Gecko/") > 0) { 
		return "Gecko"; 
	} 
} 

//回到顶部 
toTop.onclick = function () { 
	var count = 500; //每次的距离 
	var speed = 200; //速度 
	var timer = setInterval(function () { 
	var top_top = document.body.scrollTop || document.documentElement.scrollTop; 
	var tt = top_top - count; 
	tt = (tt < 300) ? 0 : tt; 
	if (top_top > 0) 
		window.scrollTo(tt, tt); 
		else 
		clearInterval(timer); 
	}, speed) 
	}; 
} 
</script> 
</head> 
<body> 
<div id="all" class="all"> 
	<div style="margin: 20px auto; width: 200px; font-size: 60px;">瀑布</div>
	<div id="one" class="number"></div> 
	<div id="two" class="number"> </div> 
	<div id="three" class="number"> </div> 
	<div id="four" class="number"></div> 
</div> 
<div id="loading" class="loading"> 
<img src="http://files.jb51.net/file_images/article/201211/200803131036175436.gif" /> 
</div> 
<div id="toTop"><span>△回顶部</span></div> 
</body>
</html>