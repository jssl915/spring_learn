<%@ page contentType="textml;charset=UTF-8" language="java"%>
<%@ include file="taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="textml; charset=utf-8" />
<title>留言</title>
</head>
<body>
<div id="header"></div>

<!-- start page -->
<div id="page">
	<div id="content" style="width:900px;">
		<div><h2>留言小本</h2></div>
		<form id="form1" action="addGuestMessage">
			<div class="add_comment">
					<table style="width:100%">
						<tr><td><input type="text" id="visitName" name="visitName"/>&nbsp;&nbsp;<span style="color:red">*</span>昵称(必填)<span id="visitNameMsg" style="color:red;padding-left:10px"></span></td></tr>
						<tr><td><input type="text" name="visitEmail"/>&nbsp;&nbsp;&nbsp;电子邮箱</td></tr>
						<tr><td><input type="text" name="visitUrl"/>&nbsp;&nbsp;&nbsp;网址</td></tr>
						<tr><td><textarea rows="6" cols="100%" id="visitContent" name="visitContent"></textarea></td></tr>
					</table>
			</div>
			<div class="comment">
			<a href="#" onmouseenter="changeMoreClass(this.id,1);" onmouseleave="changeMoreClass(this.id,2);" onclick="addBlogMessage()" id="comment_more" class="more">发表留言...</a>
			<span style="padding-left:20px;font-size:16px;" id="messageNum"></span>
			</div>
		</form>
		
		<div id="message_list" style="border-top:1px solid #D1D1D1;margin-top:20px;"></div>
		
	</div>
	<div style="clear: both;">&nbsp;</div>
</div>
</body>

<script type="text/javascript">
$(function(){
	addHead();
	addMessage();
});

function addMessage(){
	var messageArray=[];
	var blogMessageList =${blogMessageList};
	var length = blogMessageList.length;
	$('#messageNum').html('留言数：('+length+')');
	if(length>0){
		for(var i=0;i<length;i++){
			var visitName=blogMessageList[i].visitName;
			var createTime=blogMessageList[i].createTime;
			var visitContent=blogMessageList[i].visitContent;
			messageArray.push('<div class="comment_list">');
			messageArray.push('<div style="color:#0099E8">'+visitName+'<span id="visitNameMsg" style="color:red;padding-left:10px"></span></div>');
			messageArray.push('<div>'+createTime+'</div>');
			messageArray.push('<div><p>'+visitContent+'</p></div>');
			messageArray.push('</div>');
		}
	}
	
	$('#message_list').html(messageArray.join(''));
}

function addBlogMessage(){
	if($('#visitName').val()==""){
		$('#visitNameMsg').text("昵称不能为空");
		$('#visitName').focus();
	}else{
		$('#form1').submit();
	}
}

</script>
</html>