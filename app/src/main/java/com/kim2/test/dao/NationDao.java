package com.kim2.test.dao;

import java.util.List;
import com.kim2.test.domain.Nation;

public interface NationDao {

  List<Nation> findAll() throws Exception;
}
