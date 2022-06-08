package com.kim2.test.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;
import com.kim2.test.dao.NationDao;
import com.kim2.test.domain.Nation;
import com.kim2.test.service.NationService;

@Service
public class DefaultNationService implements NationService {

  TransactionTemplate transactionTemplate;
  NationDao nationDao;

  public DefaultNationService(PlatformTransactionManager txManager, NationDao nationDao) {

    this.transactionTemplate = new TransactionTemplate(txManager);
    this.nationDao = nationDao;
  }

  @Override
  public int add(Nation nation) throws Exception {
    return nationDao.insert(nation);
  }

  @Override
  public Nation get(int nationNo) throws Exception {
    return nationDao.findByNo(nationNo);
  }

  @Override
  public int delete(int nationNo) throws Exception {
    return nationDao.delete(nationNo);
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