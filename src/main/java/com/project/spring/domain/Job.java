package com.project.spring.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.*;

/**
 * @author wangheng
 * @create 2019-02-25 下午5:20
 * @desc
 *
 * job任务 的 东西 实体类
 *
 *
 *
 **/

@Document
public class Job {

    private static final long serialVersionUID = 1L;

    public List<String> getIdentity() {
        return identity;
    }

    public void setIdentity(List<String> identity) {
        this.identity = identity;
    }

    /**
     * id  既主键
     *
     */
    @Id
    private String id;

    public String getJobId() {
        return jobId;
    }

    public void setJobId(String jobId) {
        this.jobId = jobId;
    }

    private String jobId;
    private List<String> identity = new ArrayList<>();

    private List<String> comments = new ArrayList<>();

    public Job() {
    }


    public Job(String  id ,String jobId,List<String> identity){
        this.id = id ;
        this.jobId = jobId ;
        this.identity = identity;
    }


    /**
     * 构造方法
     * 主键 -> id
     * 身份信息 ->identity
     * @param id
     * @param identity
     */
    public Job(String id, List<String> identity){
        this.id = id ;
        this.identity = identity ;
    }



    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Map<String,Object> JobtoMap(){
        Map<String,Object>  map = new LinkedHashMap<>();
        map.put("id",id);
        map.put("jobId",jobId);
        map.put("identity",identity);

        return map;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((id == null) ? 0 : id.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Job other = (Job) obj;
        if (id == null) {
            if (other.id != null)
                return false;
        } else if (!id.equals(other.id))
            return false;
        return true;
    }
}
