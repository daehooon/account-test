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

  //  @GetMapping("form")
  //  public void form() throws Exception {}
  //
  //  @PostMapping("add")
  //  public String add(HttpServletRequest request) throws Exception {
  //
  //    Customer c = new Customer();
  //    Account a = new Account();
  //
  //    SimpleDateFormat transFormat1 = new SimpleDateFormat("yyyy-MM-dd");
  //    SimpleDateFormat transFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  //
  //    c.setBusinessNumber(request.getParameter("businessNumber"));
  //    c.setCustom(request.getParameter("custom"));
  //    c.setSshort(request.getParameter("sshort"));
  //    c.setCeo(request.getParameter("ceo"));
  //    c.setChargePerson(request.getParameter("chargePerson"));
  //    c.setBusinessCondition(request.getParameter("businessCondition"));
  //    c.setItem(request.getParameter("item"));
  //    c.setPostNumber(request.getParameter("postNumber"));
  //    c.setFirstAddress(request.getParameter("firstAddress"));
  //    c.setSecondAddress(request.getParameter("secondAddress"));
  //    c.setTel(request.getParameter("tel"));
  //    c.setFax(request.getParameter("fax"));
  //    c.setHomepage(request.getParameter("homepage"));
  //    c.setCorporationWhether(request.getParameter("corporationWhether"));
  //    c.setForeignWhether(request.getParameter("foreignWhether"));
  //    c.setTaxWhether(request.getParameter("taxWhether"));
  //    // nation
  //    c.setSpecialRelation(request.getParameter("specialRelation"));
  //    c.setTradeStop(request.getParameter("tradeStop"));
  //    c.setContractStart(transFormat1.parse(request.getParameter("contractStart")));
  //    c.setContractEnd(transFormat1.parse(request.getParameter("contractEnd")));
  //    c.setRegistrationMan(request.getParameter("registrationMan"));
  //    c.setRegistrationDate(transFormat2.parse(request.getParameter("registrationDate")));
  //    c.setModificationMan(request.getParameter("modificationMan"));
  //    //    c.setModificationDate(transFormat2.parse(request.getParameter("modificationDate")));
  //
  //    a.setBusinessNumber(request.getParameter("businessNumber"));
  //    a.setFactory(request.getParameter("factory"));
  //    a.setTradeBank(request.getParameter("tradeBank"));
  //    a.setAccountNo(request.getParameter("accountNo"));
  //
  //    String businessNumber = customerService.add(c, a);
  //
  //    return "redirect:detail?businessNumber=" + businessNumber;
  //  }
  //
  //  @GetMapping("detail")
  //  public void detail(String businessNumber, Model model) throws Exception {
  //    System.out.println(businessNumber);
  //    System.out.println(customerService.get(businessNumber));
  //    model.addAttribute("customer", customerService.get(businessNumber));
  //  }
  //
  //  @RequestMapping("delete")
  //  public String delete(String businessNumber) throws Exception {
  //    Customer customer = customerService.get(businessNumber);
  //    Account account = accountService.get(businessNumber);
  //    if (customer == null) {
  //      throw new Exception("?????? ????????? ???????????? ????????????.");
  //    }
  //
  //    customerService.delete(customer);
  //    accountService.delete(account);
  //
  //    return "redirect:list";
  //  }
  //
  //  @GetMapping("updateForm")
  //  public void updateForm(String businessNumber, Model model) throws Exception {
  //    model.addAttribute("customer", customerService.get(businessNumber));
  //  }
  //
  //  @PostMapping("update")
  //  public String update(HttpServletRequest request) throws Exception {
  //
  //    Customer c = new Customer();
  //    Account a = new Account();
  //
  //    SimpleDateFormat transFormat1 = new SimpleDateFormat("yyyy-MM-dd");
  //    SimpleDateFormat transFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  //
  //    c.setBusinessNumber(request.getParameter("businessNumber"));
  //    c.setCustom(request.getParameter("custom"));
  //    c.setSshort(request.getParameter("sshort"));
  //    c.setCeo(request.getParameter("ceo"));
  //    c.setChargePerson(request.getParameter("chargePerson"));
  //    c.setBusinessCondition(request.getParameter("businessCondition"));
  //    c.setItem(request.getParameter("item"));
  //    c.setPostNumber(request.getParameter("postNumber"));
  //    c.setFirstAddress(request.getParameter("firstAddress"));
  //    c.setSecondAddress(request.getParameter("secondAddress"));
  //    c.setTel(request.getParameter("tel"));
  //    c.setFax(request.getParameter("fax"));
  //    c.setHomepage(request.getParameter("homepage"));
  //    c.setCorporationWhether(request.getParameter("corporationWhether"));
  //    c.setForeignWhether(request.getParameter("foreignWhether"));
  //    c.setTaxWhether(request.getParameter("taxWhether"));
  //    // nation
  //    c.setSpecialRelation(request.getParameter("specialRelation"));
  //    c.setTradeStop(request.getParameter("tradeStop"));
  //    c.setContractStart(transFormat1.parse(request.getParameter("contractStart")));
  //    c.setContractEnd(transFormat1.parse(request.getParameter("contractEnd")));
  //    c.setRegistrationMan(request.getParameter("registrationMan"));
  //    c.setRegistrationDate(transFormat2.parse(request.getParameter("registrationDate")));
  //    c.setModificationMan(request.getParameter("modificationMan"));
  //    c.setModificationDate(transFormat2.parse(request.getParameter("modificationDate")));
  //
  //    a.setBusinessNumber(request.getParameter("businessNumber"));
  //    a.setFactory(request.getParameter("factory"));
  //    a.setTradeBank(request.getParameter("tradeBank"));
  //    a.setAccountNo(request.getParameter("accountNo"));
  //
  //    String businessNumber = customerService.update(c, a);
  //
  //    return "redirect:detail?businessNumber=" + businessNumber;
  //  }

  @GetMapping("list")
  public void list(Model model) throws Exception {
    List<Nation> nations = nationService.list();
    model.addAttribute("nations", nations);
  }
}






