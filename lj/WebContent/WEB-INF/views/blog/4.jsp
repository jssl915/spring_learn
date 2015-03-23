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
			<p> 中国人喜欢赞美苦难，美化苦难，这种观点把一切需要解决和改良的问题都转化为一个无私奉献的道德自律问题。这是一种毫无血性的评论，它把一个人无法选择的行为、别人的痛苦变成饭后谈论的资本。鲁迅先生曾称这种文化培养出的道德为“瞒和骗”。所以，我们认为这种“苦难美学”不值得追捧。</p>

      <p> 然而，当今社会的许多现象令我们不理解。一个几岁的小女孩因当环卫工人的妈妈生病，只能替母亲清扫大街，结果却被评为“最美的环卫工人”，丝毫没有联系到社会和环保部门的责任；一个乡村女教师三十年如一日，省吃俭用，自费买砖，手提肩背，将一座学校背上了山，结果被媒体高度赞扬，却丝毫没有提到政府和教育部门的责任；感动中国的苗家赤脚医生李春燕为方圆百里的乡亲看病，被高度赞扬，却丁点儿不提乡村医疗问题。我认为这种对待苦难的观点是一种畸形文化的滋生，是逃避现实的一种美化手段，是对苦难的一种扭曲的理解。千年古训已被当今社会浪潮冲刷得变了形状，褪了颜色，而滴在我们身上的血和泪却成了我们美好苦难的牺牲品。我们需要正确地理解苦难、对待苦难。</p>

      <p> 那么，怎样正确对待苦难呢？周国平曾说：“没有浪漫气息的悲剧是我们最本质的悲剧，不具英雄色彩的勇气是我们最真实的勇气。”我认为这是理解苦难与对待苦难最好的诠释。就像那句话说的那样：受苦的人没有悲观的权利，那么观看受苦的人也没有评论的权利。一个人只有真正领略平常苦难的绝望，他才会明白，一切美化苦难的言辞是多么虚伪，一切炫耀苦难的姿态是多么做作。更有甚者，给贫穷大学生捐了几个钱，就要被人在电视机上痛哭流涕感恩戴德，来扬名自己。这种对待苦难的行为是应该被唾弃的。毫不客气地说，这是一种对待受苦人的人格的蹂躏与践踏，正是这种对待苦难的行为造成了更多的苦难。所以说，正确对待苦难是一种美德，也是人性中最本质的要求。</p>

      <p> 正像罗曼·罗兰说的：“只要有一双诚实的眼睛一同为我哭泣，就值得我为生命而受苦。”对待苦难，我们只需要一双诚实的眼睛，一种最基本的美德。然而，为什么这种美德已慢慢地在人群中消隐？</p>
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