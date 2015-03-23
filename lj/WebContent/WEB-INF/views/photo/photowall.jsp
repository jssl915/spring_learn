<%@ page contentType="textml;charset=UTF-8" language="java"%>
<%@ include file="../taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="textml; charset=utf-8" />
<title>photowall</title>
<style>
body{background:#f7f7f7 url(${js}/photowall/images/pinstripe.gif) repeat top left;}
#picfull{display:none;position:absolute;height:100%;width:100%;right:0;top:0;}
.iw_wrapper{width:90%;margin:0 auto;position:relative;}
ul{list-style-type:none}
ul.iw_thumbs li{float:left;}
ul.iw_thumbs li:nth-child(even){margin:20px;}
ul.iw_thumbs li:nth-child(1n){margin:20px;} 
ul.iw_thumbs li img{border:7px solid #fff;cursor:pointer;position:relative;-moz-box-shadow:1px 1px 1px #aaa;-webkit-box-shadow:1px 1px 1px #aaa;box-shadow:1px 1px 1px #aaa;}
ul.iw_thumbs li img:hover{-moz-box-shadow:1px 1px 7px #777;-webkit-box-shadow:1px 1px 7px #777;box-shadow:1px 1px 7px #777;}
ul.iw_thumbs li:nth-child(even) img{height:80px;}
ul.iw_thumbs li:nth-child(odd) img{height:80px;}
.iw_close{position:absolute;top:10px;right:10px;background:#f0f0f0 url(${js}/photowall/images/close.gif) no-repeat center center;width:18px;height:18px;cursor:pointer;}

.scale_panel{font-size:12px;color:#999;width:900px;position:absolute;line-height:18px;left:80px;top:-0px;}
.scale_panel .r{float:right;}
.scale span{background:url(${js}/photowall/images/scroll.gif) no-repeat;width:8px;height:16px;position:absolute;left:-2px;top:-1px;cursor:pointer;}
.scale{background:url(${js}/photowall/images/red.gif) repeat-x 0 100%;border-left:1px #83BBD9 solid;border-right:1px red solid;width:900px;height:10px;position:relative;font-size:0px;}
.scale div{background:url(${js}/photowall/images/blue.gif) repeat-x;width:0px;position:absolute;width:0;left:0;height:5px;bottom:0;}
li{font-size:16px;line-height:50px;position:relative;height:50px;list-style:none;color:red}

.arrow_left{background-image:url(${js}/photowall/images/img_preview_ic.gif);background-position:0 0;width:30px;height:35px;cursor:pointer;}
.arrow_left:hover{background-image:url(${js}/photowall/images/img_preview_ic.gif);background-position:71px 0;width:30px;height:35px;cursor:pointer;}
.arrow_right{background-image:url(${js}/photowall/images/img_preview_ic.gif);background-position:0 -40px;width:30px;height:35px;cursor:pointer;}
.arrow_right:hover{background-image:url(${js}/photowall/images/img_preview_ic.gif);background-position:72px -40px;width:30px;height:35px;cursor:pointer;}

</style>
</head>
<body> 		
  <div id="picfull"></div>
     <div  id="wall_content" class="content" style="position:relative;">	
      <div style="margin: 20px auto; width:200px; font-size: 60px;">照片墙</div> 
      <div style="margin: 20px auto; width:1100px;">
	       <ul>
			 <li id="scalePanel">密度：<span id="title">20</span>
				<div class="scale_panel">
					<span class="r">100</span>0
					<div class="scale" id="bar">
						<div style="width:20%"></div>
						<span id="btn" style="left:20%;"></span>
					</div> 
				</div> 
			 </li>
		 </ul>
      </div>
      <div class="iw_wrapper"><ul class="iw_thumbs" id="iw_thumbs"></ul></div>	 
  </div>	
</body>
<script type="text/javascript">
	$(document).ready(function(){ 
		var picNumber=74;
		new loadImgs(picNumber);
		new scale('btn','bar','title'); 
	});
	loadImgs=function(picNumber){
		this.angleArray = new Array();
		this.picNumber = picNumber+1;
		this.load();
	}
	loadImgs.prototype={
		load:function(){
			var imgsArray=[];
			for (var i=1;i<this.picNumber;i++){			
				var angle = Math.floor(Math.random()*30+1)
				if(i%2==0){
				imgsArray.push('<li><img  id="img'+i+'" src="${js}/photowall/images/thumbs/'+i+'.jpg" style="-moz-transform:rotate(-'+angle+'deg); -webkit-transform:rotate(-'+angle+'deg);"/></li>');
				}else{
				imgsArray.push('<li><img id="img'+i+'" src="${js}/photowall/images/thumbs/'+i+'.jpg" style="-moz-transform:rotate('+angle+'deg); -webkit-transform:rotate('+angle+'deg);"/></li>');
				}	
				this.angleArray.push(angle);
			}
			$('#iw_thumbs').html(imgsArray.join(''));
			for (var i=1;i<this.picNumber;i++){
				this.enter(i);
			}
		},
		enter:function(i){
			var en =this;
			var angle = this.angleArray[i-1];
			var $img = $("#img"+i);
			$img.hover(
				  function () {$img.css({"-moz-transform":"rotate(0deg)"},{"-webkit-transform":"rotate(0deg)"});},
				  function () {
					if(i%2==0){
						$img.css({"-moz-transform":"rotate(-"+angle+"deg)"},{"-webkit-transform":"rotate(-"+angle+"deg)"});
					}else{
						$img.css({"-moz-transform":"rotate("+angle+"deg)"},{"-webkit-transform":"rotate("+angle+"deg)"});
					}
				  }
			);
			$("#img"+i).click (function(){en.showPic(i);en.showMsg()});
		},
		showMsg:function(){$('#picfull').fadeIn(1000);$('#wall_content').hide()},
		hideMsg:function(){	$('#picfull').hide();$('#wall_content').fadeIn(500)},
		toLeftImg:function(i){if(i>1){i=i-1;this.showPic(i);}},
		toRightImg:function(i){if(i<this.picNumber){i=i+1;this.showPic(i)}},
		showPic:function(i){
			var en =this;
			var picfullArray=[];
			picfullArray.push('<div style="background: none repeat scroll 0 0 #000000;"><div>');
			picfullArray.push('<table style="width:100%;margin:0 auto;"><tr><td width="5%" align="right"><div id="arrowLeft" class="arrow_left"></div></td>');
			picfullArray.push('<td width="80%"><img id="bigImg" src="${js}/photowall/images/full/'+i+'.jpg" style="display:block; height:'+window.innerHeight+'px;margin:0 auto;"></td>');
			picfullArray.push('<td width="5%" align="left"><div id="arrow_right" class="arrow_right"></div></td></tr></table>');
			picfullArray.push('</div><div id="iw_ribbon" class="iw_ribbon"><span class="iw_close"></span></div></div>');		
			$("#picfull").html(picfullArray.join(''));	
			$('#arrowLeft').click(function (){en.toLeftImg(i);});
			$('#arrow_right').click(function (){en.toRightImg(i);});
			$('#iw_ribbon').click(function (){en.hideMsg();});
		}
	}
	
 	scale=function (btn,bar,title){
		this.btn=document.getElementById(btn);
		this.bar=document.getElementById(bar);
		this.title=document.getElementById(title);
		this.step=this.bar.getElementsByTagName("DIV")[0];
		this.init();
	};
	
	scale.prototype={
		init:function (){
			var f=this,g=document,b=window,m=Math;
			var btn_left = f.btn.getBoundingClientRect().left-f.btn.offsetLeft+2;
			
			f.btn.onmousedown=function (e){
				var x=(e||b.event).clientX;
				var l=this.offsetLeft;
				var max=f.bar.offsetWidth-this.offsetWidth;
				g.onmousemove=function (e){
					var thisX=(e||b.event).clientX;
					var to=m.min(max,m.max(-2,l+(thisX-x)));
					f.btn.style.left=to+'px';
					f.ondrag(m.round(m.max(0,to/max)*100),to);
					b.getSelection ? b.getSelection().removeAllRanges() : g.selection.empty();
				};
				g.onmouseup=new Function('this.onmousemove=null');
			};
			
			f.bar.onmousedown=function (e){
				var max=f.bar.offsetWidth-f.btn.offsetWidth;
				var thisX=(e||b.event).clientX;
				var to=m.min(max,m.max(-2,(thisX-btn_left)));
				f.btn.style.left=to+'px';
				f.ondrag(m.round(m.max(0,to/max)*100),to);
			}
		},
		ondrag:function (pos,x){
			this.step.style.width=Math.max(0,x)+'px';
			this.title.innerHTML=pos;
			$('ul.iw_thumbs li:nth-child(even)').css("margin",pos+"px");
			$('ul.iw_thumbs li:nth-child(1n)').css("margin",pos+"px");
			$('ul.iw_thumbs li:nth-child(even) img').css("height",(parseFloat(pos)*0.3+80)+"px");
			$('ul.iw_thumbs li:nth-child(odd) img').css("height",(parseFloat(pos)*0.3+80)+"px");
		}
	}
	
</script>
</html>
