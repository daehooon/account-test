package com.kim2.test.dao;

import com.kim2.test.domain.Account;

public interface AccountDao {

  int insert(Account account) throws Exception;

  Account findByNo(String businessNo) throws Exception;

  int delete(Account account) throws Exception;

  int update(Account account) throws Exception;
}
