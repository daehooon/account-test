package com.kim2.test.dao;

import com.kim2.test.domain.Nation;

public interface NationDao {

  int insert(Nation nation) throws Exception;

  Nation findByNo(int nationNo) throws Exception;

  int delete(int nationNo) throws Exception;

  //  String update(Map<String,Object> param) throws Exception;
  //
  //  List<Customer> findAll() throws Exception;
  //
  //  Customer findByName(String name) throws Exception;
  //
  //  List<Customer> findByTutor(int tutorNo) throws Exception;
}
