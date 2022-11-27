package com.msb.service;

import com.msb.pojo.Area;

import java.util.List;

/**
 * @Author: Ma HaiYang
 * @Description: MircoMessage:Mark_7001
 */
public interface AreaService {
    List<Area> findByParentID(Integer parentID);
}
