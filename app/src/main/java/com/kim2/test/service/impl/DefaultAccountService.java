package com.kim2.test.service.impl;

import org.springframework.stereotype.Service;
import com.kim2.test.dao.AccountDao;
import com.kim2.test.domain.Account;
import com.kim2.test.service.AccountService;

@Service
public class DefaultAccountService implements AccountService {

  AccountDao accountDao;

  public DefaultAccountService(AccountDao accountDao) {

    this.accountDao = accountDao;
  }

  @Override
  public Account get(String businessNumber) throws Exception {
    return accountDao.findByNo(businessNumber);
  }

  @Override
  public String delete(Account account) throws Exception {
    accountDao.delete(account);
    return account.getBusinessNumber();
  }
}