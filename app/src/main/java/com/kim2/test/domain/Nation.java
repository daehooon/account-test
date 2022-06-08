package com.kim2.test.domain;

public class Nation {
  private int nationNo;
  private String nationS;
  private String nation;

  @Override
  public String toString() {
    return "Nation [nationNo=" + nationNo + ", nationS=" + nationS + ", nation=" + nation + "]";
  }

  public int getNationNo() {
    return nationNo;
  }
  public void setNationNo(int nationNo) {
    this.nationNo = nationNo;
  }
  public String getNationS() {
    return nationS;
  }
  public void setNationS(String nationS) {
    this.nationS = nationS;
  }
  public String getNation() {
    return nation;
  }
  public void setNation(String nation) {
    this.nation = nation;
  }  
}
