<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<body>
c=${responseCode}
<g:if test="${hashCode}">hc=${hashCode}</g:if>
<g:if test="${signature}">s=${signature}</g:if>
<g:if test="${timestamp}">t=${timestamp}</g:if>
</body>
</html>