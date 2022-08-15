package com.kim2.test.domain;

public class Nation {
  private int nationNo;
  private String nationShort;
  private String nation;

  @Override
  public String toString() {
    return "Nation [nationNo=" + nationNo + ", nationShort=" + nationShort + ", nation=" + nation
        + "]";
  }

  public int getNationNo() {
    return nationNo;
  }
  public void setNationNo(int nationNo) {
    this.nationNo = nationNo;
  }
  public String getNationShort() {
    return nationShort;
  }
  public void setNationShort(String nationShort) {
    this.nationShort = nationShort;
  }
  public String getNation() {
    return nation;
  }
  public void setNation(String nation) {
    this.nation = nation;
  }
}
