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