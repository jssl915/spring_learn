<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set  var="ctx"  value="<%= request.getContextPath() %>"  />
<c:set  var="js"   value="${ctx}/static/js"/>
<c:set  var="css"  value="${ctx}/static/css"/>
<c:set  var="img"  value="${ctx}/static/images"/>

<script type="text/javascript" src="<c:url value='/static/jquery.js'/>"></script>
