package com.kim2.test.service.impl;

import java.util.List;
import org.springframework.stereotype.Service;
import com.kim2.test.dao.AccountDao;
import com.kim2.test.dao.CustomerDao;
import com.kim2.test.domain.Account;
import com.kim2.test.domain.Customer;
import com.kim2.test.domain.Nation;
import com.kim2.test.service.CustomerService;

@Service
public class DefaultCustomerService implements CustomerService {

  CustomerDao customerDao;
  AccountDao accountDao;

  public DefaultCustomerService(CustomerDao customerDao, AccountDao accountDao) {

    this.customerDao = customerDao;
    this.accountDao = accountDao;
  }

  @Override
  public String add(Customer customer, Account account) throws Exception {
    customerDao.insert(customer);
    accountDao.insert(account);
    return customer.getBusinessNumber();
  }

  @Override
  public Customer get(String businessNumber) throws Exception {
    return customerDao.findByNo(businessNumber);
  }

  @Override
  public String delete(Customer customer) throws Exception {
    customerDao.delete(customer);
    return customer.getBusinessNumber();
  }

  @Override
  public String update(Customer customer, Account account) throws Exception {
    customerDao.update(customer);
    accountDao.update(account);
    return customer.getBusinessNumber();
  }

  @Override
  public List<Customer> list() throws Exception {
    return customerDao.findAll();
  }

  @Override
  public List<Customer> list(String keyword) throws Exception {
    return customerDao.findByKeyword(keyword);
  }

  @Override
  public List<Customer> lists(String keyword2) throws Exception {
    return customerDao.findByKeyword(keyword2);
  }

  public List<Nation> search(String nation) throws Exception {
    return customerDao.findByNation(nation);
  }
}