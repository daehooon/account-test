package com.kim2.test.service.impl;

import org.springframework.stereotype.Service;
import com.kim2.test.dao.AccountDao;
import com.kim2.test.dao.CustomerDao;
import com.kim2.test.domain.Account;
import com.kim2.test.service.AccountService;

@Service
public class DefaultAccountService implements AccountService {

  CustomerDao customerDao;
  AccountDao accountDao;

  public DefaultAccountService(AccountDao accountDao) {

    this.accountDao = accountDao;
  }

  @Override
  public String add(Account account) throws Exception {
    accountDao.insert(account);
    return account.getBusinessNo();
  }

  @Override
  public Account get(String businessNo) throws Exception {
    return accountDao.findByNo(businessNo);
  }

  @Override
  public String delete(Account account) throws Exception {
    accountDao.delete(account);
    return account.getBusinessNo();
  }

  @Override
  public String update(Account account) throws Exception {
    accountDao.update(account);
    return account.getBusinessNo();
  }
}