<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set  var="ctx"  value="<%= request.getContextPath() %>"  />
<c:set  var="js"   value="${ctx}/static/js"/>
<c:set  var="css"  value="${ctx}/static/css"/>
<c:set  var="img"  value="${ctx}/static/images"/>

<script type="text/javascript" src="<c:url value='/static/js/jquery.js'/>"></script>
<script type="text/javascript" src="<c:url value='/static/js/common.js'/>"></script>
<script type="text/javascript" src="<c:url value='/static/js/data.js'/>"></script>
<link href="${css}/style.css" rel="stylesheet" type="text/css" />
<link href="${css}/init.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function goHtml(num){
	if(num==1){
		window.location.href = "${ctx}/index";
	}
	if(num==2){
		window.location.href = "${ctx}/index/main";
	}
	if(num==3){
		window.open("${ctx}/index/photowall");
	}
	if(num==4){
		window.location.href = "${ctx}/index/guestMessage";
	}
	if(num==5){
		window.location.href = "${ctx}/index/person";
	}
	if(num==6){
		window.open("${ctx}/work/waterfall");
	}
}
</script>