package com.msb.service.impl;

import com.msb.dao.AreaDao;
import com.msb.dao.impl.AreaDaoImpl;
import com.msb.pojo.Area;
import com.msb.service.AreaService;

import java.util.List;

/**
 * @Author: Ma HaiYang
 * @Description: MircoMessage:Mark_7001
 */
public class AreaServiceImpl implements AreaService {
    private AreaDao areaDao =new AreaDaoImpl();
    @Override
    public List<Area> findByParentID(Integer parentID) {
        List<Area> areas = areaDao.findByParentID(parentID);
        return areas;
    }
}
