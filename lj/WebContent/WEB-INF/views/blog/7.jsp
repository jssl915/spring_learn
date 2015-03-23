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
			<p> 男人都好色，这一点你要知道。他们都是吃着锅里的还要占着碗里的，这一点你也要知道。他们吃锅里的时候是真心吃，吃碗里的时候也同样有滋有味，所以你不要相信他们说得“更爱你”或者“只爱你”之类的话。</p>

		　　<p>男人基本上会认为一夫一妻是违背人性的。他们没有几个人不想成为韦小宝，如果要他们放弃现代社会的种种方便而回归古代，妻妾成群是他们认为最理想的家庭组合方式。公开场合，哪怕他们嘴上说着“麻烦”，在暗地的行为里他们也依然乐此不疲。他们都是谗嘴的孩子，即便长了龉齿还要继续吃糖。吃糖会长蛀牙这个道理他是知道的，但他必须吃，你不让他吃，他就偷着吃，他越是偷着吃，越能感觉到糖的甜。</p>
		
		　　<p>如果这颗糖会突然表示出“执子之手，与子偕老”的意思，要他永远只吃自己这一颗糖，男人就会被吓到。他会募然明白，好象突然意识到自己已经是有女友或老婆的人了。而且这女友或老婆其实各方面的条件还是很拿得出来的，而且她没有什么大过失啊，和她即便没有了爱情也还有亲情的啊——这时候男人的道德感就会回归，而男人道德感的回归会使得那些不能走到阳光下的爱情依然还要躲在角落里，你嫌暗淡，非要照到光，那你就离灰飞烟灭不远了。即便你有杀伐决断之术，奋斗到顶替了他女友或老婆的位置，为他洗衣做饭生孩子，要不了几年，你也就由糖而变为鸡肋（所谓的食之无味，弃之可惜）了。</p>
		
		　　<p>聪明的女人在男人拔牙的时候最好陪伴在侧，即便你明明知道他的牙不是吃你这颗糖吃坏的。在这样的时候你要尽量给他安慰，告诉他趁着牙没掉光可以继续吃糖——否则等牙掉光了就只有喝冰红茶了。甚至主动给他糖吃，并备些甲硝唑之类以消炎用。让他自己体会糖果可以解谗却是不可以用来充饥的，他吃多了甚至会自己戒掉——你看现在有钱人家的孩子有几个是拼命喜欢吃糖果的，倒是那些坐在垃圾车上的孩子，嘴里含着一颗，小脏手里还紧紧攥着一颗，他的理想简单而直接，盼着妈妈明天仍有垃圾卖，那么明天他就仍有糖果吃，哪怕仅仅一两颗。</p>
		
		　　<p>千万别做唠里唠叨的怨妇——整天念叨自己的付出，抱怨命运的不济，最后弄得连同事都会烦你。千万别做妒妇——神经质地查男友或老公的手机，像个特务似跟踪追查，长此以往，人民群众都不站在你一边！男人对自己的好色就像律师对罪犯——明知有罪也会辩护。如果你常常逼着他辩护，他就会越来越怵你甚至恨你！他会觉得你的盘问让他没有了尊严——尊严对男人是很重要的，哪怕仅仅为了尊严，为了“堂堂正正”他也会躲开你。你要学会咬紧牙关不问他，不给他说谎的机会。你在心里默颂如下两句话：1．他是世界上最好的男人吗？当然不是！2．没有男人你会死吗？当然不会！</p>
		　　<p>赵丽华在这里语重心长地告诉你，其实男人仅仅是一件床上用品而已。如果你感觉SPRIT床罩不够舒适，那么你换一款LUOLAI也无妨啊！</p>
		 
		<p>后记：</p>
		　　<p>赵丽华最近因为穿用太奢侈，而且其老公胡乱征地，开始引起人们的注意。于是，恰好看到她的一篇文章，转而记之，以作消遣。希望那些公务员的老婆、女儿、干女儿、情人等，别太暴露，露富不是好事，它会断了你们老公或者老爸或者干爸爸或者情人的财路。</p>
		　<p>　国考快要开始了，大家好好准备啊，为了将来的财路，拼啦！2011年10月15号网上报名！</p>
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