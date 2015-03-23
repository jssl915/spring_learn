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
			<p>这个世界五彩缤纷，这个红尘浪漫镌永，我将自己置身世外，立于红尘却疏于红尘。孤独地张望，心中是空洞，眼里是迷茫，目无表情地看红尘来去梦一场，没有悲伤也无所谓快乐，只是彻骨的麻木，无法苏醒，也无法温暖，冷冷的心冷冷地感受着这个冷冷的世界。</p>
			<p>　　一直爱做梦，梦里心儿飞，相思长，红尘美，离别苦。只是梦醒后，那镜花水月般的美丽幻影如泡沫般碎于眼前，消失于空气中无迹可寻，而那抹璀璨的光晕却划过心底生生地疼。尘缘如梦，而我却在梦里如痴如醉，流连往返，找不到出口。</p>
			<p>　　有时觉得自己就如刺猬，严严实实地把自己武装，拒绝温暖的靠近也不想改变。可心动的那一刻，忍着撕心裂肺的疼痛拔掉身上所有的刺，即使鲜血淋漓痛不欲生却是骄傲地笑着，终只想留自己红尘中拼却的一醉。</p>
			<p>　　友人总是心疼着我的孤独，就这样心甘情愿将自己画地为牢，任谁也无法走近，甚至连脆弱都不露痕迹，值吗？</p>
			<p>　　见过我的人总不解我为何会如此安分而孤独？不笑不争不喜不闹，固守自己的城池，造一道冰冷的城墙，任任何温暖也无法靠近。</p>
			<p>　　读我文字的人总对我充满着好奇，是什么样的人能让你如此深情而不悔？是什么样的际遇让你有着丁香般的忧郁和才情？又是怎样薄幸的人让你有着此生难解的心结？</p>
			<p>　　而我知道，彩霞满天或是残阳泣血都是我心中忧伤凝固的画面，而我习惯了美美地凝视。当夜色将一切无情地遮掩，而我也不曾忘却那些绚丽的过往。</p>
			<p>　　迎风，风吹起的是长发，缕缕飘飞的却是那丝丝惆怅，跳动的却是那悠悠的思念。</p>
			<p>　　沐雨，雨敲打的是身体，滴滴散落的却是冰凉的心情，淋湿的却是那绵绵的忧伤。</p>
			<p>　　赏花，花芬芳了一季，片片凋零的是那残缺的华美，幽长的却是那夹杂在风中的叹息。</p>
			<p>　　望月，月色洒满大地，淡淡的清辉温暖了夜的薄凉，冰冷的却是那些花前月下的往事。</p>
			<p>　　……</p>
			<p>　　面对这样的女子，说话都要小心翼翼，生怕一不小心就触痛她那敏感的神经，掀起她的过往，闪动她的睫毛，招惹她的眼泪，然后让她更加沉默。</p>
			<p>　　有人说，安静得让人心疼的女子，忍不住想要拥入怀中柔柔地疼。</p>
			　<p>　只是，你能给予的那一份疼爱，能有多长久？</p>
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