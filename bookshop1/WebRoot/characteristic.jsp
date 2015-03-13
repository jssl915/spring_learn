<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="textml; charset=utf-8" />
<title>专业书籍页面</title>
<style>
body{background-color:#6F605A;font-family:Arial,Helvetica,sans-serif;padding:0;font-size:14px;margin:0px auto auto auto;color:#000000;}
a{ text-decoration:none;color:black}
a:hover{color:red}
.clear{clear:both;}
p{padding:5px 0 5px 0;margin:0px;text-align:justify;line-height:19px;}
p.details{padding:5px 15px 5px 15px;font-size:14px;}
p.details_cart{clear:both;padding:25px 30px 5px 0px;font-size:11px;font-style:italic;}
p.more_details{padding:25px 20px 0px 20px;font-size:11px;}
#wrap{width:900px;height:auto;margin:auto;background-color:#FFFFFF;}
.header{width:900px;height:181px;background:url(${img}/header.jpg) no-repeat center;}
.logo{padding:50px 0 0 130px;}
/*-----------------------------menu-------------------*/
#menu{width:628px;height:30px;padding:55px 0 0 10px;}
#menu ul{display:block;list-style:none;padding:9px 0 0 10px;margin:0px;}
#menu ul li{display:inline;padding:0px;margin:0px;height:20px;}
#menu ul li a{height:27px;display:block;padding:0px 10px 0 10px;margin:0 4px 0 4px;_margin:0 2px 0 2px;float:left;text-decoration:none;text-align:center;color:#fff;font-size:13px;line-height:25px;}
#menu ul li.selected a{height:27px;display:block;padding:0px 10px 0 10px;margin:0 5px 0 5px;float:left;text-decoration:none;text-align:center;color:#f7a849;font-size:13px;line-height:25px;}
#menu ul li a:hover{color:#f7a849;}
/*----------------crumb_nav------------------*/
.crumb_nav{padding:5px 0 10px 0px;}
.crumb_nav a{color:#990000;}
span.red{color:#990000;}
.price{font-size:14px;padding:0 0 0 15px;margin:2px 0 5px 0;}
span.colors{padding:2px 2px 0 2px;}
/*------------------------------------center content--------------------*/
.center_content{width:900px;padding:0px 0 0 0;background:url(${img}/center_bg.gif) repeat-y center;}
.left_content{padding:20px 0 0 20px;}
.right_content{width:370px;float:left;padding:20px 0 20px 20px;}
.title{color:#734633;padding:0px;float:left;font-size:19px;margin:10px 0 10px 0;}
span.title_icon{float:left;padding:0 5px 0 0;}
.prod_title{color:#f8981d;padding:5px 0 0 15px;font-size:18px;}
a.more{font-style:italic;color:#f8981d;float:right;text-decoration:none;font-size:11px;padding:0px 15px 0 0;}
.about{width:337px;clear:both;background:url(${img}/border.gif) no-repeat bottom center;padding:0 0 35px 0;}
img.right{float:right;padding:0 0 0 10px;}
.right_box{width:170px;float:left;padding:10px 0 0 0;}
/*--------feat_prod_box-----------*/
.feat_prod_box{padding:10px 0 10px 10px;margin:0 20px 20px 0;border-bottom:1px #b2b2b2 dashed;clear:both;}
.feat_prod_box_details{padding:10px 0 10px 0;margin:0 20px 10px 0;clear:both;}
.prod_img{float:left;padding:0 5px 0 0;text-align:center;}
.prod_det_box{width:295px;float:left;padding:0 0 0 25px;position:relative;}
.box_top{width:295px;height:9px;background:url(${img}/box_top.gif) no-repeat center bottom;}
.box_center{width:700px;height:auto;background:url(${img}/box_center.gif) repeat-y center;}
.box_bottom{width:295px;height:9px;background:url(${img}/box_bottom.gif) no-repeat center top;}
.new_prod_box{float:left;text-align:center;padding:10px;}
.new_prod_box a{padding:5px 0 5px 0;color:#b5b5b6;text-decoration:none;display:block;}
.new_prod_bg{width:132px;height:119px;text-align:center;background:url(${img}/new_prod_box.gif) no-repeat center;position:relative;}
.new_icon{position:absolute;top:0px;right:0px;z-index:200;}
.special_icon{position:absolute;top:0px;_top:6px;right:2px;z-index:250;}
img.thumb{padding:10px 0 0 0;}
.new_products{clear:both;padding:0px;}
ul.list{clear:both;padding:10px 0 0 20px;margin:0px;}
ul.list li{list-style:none;padding:2px 0 2px 0;}
ul.list li a{list-style:none;text-decoration:none;color:#000000;background:url(${img}/left_menu_bullet.gif) no-repeat left;padding:0 0 0 17px;}
ul.list li a:hover{text-decoration:underline;}
/* demo */
div.demolayout{width:460px;margin:0 0 20px 0;}
ul.demolayout{list-style-type:none;float:left;margin:0px;padding:0px;}
ul.demolayout li{margin:0 10px 0 0;float:left;}
.tab{border:1px #DFDFDF solid;padding:0 0 25px 0;}
ul.demolayout a{float:left;display:block;padding:5px 25px;border:1px solid #DFDFDF;border-bottom:0;color:#666;background:#eee;text-decoration:none;font-weight:bold;}
ul.demolayout a:hover{background:#fff;}
ul.demolayout a.active{background:#fff;padding-bottom:5px;cursor:default;color:#795636;}
.tabs-container{clear:left;padding:0px;}
/*-----------------------languages_box---------*/
.languages_box{padding:0 0 5px 0;float:left;}
.languages_box a{padding:0 2px 0 2px;}
.languages_box a.selected{padding:2px 2px 0 2px;border:1px #CCCCCC solid;}
.currency{float:left;padding:0 0 0 20px;}
.currency a{text-decoration:none;color:#333333;padding:3px;border:1px #eeedee solid;}
.currency a.selected{text-decoration:none;color:#fff;padding:3px;border:1px #eeedee solid;background-color:#FF9900;font-weight:bold;}
.currency a:hover{border:1px #990000 solid;}
/*------------------------cart---------------------*/
.cart{width:337px;float:left;height:40px;margin:10px 0 10px 0;background:url(${img}/border.gif) no-repeat bottom center;padding:0 0 30px 0;}
.home_cart_content{float:left;padding:3px;border:1px #eeedee solid;margin:10px 0 0 15px;}
a.view_cart{display:block;float:left;margin:12px 0 0 10px;color:#990000;}
/*---------------contact_form------------------*/
.contact_form{width:355px;float:left;padding:25px;margin:20px 0 0 15px;_margin:20px 0 0 5px;border:1px #DFD1D2 dashed;position:relative;}
.form_row{width:335px;_width:355px;clear:both;padding:10px 0 10px 0;_padding:5px 0 5px 0;color:#a53d17;}
label.contact{width:75px;float:left;font-size:12px;text-align:right;padding:4px 5px 0 0;color:#333333;}
input.contact_input{width:253px;height:18px;background-color:#fff;color:#999999;border:1px #DFDFDF solid;float:left;}
textarea.contact_textarea{width:253px;height:120px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#999999;background-color:#fff;border:1px #DFDFDF solid;float:left;}
input.register{width:71px;height:25px;border:none;cursor:pointer;text-align:center;float:right;color:#FFFFFF;background:url(${img}/register_bt.gif) no-repeat center;}
a.contact{width:53px;height:24px;display:block;float:right;margin:0 0 0 10px;background:url(${img}/contact_bt.gif) no-repeat center;text-decoration:none;text-align:center;line-height:24px;color:#fff;}
a.checkout{width:71px;height:25px;display:block;float:right;margin:10px 30px 0 10px;background:url(${img}/register_bt.gif) no-repeat center;text-decoration:none;text-align:center;line-height:25px;color:#fff;}
a.continue{width:71px;height:25px;display:block;float:left;margin:10px 0 0 0px;background:url(${img}/register_bt.gif) no-repeat center;text-decoration:none;text-align:center;line-height:25px;color:#fff;}
.terms{padding:0 0 0 80px;}
.form_subtitle{position:absolute;top:-11px;left:7px;width:auto;height:20px;background-color:#795636;text-align:center;padding:0 7px 0 7px;color:#FFFFFF;font-size:11px;line-height:20px;}
/*--------------cart_table-------------*/
.cart_table{width:440px;border:1px #CCCCCC solid;text-align:center;}
tr.cart_title{background-color:#DFDFDF;}
td{padding:3px;}
td.cart_total{text-align:right;padding:5px 15px 5px 0;}
img.cart_thumb{border:1px #b2b2b2 solid;padding:2px;}
/*--------------*/
div.pagination{width:420px;padding:5px;margin:5px;text-align:center;float:left;clear:both;font-size:10px;}
div.pagination a{padding:2px 5px 2px 5px;margin-right:2px;border:1px solid #795636;text-decoration:none;color:#795636;}
div.pagination a:hover,div.pagination a:active{border:1px solid #795636;color:#fff;background-color:#795636;}
div.pagination span.current{padding:2px 5px 2px 5px;margin-right:2px;border:1px solid #795636;font-weight:bold;background-color:#795636;color:#FFF;}
div.pagination span.disabled{padding:2px 5px 2px 5px;margin-right:2px;border:1px solid #f3f3f3;color:#ccc;}
/*---------------footer------------------------*/
.footer{height:100px;background:url(${img}/footer_bg.gif) no-repeat bottom;}
.left_footer{float:left;padding:10px 0 0 10px;}
.right_footer{float:right;padding:10px 10px 0 0;}
.footer a{text-decoration:none;padding:0 5px 0 5px;color:#afaeaf;}

</style>
</head>
<body>
<div id="wrap">
   <div class="header">
        <div class="logo"><img src="${img}/logo.gif" alt="" title="" border="0" /></div>            
        <div id="menu">
            <ul>                                                                       
            <li class="selected"><a href="IndexClServlet?flag=1">主页</a></li>
            <li><a href="books.jsp">英文书籍</a></li>
            <li><a href="characteristic.jsp">专业书籍</a></li>
            <li><a href="me.jsp">关于我</a></li>
            <li><a href="message.jsp">留言板</a></li>
            </ul>
            <div style="position:absolute;left:1020px;top:150px;font-size:20px;color:green"><li><a href="login.jsp">切换账号</a></li></div>
        </div>
   </div>    
<div class="center_content">
    <div class="left_content"> 
    <div class="crumb_nav">
            <a href="IndexClServlet?flag=1">Home</a> &gt;&gt; Characteristic Books
            </div>       	
            <div class="title"><span class="title_icon"><img src="${img}/bullet1.gif" alt="" title="" /></span>专业书籍</div>        
	        	<div class="feat_prod_box">            
	            	<div class="prod_img"><a href="#" onclick="bookInfo(${book.bookId})"><img src="${img}/books/gdsx.jpg" alt="" title="" border="0" style="width:128px;height:150px"/></a></div>                
	                <div class="prod_img"><a href="#" onclick="bookInfo(${book.bookId})"><img src="${img}/books/dxwl.jpg" alt="" title="" border="0" style="width:128px;height:150px"/></a></div>
	                <div class="prod_img"><a href="#" onclick="bookInfo(${book.bookId})"><img src="${img}/books/aspnet.jpg" alt="" title="" border="0" style="width:128px;height:150px"/></a></div>
	                <div class="prod_img"><a href="#" onclick="bookInfo(${book.bookId})"><img src="${img}/books/cyy.jpg" alt="" title="" border="0" style="width:128px;height:150px"/></a></div>
	                <div class="prod_img"><a href="#" onclick="bookInfo(${book.bookId})"><img src="${img}/books/jyxjc.jpg" alt="" title="" border="0" style="width:128px;height:150px"/></a></div>
	                <div class="prod_det_box">
	                    <div class="box_center">
	                        <div class="clear"></div>
	                    </div>                    
	                    <div class="box_bottom"></div>
	                </div>    
	           		<div class="clear"></div>
	            </div>	
	    </div>  
	    
	    <div class="left_content">        	
	        	<div class="feat_prod_box">            
	            	<div class="prod_img"><a href="#" onclick="bookInfo(${book.bookId})"><img src="${img}/books/jjdl.jpg" alt="" title="" border="0" style="width:128px;height:150px"/></a></div>                
	                <div class="prod_img"><a href="#" onclick="bookInfo(${book.bookId})"><img src="${img}/books/xlx.jpg" alt="" title="" border="0" style="width:128px;height:150px"/></a></div>
	                <div class="prod_img"><a href="#" onclick="bookInfo(${book.bookId})"><img src="${img}/books/jsp.gif" alt="" title="" border="0" style="width:128px;height:150px"/></a></div>
	                <div class="prod_img"><a href="#" onclick="bookInfo(${book.bookId})"><img src="${img}/books/sjk.jpg" alt="" title="" border="0" style="width:128px;height:150px"/></a></div>
	                <div class="prod_img"><a href="#" onclick="bookInfo(${book.bookId})"><img src="${img}/books/jxxtsj.jpg" alt="" title="" border="0" style="width:128px;height:150px"/></a></div>
	                <div class="prod_det_box">
	                    <div class="box_center">
	                        <div class="clear"></div>
	                    </div>                    
	                    <div class="box_bottom"></div>
	                </div>    
	           		<div class="clear"></div>
	            </div>	
	    </div>   
	    
	    <div class="left_content">        	
	        	<div class="feat_prod_box">            
	            	<div class="prod_img"><a href="#" onclick="bookInfo(${book.bookId})"><img src="${img}/books/gll.jpg" alt="" title="" border="0" style="width:128px;height:150px"/></a></div>                
	                <div class="prod_img"><a href="#" onclick="bookInfo(${book.bookId})"><img src="${img}/books/jxmt.jpg" alt="" title="" border="0" style="width:128px;height:150px"/></a></div>
	                <div class="prod_img"><a href="#" onclick="bookInfo(${book.bookId})"><img src="${img}/books/wjyl.jpg" alt="" title="" border="0" style="width:128px;height:150px"/></a></div>
	                <div class="prod_img"><a href="#" onclick="bookInfo(${book.bookId})"><img src="${img}/books/xxds.jpg" alt="" title="" border="0" style="width:128px;height:150px"/></a></div>
	                <div class="prod_img"><a href="#" onclick="bookInfo(${book.bookId})"><img src="${img}/books/zgjds.jpg" alt="" title="" border="0" style="width:128px;height:150px"/></a></div>
	                <div class="prod_det_box">
	                    <div class="box_center">
	                        <div class="clear"></div>
	                    </div>                    
	                    <div class="box_bottom"></div>
	                </div>    
	           		<div class="clear"></div>
	            </div>	
	    </div>          
   <div class="footer">
    <div class="left_footer"><img src="${img}/footer_logo.gif" alt="" title="" /><br/></div>
    <div class="right_footer">
    <a href="#">home</a>
    <a href="#">about us</a>
    <a href="#">services</a>
    <a href="#">privacy policy</a>
    <a href="#">contact us</a>        
    </div>
   </div>
</div>
</body>
</html>