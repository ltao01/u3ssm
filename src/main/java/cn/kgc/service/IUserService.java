package cn.kgc.service;

import cn.kgc.pojo.user;
import java.util.List;

public interface IUserService {
    //查询条件下的总记录数
    public List<user> selectPage(String name, Integer userid, int page, int size);
}
