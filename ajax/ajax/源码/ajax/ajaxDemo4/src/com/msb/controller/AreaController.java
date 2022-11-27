package com.msb.controller;

import com.google.gson.Gson;
import com.msb.dao.AreaDao;
import com.msb.dao.impl.AreaDaoImpl;
import com.msb.pojo.Area;
import com.msb.service.AreaService;
import com.msb.service.impl.AreaServiceImpl;

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
@WebServlet("/areaController.do")
public class AreaController extends HttpServlet {
    private AreaService areaService=new AreaServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer parentID=0;
        try {
            parentID= Integer.parseInt(req.getParameter("parentID"));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }

        List<Area> areas=areaService.findByParentID(parentID);

        String json = new Gson().toJson(areas);

        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        resp.getWriter().print(json);

    }
}
