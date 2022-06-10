package com.kim2.test.service;

import java.util.List;
import com.kim2.test.domain.Account;
import com.kim2.test.domain.Customer;
import com.kim2.test.domain.Nation;

public interface CustomerService {

  String add(Customer customer, Account account) throws Exception;

  List<Customer> list() throws Exception;

  Customer get(String businessNumber) throws Exception;

  String delete(Customer customer) throws Exception;

  String update(Customer customer, Account account) throws Exception;

  List<Customer> list(String keyword) throws Exception;

  List<Customer> lists(String keywords) throws Exception;

  List<Nation> search(String nation) throws Exception;
}
