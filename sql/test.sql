-- 기본 테이블 생성
create table CUSTOM (
    BUSI_NUM char(20) primary key not null,
    CUSTOM char(20) not null,
    SHORT char(20),
    CEO char(10),
    CHARGE_PERSON char(10),
    BUSI_CONDITION char(10),
    ITEM char(10),
    POST_NUM char(10),
    ADDR1 varchar(80),
    ADDR2 varchar(80),
    TEL char(10),
    FAX char(10),
    HOMEPAGE char(20),
    CO_YN char(1),
    FOREIGN_YN char(1),
    TAX_YN char(1),
    COUNTRY_ENG char(20),
    COUNTRY_KOR char(20),
    SPECIAL_RELATION char(1),
    TRADE_STOP char(1),
    CONTRACT_PERIOD_S date,
    CONTRACT_PERIOD_E date,
    REGI_INFO_MAN char(10),
    REGI_INFO_DATE date,
    MODI_INFO_MAN char(10),
    MODI_INFO_DATE date
);

create table ACCOUNT (
    BUSI_NUM char(20) primary key not null,
    FACTORY char(20),
    TRADE_BANK char(20),
    ACCOUNT_NUM char(20)
);

-- 테스트 query
insert into custom(BUSI_NUM,CUSTOM,SHORT,CEO,CHARGE_PERSON,BUSI_CONDITION,ITEM, POST_NUM,
      ADDR1,ADDR2,TEL,FAX,HOMEPAGE,CO_YN,FOREIGN_YN,TAX_YN,COUNTRY_ENG,COUNTRY_KOR,
      SPECIAL_RELATION,TRADE_STOP,CONTRACT_PERIOD_S,CONTRACT_PERIOD_E,REGI_INFO_MAN,REGI_INFO_DATE,
      MODI_INFO_MAN,MODI_INFO_DATE)
    values(1,2,3,4,5,6,7,8,9,10,11,12,13,4,5,6,17,18,9,0,
      "2022-06-02","2022-06-03",21,"2022-06-04",22,"2022-06-05");