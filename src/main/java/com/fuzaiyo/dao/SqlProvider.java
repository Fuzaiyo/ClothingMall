package com.fuzaiyo.dao;

import com.fuzaiyo.domain.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.jdbc.SQL;

import java.util.List;
import java.util.Map;


public class SqlProvider {

    public String updateUser(@Param("id") int id, @Param("phone") String phone, @Param("address") String address, @Param("consignee") String consignee, @Param("count") int count) {
        return new SQL() {
            {
                UPDATE("user");
                if (consignee != null) {
                    SET("consignee = #{consignee}");
                }
                if (count != 0) {
                    SET("balance = balance + #{count}");
                }
                if (phone != null) {
                    SET("phone = #{phone}");
                }
                if (address != null) {
                    SET("address = #{address}");
                }
                WHERE("user_id=#{id}");
            }
        }.toString();
    }
}
