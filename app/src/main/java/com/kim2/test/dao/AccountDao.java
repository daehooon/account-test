package com.kim2.test.dao;

import java.util.Map;
import com.kim2.test.domain.Account;

public interface AccountDao {

  int insert(Map<String,Object> params) throws Exception;

  Account findByNo(String businessNumber) throws Exception;

  int delete(Account account) throws Exception;

  int update(Account account) throws Exception;
}
