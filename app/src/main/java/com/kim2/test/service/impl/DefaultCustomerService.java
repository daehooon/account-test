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
  public int add(Customer customer) throws Exception {
    customerDao.insert(customer);
    return Integer.parseInt(customer.getBusinessNumber());
  }

  //  @Override
  //  public String add(Customer customer) throws Exception {
  //    return transactionTemplate.execute(new TransactionCallback<String>() {
  //      @Override
  //      public String doInTransaction(TransactionStatus status) {
  //        try {
  //          HashMap<String,Object> param = new HashMap<>();
  //          param.put("businessNumber", customer.getBusinessNumber());
  //          param.put("customer", customer);
  //          customerDao.insert(param);
  //
  //          return customer.getBusinessNumber();
  //
  //        } catch (Exception e) {
  //          throw new RuntimeException(e);
  //        }
  //      }
  //    });
  //  }

  @Override
  public Customer get(String businessNumber) throws Exception {
    return customerDao.findByNo(businessNumber);
  }

  @Override
  public String delete(String businessNumber) throws Exception {
    return customerDao.delete(businessNumber);
  }

  //  @Override
  //  public String update(Customer customer) throws Exception {
  //    return transactionTemplate.execute(new TransactionCallback<String>() {
  //      @Override
  //      public String doInTransaction(TransactionStatus status) {
  //        try {
  //          HashMap<String,Object> param = new HashMap<>();
  //          param.put("businessNumber", customer.getBusinessNumber());
  //          param.put("customer", customer);
  //          customerDao.update(param);
  //
  //          return customer.getBusinessNumber();
  //        } catch (Exception e) {
  //          throw new RuntimeException(e);
  //        }
  //      }
  //    });
  //  }




  //  @Override
  //  public List<Customer> list() throws Exception {
  //    return customerDao.findAll();
  //  }
}