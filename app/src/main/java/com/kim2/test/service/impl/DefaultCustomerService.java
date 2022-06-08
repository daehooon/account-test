package com.kim2.test.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;
import com.kim2.test.dao.CustomerDao;
import com.kim2.test.domain.Customer;
import com.kim2.test.service.CustomerService;

@Service
public class DefaultCustomerService implements CustomerService {

  TransactionTemplate transactionTemplate;
  CustomerDao customerDao;

  public DefaultCustomerService(PlatformTransactionManager txManager, CustomerDao customerDao) {

    this.transactionTemplate = new TransactionTemplate(txManager);
    this.customerDao = customerDao;
  }

  @Override
  public String add(Customer customer) throws Exception {
    customerDao.insert(customer);
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
}