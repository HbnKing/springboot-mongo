package com.project.spring.service;

import com.project.spring.domain.Job;
import com.project.spring.repository.JobRepository;
import com.project.spring.service.exception.ObjectNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Optional;

/**
 * @author wangheng
 * @create 2019-02-25 下午5:43
 * @desc
 **/

@Service
public class JobService {

    @Autowired
    private JobRepository repo;

    public List<Job> findAll() {
        return repo.findAll();
    }

    public Job findById(String id) {

        Optional<Job> obj = repo.findById(id);
        return obj.orElseThrow(() -> new ObjectNotFoundException("Objeto não encontrado"));
    }


    public Job findByJobId(String id) {
        Optional<Job> obj = repo.findByjobId(id);
        return obj.orElse(new Job());
    }

    public Job insert(Job obj) {
        return repo.insert(obj);
    }

    public void delete(String id) {
        findByJobId(id);
        repo.deleteById(id);
    }

    public Job update(Job obj) {
        //Job oldObj = findByJobId(obj.getId());
        //updateData(oldObj, obj);
        return repo.save(obj);

    }


    public void save(Job job){

         repo.save(job);

    }

    /**
     * 这个是什么鬼 方法
     * @param
     * @param obj
     */
    private void updateData(Job oldObj, Job obj) {

        oldObj.setIdentity(obj.getIdentity());
    }

    public void runSparkShell(String id) {

        try {
            String[] shpath={"sh","-c","/home/spark-job.sh  " +id } ;
            Process ps = Runtime.getRuntime().exec(shpath);
            ps.waitFor();

            /*BufferedReader br = new BufferedReader(new InputStreamReader(ps.getInputStream()));
            String line;
            while ((line = br.readLine()) != null) {
                System.out.println(line);
                System.out.println("\n");
            }*/
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

   /* public Job fromDTO(JobDTO objDto) {
        return new Job(objDto.getId(), objDto.getName(), objDto.getEmail());
    }*/
}