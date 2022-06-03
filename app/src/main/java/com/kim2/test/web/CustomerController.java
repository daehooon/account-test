package com.kim2.test.web;

import java.text.SimpleDateFormat;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kim2.test.domain.Customer;
import com.kim2.test.service.CustomerService;
//asdfasdfasdf
@Controller
@RequestMapping("/customer")
public class CustomerController {

  ServletContext sc;
  CustomerService customerService;

  public CustomerController(ServletContext sc, CustomerService customerService) {
    this.sc = sc;
    this.customerService = customerService;
  }

  @GetMapping("form")
  public void form() throws Exception {}

  @PostMapping("add")
  public String add(HttpServletRequest request) throws Exception {

    Customer c = new Customer();
    SimpleDateFormat transFormat1 = new SimpleDateFormat("yyyy-MM-dd");
    SimpleDateFormat transFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    c.setBusinessNumber(request.getParameter("businessNumber"));
    c.setCustom(request.getParameter("custom"));
    c.setSshort(request.getParameter("sshort"));
    c.setCeo(request.getParameter("ceo"));
    c.setChargePerson(request.getParameter("chargePerson"));
    c.setBusinessCondition(request.getParameter("businessCondition"));
    c.setItem(request.getParameter("item"));
    c.setPostNumber(request.getParameter("postNumber"));
    c.setFirstAddress(request.getParameter("firstAddress"));
    c.setSecondAddress(request.getParameter("second"));
    c.setTel(request.getParameter("tel"));
    c.setFax(request.getParameter("fax"));
    c.setHomepage(request.getParameter("homepage"));
    c.setCorporationWhether(request.getParameter("corporationWhether"));
    c.setForeignWhether(request.getParameter("foreignWhether"));
    c.setTaxWhether(request.getParameter("taxWhether"));
    c.setCountryEnglish(request.getParameter("countryEnglish"));
    c.setCountryKorean(request.getParameter("countryKorean"));
    c.setSpecialRelation(request.getParameter("specialRelation"));
    c.setTradeStop(request.getParameter("tradeStop"));
    c.setContractStart(transFormat1.parse(request.getParameter("contractStart")));
    c.setContractEnd(transFormat1.parse(request.getParameter("contractEnd")));
    c.setRegistrationMan(request.getParameter("registrationMan"));
    c.setRegistrationDate(transFormat2.parse(request.getParameter("registrationDate")));
    c.setModificationMan(request.getParameter("modificationMan"));
    c.setModificationDate(transFormat2.parse(request.getParameter("modificationDate")));

    String businessNumber = customerService.add(c);

    return "redirect:detail?businessNumber=" + businessNumber;
  }

  @GetMapping("detail")
  public void detail(String businessNumber, Model model) throws Exception {
    System.out.println(businessNumber);
    System.out.println(customerService.get(businessNumber));
    model.addAttribute("customer", customerService.get(businessNumber));
  }

  @RequestMapping("delete")
  public String delete(String businessNumber, HttpSession session) throws Exception {
    Customer customer = customerService.get(businessNumber);
    if (customer == null) {
      throw new Exception("해당 번호의 거래처가 없습니다.");
    }

    customerService.delete(businessNumber);

    return "redirect:list";
  }

  @GetMapping("updateForm")
  public void updateForm(String businessNumber, Model model) throws Exception {
    model.addAttribute("customer", customerService.get(businessNumber));
  }

  //  @PostMapping("update")
  //  public String update(String businessNumber, Model model, HttpSession session, 
  //      HttpServletRequest request) throws Exception {
  //
  //    Customer customer = customerService.get(businessNumber);
  //    Customer c = new Customer();
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
  //    c.setSecondAddress(request.getParameter("second"));
  //    c.setTel(request.getParameter("tel"));
  //    c.setFax(request.getParameter("fax"));
  //    c.setHomepage(request.getParameter("homepage"));
  //    c.setCorporationWhether(request.getParameter("corporationWhether"));
  //    c.setForeignWhether(request.getParameter("foreignWhether"));
  //    c.setTaxWhether(request.getParameter("taxWhether"));
  //    c.setCountryEnglish(request.getParameter("countryEnglish"));
  //    c.setCountryKorean(request.getParameter("countryKorean"));
  //    c.setSpecialRelation(request.getParameter("specialRelation"));
  //    c.setTradeStop(request.getParameter("tradeStop"));
  //    c.setContractStart(Date.valueOf(request.getParameter("contractStart")));
  //    c.setContractEnd(Date.valueOf(request.getParameter("contractEnd")));
  //    c.setRegistrationMan(request.getParameter("registrationMan"));
  //    c.setRegistrationDate(Date.valueOf(request.getParameter("registrationDate")));
  //    c.setModificationMan(request.getParameter("modificationMan"));
  //    c.setModificationDate(Date.valueOf(request.getParameter("modificationDate")));
  //
  //    String businessNumbers = customerService.update(c);
  //
  //    return "redirect:detail?businessNumber=" + businessNumbers;
  //  }



  //  @GetMapping("list")
  //  public void list(Model model) throws Exception {
  //    List<Customer> customer = customerService.list();
  //    model.addAttribute("customer", customer);
  //  }
}






