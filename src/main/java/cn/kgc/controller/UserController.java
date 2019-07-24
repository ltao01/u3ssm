package cn.kgc.controller;


import cn.kgc.pojo.user;
import cn.kgc.service.IUserService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private IUserService userService;


//    动态分页查询
//    1,在当前方法中要接那些参数


    //4.查询当前页的查询的zs的列表
    @RequestMapping("/findAll")

    public String findUserByPage(
            @RequestParam(value = "name",defaultValue="")String name,
        @RequestParam(value = "userid",defaultValue = "0")Integer cid,
            @RequestParam(value = "page",defaultValue = "1")Integer page,
            Model model){

//        声明一个每页显示的记录数
        int size=3;
        //4.查询当前页的查询的zs的列表
        List<user> users = userService.selectPage(name, cid, size, page);
        //把获取到的user集合封装到pageinfo类中
        PageInfo<user> pageInfo = new PageInfo<>(users);
        model.addAttribute("pageInfo",pageInfo);

        return "show";
    }
}
