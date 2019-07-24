package cn.kgc.service.impl;

import cn.kgc.mapper.userMapper;
import cn.kgc.pojo.user;
import cn.kgc.pojo.userExample;
import cn.kgc.service.IUserService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements IUserService {
    /**
     *
     */
    @Autowired
    private userMapper userMapper;

//动态分页查询
    @Override
    public List<user> selectPage(String name, Integer userid, int page, int size) {

//分页插件开始页参数1：当前页吗，参数2表示每页显示的记录数；
        PageHelper.startPage(page,3);//会自动分页
        userExample example = new userExample();
        userExample.Criteria criteria = example.createCriteria();
        //添加条件
        if(name!=null){
            criteria.andNameLike("%"+name+"%");
        }
        if (userid!=null&&userid!=0){
            criteria.andUseridEqualTo(userid);
        }
        List<user> users = userMapper.selectByExample(null);
        return users;
    }
}
