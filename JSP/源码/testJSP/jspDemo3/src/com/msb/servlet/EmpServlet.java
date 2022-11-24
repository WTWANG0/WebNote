package com.msb.servlet;

import com.msb.dao.EmpDao;
import com.msb.dao.impl.EmpDaoImpl;
import com.msb.pojo.Emp;
import com.msb.service.EmpService;
import com.msb.service.impl.EmpServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author: Ma HaiYang
 * @Description: MircoMessage:Mark_7001
 */
@WebServlet("/empServlet.do")
public class EmpServlet extends HttpServlet {
    // Service层对象
    EmpService empService =new EmpServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取数据
        List<Emp> list = empService.findAll();
        // 将数据放入请求域
        req.setAttribute("emps", list);
        // 请求转发给JSP
        req.getRequestDispatcher("showEmp.jsp").forward(req,resp);
    }
}
