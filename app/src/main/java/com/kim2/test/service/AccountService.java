package com.kim2.test.service;

import com.kim2.test.domain.Account;

public interface AccountService {

  String add(Account account) throws Exception;

  Account get(String businessNo) throws Exception;

  String delete(Account account) throws Exception;

  String update(Account account) throws Exception;
}
