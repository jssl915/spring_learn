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
			  <p>“陌上花开，可缓缓归矣。” 含义：（夫人），田间阡陌上的花开了，你可以一边赏花，一边慢慢地回来。</p>
			      <p>  吴越王钱镠的原配夫人戴氏王妃，是横溪郎碧村的一个农家姑娘。戴氏是乡里出了名的贤淑之女，嫁给钱镠之后，跟随钱镠南征北战，担惊受怕了半辈子，后来成了一国之母。虽是年纪轻轻就离乡背井的，却还是解不开乡土情节，丢不开父母乡亲，年年春天都要回娘家住上一段时间，看望并侍奉双亲。钱镠也是一个性情中人，最思念这个糟糠结发之妻。戴氏回家住得久了，便要带信给她：或是思念、或是问候，其中也有催促之意。过去临安到郎碧要翻一座岭，一边是陡峭的山峰，一边是湍急的苕溪溪流。钱镠怕戴氏夫人轿舆不安全，行走也不方便，就专门拨出银子，派人前去铺石修路，路旁边还加设栏杆。后来这座山岭就改名为"栏杆岭"了。</p>
			       <p>那一年，戴妃又去了郎碧娘家。钱镠在杭州料理政事，一日走出宫门，却见凤凰山脚，西湖堤岸已是桃红柳绿，万紫千红，想到与戴氏夫人已是多日不见，不免又生出几分思念。回到宫中，便提笔写上一封书信，虽则寥寥数语，但却情真意切，细腻入微，其中有这么一句：</p>
			  <p>      "陌上花开，可缓缓归矣。"</p>
			       <p> 九个字，平实温馨，情愫尤重，让戴妃当即落下两行珠泪。此事传开去，一时成为佳话。清代学者王士祯曾说："‘陌上花开，可缓缓归矣'，二语艳称千古。"后来还被里人编成山歌，就名《陌上花》，在家乡民间广为传唱。</p>
			      <p> 到北宋熙宁年间，苏东坡任杭州通判。英雄相惜，对钱镠敬佩有加，曾书《表忠观记》碑文，高度评价钱镠之功绩。苏公喜欢走动，也常来临安，听到里人之歌后，颇有感触，便写下了三首《陌上花》诗，其引曰："游九仙山，闻里中儿歌《陌上花》。父老云，吴越王妃每岁春必归临安，王以书遗妃曰：‘陌上花开，可缓缓归矣。'吴人用其语为歌，含思宛转，听之凄然，而其词鄙野，为之云。"</p>
			
			<p>三首诗云：</p>
			<p>（一）</p>
			<p>陌上花开蝴蝶飞，江山犹似昔人非。</p>
			<p>遗民几度垂垂老，游女长歌缓缓归。</p>
			<p>（二）</p>
			<p>陌上山花无数开，路人争看翠辇来。</p>
			<p>若为留得堂堂在，且更从教缓缓归。</p>
			<p>（三）</p>
			<p>生前富贵草头露，身后风流陌上花。</p>
			<p>已作迟迟君去鲁，犹教缓缓妾还家。</p>
			<p>苏东坡在诗里表达了对吴越兴亡的凭吊，后来，苏东坡的学生晁补之又和了三陌上花：</p>
			<p>其一</p>
			<p>荆王梦罢已春归，陌上花随暮雨飞。</p>
			<p>却唤江船人不识，杜秋红泪满罗衣。</p>
			<p>其二</p>
			<p>归安城廓半楼台，曾是香尘扑面来。</p>
			<p>不见当时翠辇女，今朝陌上又花开。</p>
			<p>其三</p>
			<p>云母蛮笺作信来，佳人陌上看花回。</p>
			<p>妾行不似东风急，为报花须缓缓开。</p>
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