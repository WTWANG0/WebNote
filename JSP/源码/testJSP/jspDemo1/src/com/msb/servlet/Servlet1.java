package com.msb.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @Author: Ma HaiYang
 * @Description: MircoMessage:Mark_7001
 */
@WebServlet("/servlet1.do")
public class Servlet1 extends HttpServlet {



    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int h = Integer.parseInt(request.getParameter("h"));
        int l = Integer.parseInt(request.getParameter("l"));
        // 设置响应内容和编码
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        // 响应内容给浏览器
        PrintWriter out = response.getWriter();
        StringBuilder sbd=new StringBuilder();
        out.print("<html lang='en'><head><meta charset='UTF-8'><title>Title</title><style>");
        out.print("table{border: 1px solid green;width: 50%;margin: 0px auto;}");
        sbd.append("table td{border: 1px solid blue;}</style></head><body><table>");
        for (int i = 1; i <=h ; i++) {
            out.print("<tr>");
            for (int j = 1; j <=l ; j++) {
                out.print("<td>");
                out.print(String.valueOf(i));
                out.print(String.valueOf(j));
                out.print("</td>");
            }
            out.print("</tr>");
        }
        out.print("</table></body></html>");




    }
}
