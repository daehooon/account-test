package com.kim2.test.service;

import java.util.List;
import com.kim2.test.domain.Customer;

public interface CustomerService {

  String add(Customer customer) throws Exception;

  Customer get(String businessNumber) throws Exception;

  String delete(Customer customer) throws Exception;

  String update(Customer customer) throws Exception;

  List<Customer> list() throws Exception;
}
