package test;

import com.msb.dao.AreaDao;
import com.msb.dao.impl.AreaDaoImpl;
import com.msb.pojo.Area;

import java.util.List;

/**
 * @Author: Ma HaiYang
 * @Description: MircoMessage:Mark_7001
 */
public class TestA {
    public static void main(String[] args) {
        AreaDao dao =new AreaDaoImpl();
        List<Area> list = dao.findByParentID(0);
        list.forEach(System.out::println);
    }
}
