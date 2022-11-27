
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script>
      var xhr ;
      function testData(){
        xhr =new XMLHttpRequest();
        xhr.open("GET","testServlet.do",true);
        xhr.onreadystatechange=showReturnInfo;
        xhr.send(null);
      }
      function showReturnInfo(){
        if(xhr.readyState==4 && xhr.status==200){
          var info =xhr.responseText;
          var users=JSON.parse(info)
          for (var i = 0; i <users.length ; i++) {
            var user =users[i];
            console.log(user.uname)
            console.log(user.age)
            console.log(user.gender)
            console.log(user.birthday)
          }

        }
      }
    </script>
  </head>
  <body>
  <input type="button" value="测试" onclick="testData()">
  </body>
</html>
