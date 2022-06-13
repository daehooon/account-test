package com.kim2.test.dao;

import java.util.List;
import com.kim2.test.domain.Nation;

public interface NationDao {

  int insert(Nation nation) throws Exception;

  Nation findByNo(int nationNo) throws Exception;

  int delete(Nation nation) throws Exception;

  int update(Nation nation) throws Exception;

  List<Nation> findAll() throws Exception;
}
