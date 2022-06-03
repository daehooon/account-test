package com.kim2.test.dao;

import java.util.Map;
import com.kim2.test.domain.Customer;

public interface CustomerDao {

  String insert(Customer customer) throws Exception;

  Customer findByNo(String businessNumber) throws Exception;

  String delete(String businessNumber) throws Exception;

  String update(Map<String,Object> param) throws Exception;



  //  List<Customer> findAll() throws Exception;
  //
  //  Customer findByName(String name) throws Exception;
  //
  //  List<Customer> findByTutor(int tutorNo) throws Exception;
}
