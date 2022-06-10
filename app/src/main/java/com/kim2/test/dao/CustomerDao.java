package com.kim2.test.dao;

import java.util.List;
import com.kim2.test.domain.Customer;
import com.kim2.test.domain.Nation;

public interface CustomerDao {

  int insert(Customer customer) throws Exception;

  Customer findByNo(String businessNumber) throws Exception;

  int delete(Customer customer) throws Exception;

  int update(Customer customer) throws Exception;

  List<Customer> findAll() throws Exception;

  List<Customer> findByKeyword(String keyword) throws Exception;

  List<Customer> findByKeywords(String keywords) throws Exception;

  List<Nation> findByNation(String nation) throws Exception;
}
