package com.project.spring.repository;

import com.project.spring.domain.Job;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import java.util.Optional;

/**
 * @author wangheng
 * @create 2019-02-25 下午5:40
 * @desc
 **/
public interface JobRepository extends MongoRepository<Job, String> {

    //@Query(value = "{\"jobId\":{\"$regex\":?0}}")
    @Query(value = "{\"jobId\":{\"$eq\":?0}}")
    Optional<Job> findByjobId(String jobId);

}
