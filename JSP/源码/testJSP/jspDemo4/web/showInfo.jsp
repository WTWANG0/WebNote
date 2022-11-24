<%@ page import="com.msb.pojo.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--向pageContext域中放数据--%>
    <%
    pageContext.setAttribute("msg", "pageContextMessage");
    pageContext.setAttribute("userx", new User(1,"大黄","abcdefg"));
    %>

    <%--
    从域中取出数据
    El表达式在获取对象属性值得时候,是通过对象的属性的get方法获取的
    保证对象的要获取的属性必须有对应get方法才可以

    EL表达式在使用时是不需要import其他类的

    El如果获取的是NULL值,是不展示任何信息的
    --%>

    pageContext域中的数据:<br/>
    msg:${pageScope.msg}<br/>
    username:${pageScope.userx.name}<br/>
    <hr/>
    request域中的数据:<br/>
    msg:${requestScope.msg}<br/>
    username:${requestScope.user.name}<br/>
    <hr/>

    session域中的数据:<br/>
    msg:${sessionScope.msg}<br/>
    username:${sessionScope.users[1].name}<br/>
    <hr/>
    application域中的数据:<br/>
    msg:${applicationScope.msg}<br/>
    username:${applicationScope.userMap.a.name}<br/>
    <hr/>

    <%--EL表达式在取出数据的时候是可以省略域标志的
    EL表达式会自动依次到四个域中去找数据
    --%>
    PageContext username:${userx.name}<br/>
    Request username:${user.name}<br/>
    Session username:${users[1].name}<br/>
    Application username:${userMap.a.name}<br/>
    <hr/>

    <%--
    ${数据的名字}如果省略域标志,取数据的顺序如下
    pageContext
    request
    session
    application
    --%>
    ${msg}
    <hr/>
    <%--
    移除域中的数据
    --%>
    <%
         //pageContext.removeAttribute("msg");// pageContext.removeAttribute()方法会移除四个域中的所有的同名的数据
        //request.removeAttribute("msg");
    %>

    pagecontextMsg:${pageScope.msg}<br/>
    requestMsg:${requestScope.msg}<br/>
    sessionMsg:${sessionScope.msg}<br/>
    applicationMsg:${applicationScope.msg}<br/>

    <hr/>
    <%--
    EL表达式获取请求中的参数
    --%>
    username:${param.username}<br/>
    hobby:${paramValues.hobby[0]}
    hobby:${paramValues.hobby[1]}


</body>
</html>
