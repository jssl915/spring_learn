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
			<p>六岁的时候，我曾经急着要当一个拳击家。因为没有训练用的沙袋，我就拿自己的小熊练拳。我把它放到沙发上，摆好，以便打起来顺手些。</p>
			     <p>  小熊坐在我的面前，一身巧克力色。两只眼睛一大一小：小的——黄色，玻璃做的；大的白色——是用一个纽扣做的。小熊用它那不一样大的眼睛十分快活地瞧着我，两手朝上举着，似乎在开玩笑，说它不等我打就投降了……</p>
			    <p>   我瞧了它一会儿，突然想起好久好久以前我跟它形影不离的情景来了。那时我走到哪里都拉着它。吃饭时让它坐在旁边，用羹匙喂它；当我把什么东西抹到它嘴上时，它那张小脸儿就十分逗人，简直像活了似的。睡觉时我也让它躺在旁边，对着它硬邦邦的小耳朵，悄声地给它讲故事。那时候，我爱它，一心一意地爱它，为了它，把命献出来我都舍得。可它，我往日最要好的朋友，童年的真正朋友，这会儿却坐在沙发上。它坐在那里，一大一小的眼睛对我笑着，而我却想拿它练拳……</p>
			  <p>     “你怎么啦？”妈妈问道，“出了什么事？”</p>
			      <p> 我也不知道自己怎么啦。我转过脸去，沉默了好长时间，为的是不让妈妈从声音猜出我的心事来。我仰起头，想把眼泪憋回去。后来，稍微克制住了自己的感情以后，我说：</p>
			   <p>    “没什么，妈妈。我不过是改变了主意，不过是我永远也不再当拳击家了。”</p>
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