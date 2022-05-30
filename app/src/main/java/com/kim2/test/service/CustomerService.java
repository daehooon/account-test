package com.kim2.test.service;

import java.util.List;
import com.bit189.haroo.domain.ServiceInfo;
import com.kim2.test.domain.Customer;

public interface CustomerService {

  int add(Customer customer) throws Exception;

  List<Customer> list() throws Exception;

  Customer get(int no) throws Exception;

  int update(ServiceInfo serviceInfo, Customer Learning) throws Exception;

  int delete(int no) throws Exception;

  Customer Search(int no) throws Exception;
}
