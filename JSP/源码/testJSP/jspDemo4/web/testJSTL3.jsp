
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--
    for ( int i =1;i<=9 ;i+=2){
        pageContext.setAttribute("i",i)
    }
    c:foreach 每次执时都会向page域中放入一个名为 i 值为当前值这样的一个操作
    --%>

    <c:forEach var="i" begin="1" end="9" step="1">
        <c:forEach var="j" begin="1" end="${i}" step="1">
            ${j} * ${i} = ${i*j} &nbsp;
        </c:forEach>
        <br/>
    </c:forEach>

</body>
</html>
