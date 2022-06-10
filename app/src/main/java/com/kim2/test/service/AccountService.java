package com.kim2.test.service;

import com.kim2.test.domain.Account;

public interface AccountService {

  Account get(String businessNumber) throws Exception;

  String delete(Account account) throws Exception;
}
