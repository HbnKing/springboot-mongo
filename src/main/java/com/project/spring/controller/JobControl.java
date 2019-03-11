package com.project.spring.controller;

import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.project.spring.domain.Job;
import com.project.spring.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author wangheng
 * @create 2019-02-26 上午10:18
 * @desc
 *
 * job  的 控制层
 **/

@RestController
@RequestMapping("/job")
public class JobControl {
    @Autowired
    private JobService service;



    @RequestMapping("/hello")
    public String sayHello(){
        return "hello job";
    }


    @RequestMapping(value="/insert", method= RequestMethod.POST)
    public ResponseEntity<Void> insertJob(
            @RequestParam(value = "id",required = false) String id,
            @RequestParam(value = "jobId",required = true,defaultValue = "job1")String jobId,
            @RequestParam( value ="identity",required = false) Map<String,Object> identity) {
        System.out.println("id is " +id);
        System.out.println("identity is " +identity);
        Job  job  = new Job(id,jobId,identity);
        service.save(job);
        return ResponseEntity.noContent().build();
    }

    /**
     * 查找
     * @param id
     * @return
     */
    @RequestMapping(value="/find", method= RequestMethod.GET)
	public ResponseEntity<List<Map>> findById(@RequestParam( value ="id",defaultValue = "")String id) {

            Job obj = service.findById(id);
            System.out.println(obj);
            List list = new ArrayList();
            list.add(obj.JobtoMap());
            return ResponseEntity.ok().body(list);

	}


    /**
     * 查找All
     *
     * @return
     */
    @RequestMapping(value="/findall", method= RequestMethod.GET)
    public ResponseEntity<List<Map<String,Object>>> findAll() {
        List<Job> all = service.findAll();
        List<Map<String,Object>> list = new ArrayList<>();
        for(Job  job :all){
            list.add(job.JobtoMap());
        }
        System.out.println(list);
        return ResponseEntity.ok().body(list);
    }

    /**
     * 根据id 删除
     * @param id
     * @return
     */
    @RequestMapping(value="/delete", method= RequestMethod.GET)
    public ResponseEntity<Void> deleteById(@RequestParam( value ="id",defaultValue = "")String id) {
        System.out.println("delete id is "+id);
        service.delete(id);
        return ResponseEntity.noContent().build();
    }

    
    @RequestMapping(value="/start", method= RequestMethod.GET)
    public ResponseEntity<Void> startUp(@RequestParam( value ="id",defaultValue = "")String id) {
        System.out.println("此处 调用的是 shell 脚本 启动 spark  任务   传入的  参数为 " +id);
     
        
        return ResponseEntity.noContent().build();
    }


    /**
     * 根据id 更新
     * 传入 数组对象
     * @param
     * @return
     *
     */
    @RequestMapping(value="/update")
    public ResponseEntity<Void> update(
            @RequestParam(value = "jobId")String jobId,
            @RequestParam( value ="identity[]") List<String> identity) {

        //System.out.println("id is " +id);
        System.out.println("jobid is "+jobId);
        System.out.println("identity is " +identity);


        Job byJobId = service.findByJobId(jobId);
        if(byJobId == null){
            byJobId = new Job();
        }
        byJobId.setJobId(jobId);
        //byJobId.setIdentity(identity);

        service.update(byJobId);
        return ResponseEntity.noContent().build();
    }




    /**
     * 根据id 更新
     * 传入 数组对象
     * @param
     * @return
     *
     */
    @RequestMapping(value="/updateMapIds")
    public ResponseEntity<Void> updateMapIds(
            @RequestParam(value = "jobId")String jobId,
            @RequestParam( value ="identity") String identity) {

        //System.out.println("id is " +id);

        System.out.println(jobId);
        System.out.println(identity);




        JSONObject  jsonObject = JSONObject.parseObject(identity);
        Map<String, Object> innerMap = jsonObject.getInnerMap();


        Job byJobId = service.findByJobId(jobId);
        if(byJobId == null){
            byJobId = new Job();
        }
        byJobId.setJobId(jobId);
        byJobId.setIdentity(innerMap);

        service.update(byJobId);
        return ResponseEntity.noContent().build();
    }


    @RequestMapping(value="/findjob")
    public ResponseEntity<List<Map<String,Object>>> findWithjobId(
            @RequestParam(value = "jobId")String jobId) {

        //System.out.println("id is " +id);
        //System.out.println("jobid is "+jobId);
        //System.out.println("identity is " +identity);

        Job byJobId = service.findByJobId(jobId);
        List list = new ArrayList();

        if(byJobId.getId() ==null){

        }else {

            list.add(byJobId.JobtoMap());
        }



        return ResponseEntity.ok().body(list);
    }








}
