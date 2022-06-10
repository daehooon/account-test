package com.kim2.test.domain;

public class Account {
  private String businessNumber;
  private String factory;
  private String tradeBank;
  private String accountNo;

  @Override
  public String toString() {
    return "Account [businessNumber=" + businessNumber + ", factory=" + factory + ", tradeBank="
        + tradeBank + ", accountNo=" + accountNo + "]";
  }

  public String getBusinessNumber() {
    return businessNumber;
  }

  public void setBusinessNumber(String businessNumber) {
    this.businessNumber = businessNumber;
  }

  public String getFactory() {
    return factory;
  }

  public void setFactory(String factory) {
    this.factory = factory;
  }

  public String getTradeBank() {
    return tradeBank;
  }

  public void setTradeBank(String tradeBank) {
    this.tradeBank = tradeBank;
  }

  public String getAccountNo() {
    return accountNo;
  }

  public void setAccountNo(String accountNo) {
    this.accountNo = accountNo;
  }
}
