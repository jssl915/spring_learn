<%@ page contentType="textml;charset=UTF-8" language="java"%>
<%@ include file="taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="textml; charset=utf-8" />
<title> 主页</title>
</head>
<body>
<div id="header"></div>

<div id="page">
	<div id="content"></div>
	<div id="sidebar">
		 <ul>
			<li>
				<h2><b>最新</b> 文章</h2>
				<ul id=newArticle></ul>
			</li>
			<li>
				<h2><b>分类</b> 目录</h2>
				<ul id="classify"></ul>
			</li>
		</ul>
	</div>
	<div style="clear: both;">&nbsp;</div>
</div>
</body>

<script type="text/javascript">
$(function(){
	addHead();
	addContent();
	addSider();
});

function addContent(){
	var recommentListJson = ${recommentListJson};
	var recommentNum = recommentListJson.length;
	var recommentArray = [];
	recommentArray.push('<div class="post">');
	recommentArray.push('<div><h2 class="title" style="padding-left:25px;"><b>推荐</b>文章</h2></div>');
	recommentArray.push('<div><ul style="font-size:16px;line-height:30px;">');
	for(var i=0;i<recommentNum&&i<10;i++){
		var blogId = recommentListJson[i].blogId;
		var titleName = recommentListJson[i].blogTitleName;
		var createTime = recommentListJson[i].createTime;
		var readNumber = recommentListJson[i].blogReadNumber;
		var blogAuthor = recommentListJson[i].blogAuthor;
		recommentArray.push('<li><a href="${ctx}/index/blog?blogId='+blogId+'"><span style="padding-right:20px;color:#6D6D6D">'+createTime+'</span>');
		recommentArray.push('<span style="padding-right:20px;color:#2970A6">'+titleName+'</span>');
		recommentArray.push('<span style="padding-right:10px;color:#6D6D6D">('+readNumber+'  次点击)</span>');
		recommentArray.push('<span style="color:#6D6D6D">—&nbsp;'+blogAuthor+'</span></a></li>');
	}
	recommentArray.push('</ul></div>');
	$('#content').html(recommentArray.join(''));
}

function addSider(){
	var blogList = ${blogListJson};
	var titleNum = blogList.length;
	var newArray=[];
	for(var i=0;i<10&&i<titleNum;i++){
		newArray.push('<li><a href="${ctx}/index/blog?blogId='+blogList[i].blogId+'">'+blogList[i].blogTitleName+'</a></li>');
	}
	$('#newArticle').html(newArray.join(''));
	
	
	var blogClassifyList = ${blogClassifyListJson};
	var blogClassifyNum = blogClassifyList.length;
	var classifyArray=[];
	for(var i=0;i<blogClassifyNum;i++){
		var blogClassifyName =blogClassifyList[i].blogClassifyName;
		classifyArray.push('<li><a href="${ctx}/index">'+blogClassifyName+'</a></li>');
	}
	$('#classify').html(classifyArray.join(''));
}
</script>
</html>