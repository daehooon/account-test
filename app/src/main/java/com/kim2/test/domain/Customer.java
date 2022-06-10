package com.kim2.test.domain;

import java.util.Date;
import java.util.List;

public class Customer {
  private String businessNumber;
  private String custom;
  private String sshort;
  private String ceo;
  private String chargePerson;
  private String businessCondition;
  private String item;
  private String postNumber;
  private String firstAddress;
  private String secondAddress;
  private String tel;
  private String fax;
  private String homepage;
  private String corporationWhether;
  private String foreignWhether;
  private String taxWhether;
  private String countryEnglish;
  private String countryKorean;
  private String specialRelation;
  private String tradeStop;
  private Date contractStart;
  private Date contractEnd;
  private String registrationMan;
  private Date registrationDate;
  private String modificationMan;
  private Date modificationDate;
  private List<Account> accounts;

  @Override
  public String toString() {
    return "Customer [businessNumber=" + businessNumber + ", custom=" + custom + ", sshort="
        + sshort + ", ceo=" + ceo + ", chargePerson=" + chargePerson + ", businessCondition="
        + businessCondition + ", item=" + item + ", postNumber=" + postNumber + ", firstAddress="
        + firstAddress + ", secondAddress=" + secondAddress + ", tel=" + tel + ", fax=" + fax
        + ", homepage=" + homepage + ", corporationWhether=" + corporationWhether
        + ", foreignWhether=" + foreignWhether + ", taxWhether=" + taxWhether + ", countryEnglish="
        + countryEnglish + ", countryKorean=" + countryKorean + ", specialRelation="
        + specialRelation + ", tradeStop=" + tradeStop + ", contractStart=" + contractStart
        + ", contractEnd=" + contractEnd + ", registrationMan=" + registrationMan
        + ", registrationDate=" + registrationDate + ", modificationMan=" + modificationMan
        + ", modificationDate=" + modificationDate + ", accounts=" + accounts + "]";
  }

  public String getBusinessNumber() {
    return businessNumber;
  }

  public void setBusinessNumber(String businessNumber) {
    this.businessNumber = businessNumber;
  }

  public String getCustom() {
    return custom;
  }

  public void setCustom(String custom) {
    this.custom = custom;
  }

  public String getSshort() {
    return sshort;
  }

  public void setSshort(String sshort) {
    this.sshort = sshort;
  }

  public String getCeo() {
    return ceo;
  }

  public void setCeo(String ceo) {
    this.ceo = ceo;
  }

  public String getChargePerson() {
    return chargePerson;
  }

  public void setChargePerson(String chargePerson) {
    this.chargePerson = chargePerson;
  }

  public String getBusinessCondition() {
    return businessCondition;
  }

  public void setBusinessCondition(String businessCondition) {
    this.businessCondition = businessCondition;
  }

  public String getItem() {
    return item;
  }

  public void setItem(String item) {
    this.item = item;
  }

  public String getPostNumber() {
    return postNumber;
  }

  public void setPostNumber(String postNumber) {
    this.postNumber = postNumber;
  }

  public String getFirstAddress() {
    return firstAddress;
  }

  public void setFirstAddress(String firstAddress) {
    this.firstAddress = firstAddress;
  }

  public String getSecondAddress() {
    return secondAddress;
  }

  public void setSecondAddress(String secondAddress) {
    this.secondAddress = secondAddress;
  }

  public String getTel() {
    return tel;
  }

  public void setTel(String tel) {
    this.tel = tel;
  }

  public String getFax() {
    return fax;
  }

  public void setFax(String fax) {
    this.fax = fax;
  }

  public String getHomepage() {
    return homepage;
  }

  public void setHomepage(String homepage) {
    this.homepage = homepage;
  }

  public String getCorporationWhether() {
    return corporationWhether;
  }

  public void setCorporationWhether(String corporationWhether) {
    this.corporationWhether = corporationWhether;
  }

  public String getForeignWhether() {
    return foreignWhether;
  }

  public void setForeignWhether(String foreignWhether) {
    this.foreignWhether = foreignWhether;
  }

  public String getTaxWhether() {
    return taxWhether;
  }

  public void setTaxWhether(String taxWhether) {
    this.taxWhether = taxWhether;
  }

  public String getCountryEnglish() {
    return countryEnglish;
  }

  public void setCountryEnglish(String countryEnglish) {
    this.countryEnglish = countryEnglish;
  }

  public String getCountryKorean() {
    return countryKorean;
  }

  public void setCountryKorean(String countryKorean) {
    this.countryKorean = countryKorean;
  }

  public String getSpecialRelation() {
    return specialRelation;
  }

  public void setSpecialRelation(String specialRelation) {
    this.specialRelation = specialRelation;
  }

  public String getTradeStop() {
    return tradeStop;
  }

  public void setTradeStop(String tradeStop) {
    this.tradeStop = tradeStop;
  }

  public Date getContractStart() {
    return contractStart;
  }

  public void setContractStart(Date contractStart) {
    this.contractStart = contractStart;
  }

  public Date getContractEnd() {
    return contractEnd;
  }

  public void setContractEnd(Date contractEnd) {
    this.contractEnd = contractEnd;
  }

  public String getRegistrationMan() {
    return registrationMan;
  }

  public void setRegistrationMan(String registrationMan) {
    this.registrationMan = registrationMan;
  }

  public Date getRegistrationDate() {
    return registrationDate;
  }

  public void setRegistrationDate(Date registrationDate) {
    this.registrationDate = registrationDate;
  }

  public String getModificationMan() {
    return modificationMan;
  }

  public void setModificationMan(String modificationMan) {
    this.modificationMan = modificationMan;
  }

  public Date getModificationDate() {
    return modificationDate;
  }

  public void setModificationDate(Date modificationDate) {
    this.modificationDate = modificationDate;
  }

  public List<Account> getAccounts() {
    return accounts;
  }

  public void setAccounts(List<Account> accounts) {
    this.accounts = accounts;
  }
}
