package com.kim2.test.dao;

import java.util.List;
import java.util.Map;
import com.kim2.test.domain.Customer;

public interface CustomerDao {

  int insert(Map<String,Object> param) throws Exception;

  List<Customer> findAll() throws Exception;

  Customer findByNo(int no) throws Exception;

  Customer findByName(String name) throws Exception;

  int update(Map<String,Object> param) throws Exception;

  int delete(int no) throws Exception;

  List<Customer> findByTutor(int tutorNo) throws Exception;

  Customer findBySchedule(int scheduleNo) throws Exception;
}
