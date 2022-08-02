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
    -- 안돼 이럼 REGI_INFO_DATE date,
    REGI_INFO_DATE datetime,
    MODI_INFO_MAN char(10),
    -- 안된다고... MODI_INFO_DATE date
    -- 된다는데..?
    MODI_INFO_DATE datetime
);

create table ACCOUNT (
    BUSI_NUM char(20) primary key not null,
    FACTORY char(20),
    TRADE_BANK char(20),
    ACCOUNT_NUM char(20)
);

create table NATIONS (
  NATION_NO int primary key not null AUTO_INCREMENT,
  NATION_SHORT char(3),
  NATION varchar(10)
);

insert into NATIONS (NATION_SHORT,NATION)
    values("KOR","대한민국");
insert into NATIONS (NATION_SHORT,NATION)
    values("CHN","중국");
insert into NATIONS (NATION_SHORT,NATION)
    values("JPN","일본");
insert into NATIONS (NATION_SHORT,NATION)
    values("USA","미국");
insert into NATIONS (NATION_SHORT,NATION)
    values("PHL","필리핀");
insert into NATIONS (NATION_SHORT,NATION)
    values("GBR","영국");