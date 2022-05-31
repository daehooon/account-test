package com.kim2.test.service.impl;

import java.util.HashMap;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
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
    return transactionTemplate.execute(new TransactionCallback<String>() {
      @Override
      public String doInTransaction(TransactionStatus status) {
        try {
          HashMap<String,Object> param = new HashMap<>();
          param.put("businessNumber", customer.getBusinessNumber());
          param.put("customer", customer);
          customerDao.insert(param);

          return customer.getBusinessNumber();

        } catch (Exception e) {
          throw new RuntimeException(e);
        }
      }
    });
  }











  /*
  @Override
  public List<Learning> list() throws Exception {
    return learningDao.findAll();
  }

  @Override
  public Learning get(int no) throws Exception {
    return learningDao.findByNo(no);
  }

  @Override
  public int update(ServiceInfo serviceInfo, Learning learning) throws Exception {
    return transactionTemplate.execute(new TransactionCallback<Integer>() {
      @Override
      public Integer doInTransaction(TransactionStatus status) {
        try {
          serviceInfoDao.update(serviceInfo);

          HashMap<String,Object> param = new HashMap<>();
          param.put("no", serviceInfo.getNo());
          param.put("learning", learning);
          learningDao.update(param);

          HashMap<String,Object> params = new HashMap<>();
          params.put("learningNo", serviceInfo.getNo());
          params.put("schedules", learning.getSchedules());
          learningScheduleDao.update(params);

          return serviceInfo.getNo();
        } catch (Exception e) {
          throw new RuntimeException(e);
        }
      }
    });
  }

  @Override
  public int delete(int no) throws Exception {
    return serviceInfoDao.delete(no);
  }

  @Override
  public Learning Search(int no) throws Exception {
    return null;
  }
   */
}