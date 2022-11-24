package com.msb.dao.impl;

import com.msb.dao.EmpDao;
import com.msb.pojo.Emp;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Author: Ma HaiYang
 * @Description: MircoMessage:Mark_7001
 */
public class EmpDaoImpl implements EmpDao {
    private String url="jdbc:mysql://127.0.0.1:3306/mydb?useSSL=false&useUnicode=true&characterEncoding=UTF-8&serverTimezone=Asia/Shanghai";
    private String username="root";
    private String password="root";
    @Override
    public List<Emp> findAll() {
        List<Emp> list =new ArrayList<>();
        Connection connection =null;
        PreparedStatement pstat=null;
        ResultSet resultSet=null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
            pstat = connection.prepareStatement("select * from emp");
            resultSet = pstat.executeQuery();
            while(resultSet.next()){
                Integer empno=resultSet.getInt("empno");
                Integer deptno=resultSet.getInt("deptno");
                Integer mgr=resultSet.getInt("mgr");
                String ename=resultSet.getString("ename");
                String job=resultSet.getString("job");
                Double sal=resultSet.getDouble("sal");
                Double comm=resultSet.getDouble("comm");
                Date hiredate=resultSet.getDate("hiredate");
                Emp emp =new Emp( empno,  ename,  job,  mgr,  hiredate,  sal,  comm,  deptno);
                list.add(emp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            if(null!=resultSet){
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(null!=pstat){
                try {
                    pstat.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(null!=connection){
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return list;
    }
}
