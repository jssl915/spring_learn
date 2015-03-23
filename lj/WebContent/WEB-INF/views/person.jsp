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
	<div id="content">
		<div class="post">
			<div><h2 class="title" style="padding-left:25px;"><b>关于</b>嘟嘟</h2></div>
			<div style="font-size:16px;padding-left:25px;">
				<p>你的姓名：嘟嘟（老妈给偶起的小名）</p>
				<p>现在所在的城市：武汉</p>
				<p>现在的联系方式:1500711****</p>
				<p>星座：摩羯座</p>
				<p>喜欢目前的生活吗：喜欢，工作是自己想要的，感觉很好</p>
				<p>喜欢喝什么：白开水</p>
				<p>最喜欢的电影：云水谣</p>
				<p>最喜欢的季节：秋天</p>
			</div>
		</div>
	</div>
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
	addSider();
});

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