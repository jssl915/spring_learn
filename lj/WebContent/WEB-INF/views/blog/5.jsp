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
			 <p>向前看？向钱看？也许很多人认为应该选择“向前看”。</p>

		      <p> 但我却主张：向前方的“钱”看。</p>
		
		      <p> 俗话说：“钱钱钱，命相连”，“一分钱难倒英雄汉”。人只要生存，你说衣食住行哪样可以离开钱？钱这东西，虽不是万能的，但没有钱确实是万万不能的。长期以来，人们嘴巴里鄙视钱，但生活却离不开钱；心里想着钱却又羞于说钱。其实，想钱说钱赚钱有什么不好？就连几千年来被国人奉为“大成至圣先师”的孔老夫子，虽口中极鄙视金钱，但也离不开钱。孔子弟子三千，最得宠的是大商人子贡。如果没有子贡的钱，孔子还能够周游列国去推销他的学说么？</p>
		      <p> 几千年来，金钱在中国一直含冤受辱，什么“钱财如粪土”、“有钱能使鬼推磨”，什么“财迷心窍”、“向钱看齐”，人们将金钱骂得狗血淋头、体无完肤。诚然，为了钱，社会上出现了奸商、市侩和骗子，出现了盗窃、抢劫、贩毒、诈骗、杀人等罪恶，然而这不是钱本身的错误，而是有些人对金钱的贪婪。水能淹死人，但我没见过有人不喝水的。金钱没有直接害人，人却将许多罪恶栽到它头上去，这可能是最古老的强盗逻辑了。</p>
		
		     <p>  钱，“失之则贫弱，得之则富强”。不论你是“喻于义”的君子，还是“喻于利”的小人，不管是“无比优越”的公有制社会，还是“腐朽没落”的资本主义社会，都不能没有钱。国家是否强大，民族是否富有，科技是否尖端，艺术作品是否价值连城，世界上的评判标准千差万别，唯有一个举世公认的品评标准——那就是钱。个人的幸福、企业的发展需要钱：民族的富足、国家的强大需要钱。昔日灰溜溜的战败国——日本、德国，现在为何敢闹着要成为联合国安理会的常任理事国？还不是因为他们有钱！</p>
		
		      <p> 钱不但能使人富裕，使国家强大，还能推动社会的文明、进步和发展。古语云：“富足而知耻辱。”如果一个人穷得衣衫褴褛，连饭都没得吃，你还要求人家一定要去“五讲四美”，要去装绅士扮君子，这现实么？贫穷和野蛮是孪生兄弟，只有富裕才能使社会真正祥和。一些发达国家的社会文明程度比我们要好得多，即是无可否认的事实。</p>
		
		       <p>人没有钱不能生存，但人不是为钱而生存。</p>

      	<p> “君子爱财，取之有道”。钱既然是好东西，为我们带来文明与富强，为何不理直气壮地去想钱、谈钱、看钱、赚钱？只要光明正大，合理合法，就该大胆地说一句：“向前方的‘钱’看！”</p>
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