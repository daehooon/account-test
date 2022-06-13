package com.kim2.test.service;

import java.util.List;
import com.kim2.test.domain.Nation;

public interface NationService {

  int add(Nation nation) throws Exception;

  List<Nation> list() throws Exception;

  Nation get(int nationNo) throws Exception;

  int delete(Nation nation) throws Exception;

  int update(Nation nation) throws Exception;
}
