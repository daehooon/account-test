package com.kim2.test.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.stereotype.Service;
import com.kim2.test.dao.AccountDao;
import com.kim2.test.dao.CustomerDao;
import com.kim2.test.domain.Customer;
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
  public String add(Customer customer) throws Exception {
    customerDao.insert(customer);

    HashMap<String,Object> params = new HashMap<>();
    params.put("businessNo", customer.getBusinessNumber());
    params.put("accounts", customer.getAccount());
    accountDao.insert(params);

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
  public String update(Customer customer) throws Exception {
    customerDao.update(customer);
    return customer.getBusinessNumber();
  }

  @Override
  public List<Customer> list() throws Exception {
    return customerDao.findAll();
  }
}