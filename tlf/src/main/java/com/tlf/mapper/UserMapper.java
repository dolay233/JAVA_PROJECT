package com.tlf.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.tlf.pojo.User;
import org.apache.ibatis.annotations.*;

import java.util.List;


public interface UserMapper extends BaseMapper<User> {
    //注解方式查询数据库! 只适用简单Sql!!! 注解/映射文件二选一
    @Select("select * from user limit #{start},#{size}")
    /*@Insert()
    @Update()
    @Delete()*/
    List<User> findListByPage(int start,int size);

    User selectOneById(Integer id);
}
