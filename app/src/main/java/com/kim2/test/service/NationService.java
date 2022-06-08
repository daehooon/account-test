package com.kim2.test.service;

import com.kim2.test.domain.Nation;

public interface NationService {

  int add(Nation nation) throws Exception;

  Nation get(int nationNo) throws Exception;

  int delete(int nationNo) throws Exception;

  //  String update(Customer customer) throws Exception;
  //
  //  List<Customer> list() throws Exception;
  //
  //  Customer Search(String businessNumber) throws Exception;
}
