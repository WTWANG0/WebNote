
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script src="js/jquery.min.js"></script>
    <script>
      $(function(){
        // 获取所有的省份信息
        showArea(0,"#provience")

      })



      function showArea(val,selectID){
        $.ajax({
          type:"GET",
          url:"areaController.do",
          data:{parentID:val},
          dataType:"json",
          success:function(areas){
            // 清除上一次选择省份时,遗留的城市
            $(selectID).html('<option>-请选择-</option>');
            $.each(areas,function(i,e){
              $(selectID).append('<option value="'+e.areaid+'">'+e.areaname+'</option>')
            })

            if(selectID== "#city"){
              $("#qu").html('<option>-请选择-</option>');
            }

          }
        })
      }


    </script>
  </head>
  <body>
  籍贯:
  <select id="provience" onchange="showArea(this.value,'#city')">
    <option>-请选择-</option>
  </select>
  <select id="city" onchange="showArea(this.value,'#qu')">
    <option>-请选择-</option>
  </select>
  <select id="qu">
    <option>-请选择-</option>
  </select>
  </body>
</html>
