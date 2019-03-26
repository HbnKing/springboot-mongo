package com.project.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.project.spring.util.ControllerConstants.*;


@Controller
@RequestMapping("/base")
public class BaseController {

    @RequestMapping("/pages")
    public String page(){
        return "page";
    }


    /**
     * 根据主键获得查询字段的别名
     * @return
     */
    @RequestMapping("/getLable")
    @ResponseBody
    public String getLable(String reportId){
      // String lable = editReportService.getLebStr(Integer.parseInt(reportId));

      //  return lable;

        return "jobId,identity,other";

    }


    /**
     * 分页功能
     */
    @RequestMapping("/select")
    @ResponseBody
    public List<Map<String,Object>> getTest(@RequestParam("reportId") Integer reportId,
                                            @RequestParam("whereFields") String whereFields){
        //得到条件
        /*Map<String,Object> maps = editReportService.getQuerySql(reportId,whereFields);
        String sql=maps.get("sql").toString()+"  limit 1000";
        String fields[] =editReportService.getSqlStr(reportId).split(",");
        List<Map<String,Object>> lists=sparkTestService.sparkDemo(sql,fields,reportId);
        System.out.println(">>>>>>>>>>>>"+lists.size()+"<<<<<<<<<<<<<<<<<<");
        //点击预览查询数据，并给操作记录表
        System.out.println("sql: ------>    "+sql);
        uoload(reportId,sql,lists);*/
        Map<String, Object> result = new HashMap<String, Object>();

            result.put("1", RSP_TYPE_SUCCESS);
            result.put("2", "查询信息失败");
            result.put("3",reportId);


        List<Map<String,Object>> lists = new ArrayList<Map<String,Object>>();
        lists.add(result);
        lists.add(result);
        lists.add(result);
        lists.add(result);
        lists.add(result);
        lists.add(result);
        lists.add(result);
        lists.add(result);
        lists.add(result);
        lists.add(result);
        lists.add(result);
        lists.add(result);
        System.out.println(lists);
        return lists;

    }


}
