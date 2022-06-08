package com.kim2.test.dao;

import com.kim2.test.domain.Customer;

public interface CustomerDao {

  int insert(Customer customer) throws Exception;

  Customer findByNo(String businessNumber) throws Exception;

  int delete(Customer customer) throws Exception;

  int update(Customer customer) throws Exception;
}
