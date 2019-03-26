package com.project.spring;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

/**
 * @author wangheng
 * @create 2019-03-24 下午10:36
 * @desc
 **/
public class OtherTest {

    public static void main(String[] args) {
        String  string = "{\"name\":\"wh\" ,\"age\":12}";
        JSONObject  jsonObject = JSON.parseObject(string);

        System.out.println(jsonObject.get("name"));
        System.out.println(jsonObject.get("age"));
        System.out.println(jsonObject.get("sex"));


        System.out.println(jsonObject.get("name").getClass());
        System.out.println(jsonObject.get("age").getClass());
        System.out.println(jsonObject.get("sex").getClass());

    }
}
