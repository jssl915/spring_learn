<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set  var="ctx"  value="<%= request.getContextPath() %>"  />

<script>
    window.onload = function(){ 
    	window.location.href="${ctx}/index";     		
    };
</script>