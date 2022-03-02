package com.fuzaiyo.dao;

import com.fuzaiyo.domain.User;
import org.apache.ibatis.annotations.*;

public interface UserDao {


    //登录时根据用户名密码查用户
    @Select("select * from user where  password=#{password} and username =#{username}")
    @Results({@Result(property = "id", column = "user_id")
    })
    User findByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

    //单个id查用户
    @Select("select * from user where user_id=#{id}")
    @Results({@Result(property = "id", column = "user_id")
    })
    User findById(@Param("id") int id);

    //更新用户某些信息
    @UpdateProvider(type = SqlProvider.class, method="updateUser")
    void updateByFakeUser(@Param("id")int id,@Param("phone") String phone,@Param("address") String address,@Param("consignee")String consignee,@Param("count")int count);

}
