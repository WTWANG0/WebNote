package com.msb.service.impl;

import com.msb.dao.EmpDao;
import com.msb.dao.impl.EmpDaoImpl;
import com.msb.pojo.Emp;
import com.msb.service.EmpService;

import java.util.List;

/**
 * @Author: Ma HaiYang
 * @Description: MircoMessage:Mark_7001
 */
public class EmpServiceImpl implements EmpService {
    EmpDao empDao =new EmpDaoImpl();
    @Override
    public List<Emp> findAll() {
        List<Emp> list = empDao.findAll();
        return list;
    }
}
