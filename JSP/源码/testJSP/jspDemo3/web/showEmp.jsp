<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Title</title>
    <style>
        table{
            border: 3px solid blue;
            width: 90%;
            margin: 0px auto;
        }
        td,th{
            border: 2px solid green;
        }
    </style>
</head>
<body>
    <table cellspacing="0px" cellpadding="0px">
        <tr>
            <th>序号</th>
            <th>索引</th>
            <th>isFirst</th>
            <th>isLast</th>
            <th>工号</th>
            <th>姓名</th>
            <th>姓名</th>
            <th>上级编号</th>
            <th>职务</th>
            <th>入职日期</th>
            <th>薪资</th>
            <th>补助</th>
            <th>部门号</th>
            <th>薪资等级</th>
        </tr>
        <%--<%
        List<Emp> emps = (List<Emp>) request.getAttribute("emps");
        for (Emp emp : emps) {
            pageContext.setAttribute("emp", emp);//将员工对象放入PageContext 域
        %>

        c:foreach
            items 要遍历的数组/List  可以通过EL表达式取出集合之后给改属性赋值
            var   中间变量的名称
            varStatus 记录每一个对象状态的设置
                   count 个数
                   index 索引
                   first 如果当前元素是迭代的第一个元素 true 否则为false
                   last  如果当前元素是迭代的最后一个元素 true 否则为false
                   current 当前迭代的元素本身
        --%>
        <c:forEach items="${emps}" var="emp" varStatus="empStatus">
            <tr>
                <td>${empStatus.count}</td>
                <td>${empStatus.index}</td>
                <td>${empStatus.first}</td>
                <td>${empStatus.last}</td>
                <td>${emp.empno}</td>
                <td>${emp.ename}</td>
                <td>${empStatus.current.ename}</td>
                <td>${emp.mgr}</td>
                <td>${emp.job}</td>
                <td>
                    <fmt:formatDate value="${emp.hiredate}" pattern="yyyy年MM月dd日 HH:mm:ss"/>
                </td>
                <td>
                    <%--
                    0 代表必须有一位数字,如果对应的位置没有值怎么办?自动补充0
                    # 代表有一位数字,开头和结尾的所有的0不保留
                    --%>

                        &yen;<fmt:formatNumber value="${emp.sal}" pattern="###,##0.00"/>
                </td>
                <td>${emp.comm}</td>
                <td>${emp.deptno}</td>
                <td>
                   <c:choose>
                       <c:when test="${emp.sal le 500}">A</c:when>
                       <c:when test="${emp.sal le 1000}">B</c:when>
                       <c:when test="${emp.sal le 1500}">C</c:when>
                       <c:when test="${emp.sal le 2000}">D</c:when>
                       <c:when test="${emp.sal le 3000}">E</c:when>
                       <c:when test="${emp.sal le 4000}">F</c:when>
                       <c:when test="${emp.sal gt 4000}">G</c:when>
                   </c:choose>
                </td>
            </tr>
        </c:forEach>

    </table>
</body>
</html>


