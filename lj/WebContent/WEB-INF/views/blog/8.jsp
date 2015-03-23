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
			<p> 一棵树和一只鸟儿是好朋友。鸟儿站在树枝上，天天给树唱歌。树呢，天天听着鸟儿唱。</p>

		　　<p>日子一天天过去，寒冷的冬天就要来到了。鸟儿必须离开树，飞到很远很远的地方去。</p>
		
		　　<p>树对鸟儿说：“再见了，小鸟！明年春天请你回来，还唱歌给我听。”</p>
		
		　　<p>鸟儿说：“好的，我明年春天一定回来，给你唱歌。请等着我吧！”鸟儿说完，就向南方飞去了。</p>
		
		　<p>　春天又来了。原野上、森林里的雪都融化了。鸟儿又回到这里，找她的好朋友树来了。</p>
		
		　　<p>可是，树不见了，只剩下树根留在那里。</p>
		
		　<p>　“立在这儿的那棵树，到什么地方去了呀？”鸟儿问树根。</p>
		
		　　<p>树根回答：“伐木人用斧子把他砍倒，拉到山谷里去了。”</p>
		
		　　<p>鸟儿向山谷里飞去。</p>
		
		　　<p>山谷里有个很大的工厂，锯木头的声音，“沙——沙——”地响着。鸟儿落在工厂的大门上。她问大门：“门先生，我的好朋友树在哪儿，您知道吗？”</p>
		
		　　<p>大门回答说：“树么，在厂子里给切成细条条儿，做成火柴，运到那边的村子里卖掉了。”</p>
		
		　　<p>鸟儿向村子飞去。</p>
		
		　　<p>在一盏煤油灯旁，坐着个小女孩。鸟儿问女孩：“小姑娘，请告诉我，你知道火柴在那儿吗？”</p>
		
		　　<p>小女孩儿回答说：“火柴已经用光了。可是，火柴点燃的火，还在这盏灯里亮着。”</p>
		
		　　<p>鸟儿睁大眼睛，盯着灯火看了一会儿。</p>
		
		　　<p>接着，她就唱起去年唱过的歌儿给灯火听。</p>
		
		　　<p>唱完了歌，鸟儿又对着灯火看了一会儿，就飞走了。</p>
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