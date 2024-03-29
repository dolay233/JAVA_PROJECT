package com.tlf.controller;

import com.tlf.pojo.User;
import com.tlf.service.UserService;
import com.tlf.vo.PageResult;
import com.tlf.vo.SysResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
//@CrossOrigin({"http://localhost:8080"})
@CrossOrigin
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/selectOneById")
    public User selectOneById(Integer id){

        return userService.selectOneById(id);
    }

    /**
     * 业务说明: 实现用户登录
     * 思想: 根据参数,查询数据库
     *      有值: 用户名和密码正确
     *      没有值: 用户名和密码错误
     *
     *  URL:/user/login
     *  参数: username/password json
     *  类型: post
     *  返回值: SysResult对象(token)
     */
    @PostMapping("/login")
    public SysResult login(@RequestBody User user){
        //需求:要求登录成功之后,返回值标识符信息
        String token = userService.login(user);
        //如果token为null,说明登录失败
        if(token == null || token.length()==0){
            return SysResult.fail();
        }
        //否则 正确返回
        return SysResult.success(token);
    }

    /**
     * 业务说明: 实现用户列表的分页查询
     * URL地址: http://localhost:8091/user/list?query=查询关键字&pageNum=1&pageSize=10
     * 参数: pageResult接收
     * 返回值: SysResult对象(pageResult)
     */
    @GetMapping("/list")
    public SysResult getUserList(PageResult pageResult){//3

        pageResult = userService.getUserList(pageResult);
        return SysResult.success(pageResult);//5
    }

    /**
     * 业务说明: 修改状态信息
     * URL:  /user/status/{id}/{status}
     * 参数:  id/status
     * 返回值: SysResult
     */
    @PutMapping("/status/{id}/{status}")
    public SysResult updateStatus(User user){

        userService.updateStatus(user);
        return SysResult.success();
    }

    /**
     * 业务: 实现用户新增
     * url:  /user/addUser
     * 参数:  整个form表单  对象  json
     * 返回值: SysResult对象
     */
    @PostMapping("/addUser")
    public SysResult addUser(@RequestBody User user){

        userService.addUser(user);
        return SysResult.success();
    }

    /**
     * 业务: 根据id查询数据库
     * URL: /user/{id}
     * 参数: 主键id
     * 返回值: SysResult(User对象)
     */
    @GetMapping("/{id}")
    public SysResult getUserById(@PathVariable Integer id){

        User user = userService.getUserById(id);
        return SysResult.success(user);
    }
    @PutMapping("/resetPassword/{id}")
    public SysResult resetPassword(@PathVariable Integer id){

        userService.resetPassword(id);

        return SysResult.success();
    }

    /**
     * 业务需求: 实现用户更新操作
     * URl: /user/updateUser
     * 参数: 对象提交 JSON串   注解接收
     * 返回值: SysResult
     */
    @PutMapping("/updateUser")
    public SysResult updateUser(@RequestBody User user){

        userService.updateUser(user);
        return SysResult.success();
    }

    /**
     * 业务: 根据ID删除用户数据
     * URL:   /user/{id}
     * 参数: id
     * 返回值: SysResult对象
     */
    @DeleteMapping("/{id}")
    public SysResult deleteUserById(@PathVariable Integer id){

        userService.deleteUserById(id);
        return SysResult.success();

    }

}
