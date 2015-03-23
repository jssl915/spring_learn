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
			<li id="search">
				<h2><b>搜索</b></h2>
				<fieldset>
					<input type="text" id="blogTitleName" name="blogTitleName"/>
					<input type="button" id="x" value="搜索"  onclick="searchTitle()" class="search"/>
				</fieldset>
			</li>
			<li>
				<h2><b>最新</b> 文章</h2>
				<ul id=newArticle></ul>
			</li>
			<li>
				<h2><a href="${ctx}/index/recomment"><strong>推荐</strong> 文章</a></h2>
				<ul id="recommentArticle"></ul>
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
var titleNum,blogList,searchTitleName="";
$(function(){
	blogList = ${blogListJson};
	titleNum = blogList.length;
	addHead();
	addContent();
	addSider();
});

function addContent(){
	var blogArray = [];
	for(var i=0;i<titleNum;i++){
			var blogId = blogList[i].blogId;
			var blogTitleName = blogList[i].blogTitleName;
			var blogClassifyName = blogList[i].blogClassifyName;
			var blogSummary = blogList[i].blogSummary;
			var createTime = blogList[i].createTime;
			var blogAuthor = blogList[i].blogAuthor;
		if((searchTitleName=="")||((!(blogTitleName.indexOf(searchTitleName)<0))&&searchTitleName!="")){
			blogArray.push('<div class="post">');
			blogArray.push('<div><h2 class="title"><a href="${ctx}/index/blog?blogId='+blogId+'">'+blogTitleName+'</a></h2></div>');
			blogArray.push('<div class="time_c"><strong>所在类别：</strong>'+blogClassifyName+'&nbsp;&nbsp;'+createTime+'&nbsp;&nbsp;<strong>by</strong>&nbsp;&nbsp;'+blogAuthor +'</div>');
			blogArray.push('<div class="entry"><p>'+blogSummary+'</p></div>');
			blogArray.push('<div class="meta"><p class="links"><a href="${ctx}/index/blog?blogId='+blogList[i].blogId+'" class="more">阅读全文...</a></p>');
			blogArray.push('</div></div>');
		}
	}
	$('#content').html(blogArray.join(''));
}

function addSider(){
	var recommentListJson = ${recommentListJson};
	var recommentNum = recommentListJson.length;
	var recommentArray = [];
	for(var i=0;i<recommentNum&&i<10;i++){
		recommentArray.push('<li><a href="${ctx}/index/blog?blogId='+recommentListJson[i].blogId+'">'+recommentListJson[i].blogTitleName+'</a></li>');
	}
	$('#recommentArticle').html(recommentArray.join(''));
	
	var newArray=[];
	for(var i=0;i<10;i++){
		newArray.push('<li><a href="${ctx}/index/blog?blogId='+blogList[i].blogId+'">'+blogList[i].blogTitleName+'</a></li>');
	}
	$('#newArticle').html(newArray.join(''));
	
	var blogClassifyList = ${blogClassifyListJson};
	var blogClassifyNum = blogClassifyList.length;
	var classifyArray=[];
	for(var i=0;i<blogClassifyNum;i++){
		var blogClassifyId =blogClassifyList[i].blogClassifyId;
		var blogClassifyName =blogClassifyList[i].blogClassifyName;
		classifyArray.push('<li><a href="${ctx}/index/classify?blogClassifyId='+blogClassifyId+'">'+blogClassifyName+'</a></li>');
	}
	$('#classify').html(classifyArray.join(''));
}

function searchTitle(){
	searchTitleName = $('#blogTitleName').val();
	addContent();
}

</script>
</html>