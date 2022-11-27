package com.msb.dao;

import com.msb.pojo.Area;

import java.util.List;

/**
 * @Author: Ma HaiYang
 * @Description: MircoMessage:Mark_7001
 */
public interface AreaDao {
    List<Area> findByParentID(int parentID);
}
