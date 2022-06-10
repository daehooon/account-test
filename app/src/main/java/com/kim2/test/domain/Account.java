package com.kim2.test.domain;

public class Account {
  private String businessNo;
  private String factory;
  private String tradeBank;
  private String accountNo;

  @Override
  public String toString() {
    return "Account [businessNo=" + businessNo + ", factory=" + factory + ", tradeBank=" + tradeBank
        + ", accountNo=" + accountNo + "]";
  }

  public String getBusinessNo() {
    return businessNo;
  }

  public void setBusinessNo(String businessNo) {
    this.businessNo = businessNo;
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
