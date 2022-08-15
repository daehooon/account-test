package com.kim2.test.web;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kim2.test.domain.Nation;
import com.kim2.test.service.NationService;

@Controller
@RequestMapping("/nation")
public class NationController {

  NationService nationService;

  public NationController(NationService nationService) {
    this.nationService = nationService;
  }

  @GetMapping("list")
  public void list(Model model) throws Exception {
    List<Nation> nations = nationService.list();
    model.addAttribute("nations", nations);
  }
}






