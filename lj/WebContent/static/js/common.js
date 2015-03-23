
//加载页面头部
function addHead(){
	var headHtmlArray=[];
	headHtmlArray.push('<div id="logo"><h1><a href="#" onclick="goHtml(2);">矫情嘟嘟很矫情<sup></sup></a></h1></div>');
	headHtmlArray.push('<div id="menu"><ul>');
	headHtmlArray.push('<li class="active"><a href="#" onclick="goHtml(1);">首页</a></li>');
	headHtmlArray.push('<li><a href="#" onclick="goHtml(2);">博客</a></li>');
	headHtmlArray.push('<li><a href="#" onclick="goHtml(3);">摄影</a></li>');
	headHtmlArray.push('<li><a href="#" onclick="goHtml(4);">留言</a></li>');
	headHtmlArray.push('<li><a href="#" onclick="goHtml(5);">个人</a></li>');
	headHtmlArray.push('<li><a href="#" onclick="goHtml(6);">作品</a></li>');
	headHtmlArray.push('</ul></div>');
	headHtmlArray.push('<div id="logo2"><h2> “夫君，世间有人谤我，欺我，辱我，笑我，轻我，贱我，骗我，如何处置乎？”     答曰：“揍他，揍他，揍他，揍他，揍他，揍他，揍他，就是揍他，揍完之后，你且看他。”</h2></div>');
	$('#header').html(headHtmlArray.join(''));
}

function addBlogComment(blogCommentList,blogId){
	var length = blogCommentList.length;
	var commentArray=[];
	commentArray.push('<form id="form1" action="addBlogComment">');
	commentArray.push('<div class="add_comment">');
	commentArray.push('<input type="hidden" name="blogId" value="'+blogId+'"/>');
	commentArray.push('<table style="width:100%">');
	commentArray.push('<tr><td><input type="text" id="visitName" name="visitName"/>&nbsp;&nbsp;<span style="color:red">*</span>昵称(必填)<span id="visitNameMsg" style="color:red;padding-left:10px"></span></td></tr>');
	commentArray.push('<tr><td><input type="text" name="visitEmail"/>&nbsp;&nbsp;&nbsp;电子邮箱</td></tr>');
	commentArray.push('<tr><td><input type="text" name="visitUrl"/>&nbsp;&nbsp;&nbsp;网址</td></tr>');
	commentArray.push('<tr><td><textarea rows="6" cols="100%" id="visitContent" name="visitContent"></textarea></td></tr>');
	commentArray.push('</table>');
	commentArray.push('<div class="comment"><a href="#" onclick="addComment()" class="more">发表评论...</a><span style="padding-left:20px;font-size:16px;">评论数：('+length+')</span></div></div>');
	commentArray.push('</form>');
	if(blogCommentList.length>0){
		for(var i=0;i<length;i++){
			var visitName=blogCommentList[i].visitName;
			var createTime=blogCommentList[i].createTime;
			var visitContent=blogCommentList[i].visitContent;
			commentArray.push('<div class="comment_list">');
			commentArray.push('<div style="color:#0099E8">'+visitName+'</div>');
			commentArray.push('<div>'+createTime+'</div>');
			commentArray.push('<div><p>'+visitContent+'</p></div>');
			commentArray.push('</div>');
		}
	}
	$('#blog_comment').html(commentArray.join(''));
}


function addComment(){
	if($('#visitName').val()==""){
		$('#visitNameMsg').text("昵称不能为空");
		$('#visitName').focus();
	}else{
		$('#form1').submit();
	}
}
