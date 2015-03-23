<%@ page contentType="textml;charset=UTF-8" language="java"%>
<%@ include file="../taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="textml; charset=utf-8" />
<title> 主页</title>
</head>
<body>
<div id="header"></div>

<!-- start page -->
<div id="page">
	<div id="content" style="width:900px;">
		<div class="post">
			<div>
			<h2 class="title" style="text-align:center">
				${blog.blogTitleName}
			</h2>
			</div>
			<div class="time_c"><strong>所在类别：</strong>${blog.blogClassifyName}&nbsp;&nbsp;${blog.createTime}&nbsp;&nbsp;<strong>by</strong>&nbsp;&nbsp;${blog.blogAuthor}</div>
	
			<div class="entry">
			<p> 一天，弟弟在郊游时脚被尖利的石头割破，到医院包扎后，几个同学送他回家。在家附近的巷口，弟弟碰见了爸爸。于是他一边跷起扎了绷带的脚给爸爸看，一边哭丧着脸诉苦，满以为会收获一点同情与怜爱，不料爸爸并没有安慰他，只是简单交代几句，便自己走了。</p>

      <p> 弟弟很伤心，很委屈，也很生气。他觉得爸爸“一点也不关心” 他。在他大发牢骚时，有个同学笑着劝道：“别生气，大部分老爹都这样，其实他很爱你，只是不善于表达罢了。不信你看，等会儿你爸爸走到前面拐弯的地方，他一定会回头看你。”</p>
 
    <p>   弟弟半信半疑，其他同学也很感兴趣。于是他们不约而同停了脚步，站在那注视着爸爸远去的背影。</p>

       <p>爸爸依然笃定地一步一步向前走去，好像没有什么东西会让他回头……可是当他走到拐弯处，就在他侧身拐弯的刹那，好像不经意似的悄悄回过头来，很快地瞟了弟弟他们一眼，然后才消失在拐弯后面。</p>

       <p>虽然这一切都只发生在一瞬间，但却打动了在场的所有人，弟弟的眼睛里还闪着泪花。当弟弟把这件事告诉我时，我有一种想哭的感觉。很久以来我都在寻找一个能代表父爱的动作，现在终于找到了，那就是－－拐弯处的回头。
			</p>
			</div>
		</div>
	</div>
	<div style="clear: both;">&nbsp;</div>
	<div id="blog_comment"></div>
</div>
</body>

<script type="text/javascript">
$(function(){
	addHead();
	addBlogComment(${blogCommentList},${blog.blogId});
});

</script>
</html>