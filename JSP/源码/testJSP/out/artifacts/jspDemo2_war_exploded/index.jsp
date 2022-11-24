
<%--
response.setContentType("text/html;charset=UTF-8")
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>
<%--
告诉Tomcat转译JSP的时候用JAVA
--%>
<%@ page language="java"%>
<%--
默认就是 contentType="text/html;charset=UTF-8"
--%>
<%@ page pageEncoding="UTF-8"%>

<%--
import com.msb.pojo.Emp;
--%>
<%@ page import="com.msb.pojo.Emp" %>
<%@ page import="java.util.Date" %>
<%--
异常跳转页
--%>
<%@ page errorPage="error500.jsp" %>



<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    Date date =new Date();
    Emp emp=new Emp();
   /* int i =1/0;*/
  %>
  <%--静态引入 被引入的文件不会单独转译成一个.Java文件--%>
  <%--<%@ include file="head.jsp"%>--%>
  <%--动态引入 --%>
  <jsp:include page="head.jsp"/>
  </body>
</html>
