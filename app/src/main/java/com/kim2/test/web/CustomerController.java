package com.kim2.test.web;

import java.sql.Date;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kim2.test.domain.Customer;
import com.kim2.test.service.CustomerService;

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
  public String add(HttpSession session, HttpServletRequest request) throws Exception {

    Customer c = new Customer();

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
    c.setTradeShop(request.getParameter("tradeShop"));
    c.setContractStart(Date.valueOf(request.getParameter("contractStart")));
    c.setContractEnd(Date.valueOf(request.getParameter("contractEnd")));
    c.setRegistrationMan(request.getParameter("registrationMan"));
    c.setRegistrationDate(Date.valueOf(request.getParameter("registrationDate")));
    c.setModificationMan(request.getParameter("modificationMan"));
    c.setModificationDate(Date.valueOf(request.getParameter("modificationDate")));

    String businessNumber = customerService.add(c);

    return "redirect:detail?no=" + businessNumber;
  }






  /*
  @RequestMapping("delete")
  public String delete(int no, HttpSession session) throws Exception {
    Customer learning = learningService.get(no);
    if (learning == null) {
      throw new Exception("해당 번호의 체험학습이 없습니다.");
    }

    Member loginUser = (Member) session.getAttribute("loginUser");
    if (learning.getOwner().getNo() != loginUser.getNo()) {
      throw new Exception("삭제 권한이 없습니다!");
    }

    learningService.delete(no);

    return "redirect:list";
  }

  @GetMapping("detail")
  public void detail(int no, Model model) throws Exception {
    System.out.println(no);
    System.out.println(learningService.get(no));
    model.addAttribute("learning", learningService.get(no));
  }

  @GetMapping("list")
  public void list(Model model) throws Exception {
    List<Member> members = memberService.list(null);
    List<Customer> learnings = learningService.list();
    model.addAttribute("learnings", learnings);
    model.addAttribute("members", members);
  }

  @GetMapping("updateForm")
  public void updateForm(int no, Model model) throws Exception {
    model.addAttribute("learning", learningService.get(no));
  }

  @PostMapping("update")
  public String update(int no, Model model, Part coverImage,
      HttpSession session, HttpServletRequest request) throws Exception {

    Customer learning = learningService.get(no);
    String uploadDir = sc.getRealPath("/upload");

    ServiceInfo s = new ServiceInfo();
    Customer l = new Customer();

    Member loginUser = (Member) session.getAttribute("loginUser");
    if (learning.getOwner().getNo() != loginUser.getNo()) {
      throw new Exception("변경 권한이 없습니다!");
    }

    s.setNo(no);
    s.setName(request.getParameter("name"));
    s.setBroadCategoryNo(Integer.parseInt(request.getParameter("broadCategoryNo")));
    s.setNarrowCategoryNo(Integer.parseInt(request.getParameter("narrowCategoryNo")));

    l.setZipcode(request.getParameter("zipcode"));
    l.setAddress(request.getParameter("address"));
    l.setSidoNo(Integer.parseInt(request.getParameter("sidoNo")));
    l.setSigunguNo(Integer.parseInt(request.getParameter("sigunguNo")));

    l.setDetailAddress(request.getParameter("detailAddress"));
    s.setIntro(request.getParameter("intro"));
    l.setProgressOrder(request.getParameter("progressOrder"));
    l.setRefundInformation(request.getParameter("refundInformation"));
    l.setMinPeople(Integer.parseInt(request.getParameter("minPeople")));
    l.setMaxPeople(Integer.parseInt(request.getParameter("maxPeople")));

    List<LearningSchedule> schedules = new ArrayList<>();
    LearningSchedule schedule = new LearningSchedule();
    schedule.setLearningDate(Date.valueOf(request.getParameter("learningDate")));
    schedule.setStartTime(Time.valueOf(request.getParameter("startTime")));
    schedule.setEndTime(Time.valueOf(request.getParameter("endTime")));
    schedules.add(schedule);
    l.setSchedules(schedules);

    l.setPrice(Integer.parseInt(request.getParameter("price")));

    if (coverImage.getSize() > 0) {
      String filename = UUID.randomUUID().toString();
      coverImage.write(uploadDir + "/" + filename);
      s.setCoverImage(filename);

      Thumbnails.of(uploadDir + "/" + filename)
      .size(240, 160)
      .outputFormat("jpg")
      .crop(Positions.CENTER)
      .toFiles(new Rename() {
        @Override
        public String apply(String name, ThumbnailParameter param) {
          return name + "_240x160";
        }
      });

      Thumbnails.of(uploadDir + "/" + filename)
      .size(800, 450)
      .outputFormat("jpg")
      .crop(Positions.CENTER)
      .toFiles(new Rename() {
        @Override
        public String apply(String name, ThumbnailParameter param) {
          return name + "_800x450";
        }
      });
    }

    int learningNo = learningService.update(s, l);

    return "redirect:detail?no=" + learningNo;
  }

  @PostMapping("applAdd")
  public String applAdd(HttpSession session, HttpServletRequest request) throws Exception {
    LearningApplication appl = new LearningApplication();

    Member loginUser = (Member) session.getAttribute("loginUser");
    Member member = new Member();
    member.setNo(loginUser.getNo());
    appl.setWriter(member);

    appl.setScheduleNo(Integer.parseInt(request.getParameter("scheNo")));
    //    int learningNo = Integer.parseInt(request.getParameter("lno"));
    appl.setApplySize(Integer.parseInt(request.getParameter("applySize")));

    learningApplicationService.add(appl);

    return "redirect:../learningApplication/list";
  }
   */
}






