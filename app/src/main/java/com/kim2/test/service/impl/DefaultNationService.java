package com.kim2.test.service.impl;

import java.util.List;
import org.springframework.stereotype.Service;
import com.kim2.test.dao.NationDao;
import com.kim2.test.domain.Nation;
import com.kim2.test.service.NationService;

@Service
public class DefaultNationService implements NationService {

  NationDao nationDao;

  public DefaultNationService(NationDao nationDao) {
    this.nationDao = nationDao;
  }

  @Override
  public List<Nation> list() throws Exception {
    return nationDao.findAll();
  }
}