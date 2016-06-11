---------------------------------------------
-- Export file for user JAMES@XE           --
-- Created by James on 10-Jun-16, 22:46:08 --
---------------------------------------------

set define off
spool charm_schema.log

prompt
prompt Creating table ENCHANT_INFO
prompt ===========================
prompt
create table JAMES.ENCHANT_INFO
(
  name      VARCHAR2(25) not null,
  abbr      VARCHAR2(3) not null,
  max_level NUMBER not null
)
tablespace CHARM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table JAMES.ENCHANT_INFO
  add constraint ENCHANT_INFO_NAME_PK primary key (NAME)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table JAMES.ENCHANT_INFO
  add constraint ENCHANT_INFO_ABBR_PK unique (ABBR)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table INVENTORY
prompt ========================
prompt
create table JAMES.INVENTORY
(
  item_id      VARCHAR2(20) not null,
  charm_stock  NUMBER default 0 not null,
  tools_stock  NUMBER default 0 not null,
  arms_stock   NUMBER default 0 not null,
  books_stock  NUMBER default 0 not null,
  market_stock NUMBER default 0 not null,
  charm_inv    NUMBER default 0 not null,
  tools_inv    NUMBER default 0 not null,
  arms_inv     NUMBER default 0 not null,
  books_inv    NUMBER default 0 not null,
  market_inv   NUMBER default 0 not null
)
tablespace CHARM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table JAMES.INVENTORY
  add constraint INV_ITEMID_PK primary key (ITEM_ID)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ITEM_PRICES
prompt ==========================
prompt
create table JAMES.ITEM_PRICES
(
  abbr  VARCHAR2(3),
  price NUMBER,
  name  VARCHAR2(20)
)
tablespace CHARM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ITEM_TREE
prompt ========================
prompt
create table JAMES.ITEM_TREE
(
  id     NUMBER not null,
  parent NUMBER,
  name   VARCHAR2(25) not null
)
tablespace CHARM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table JAMES.ITEM_TREE
  add constraint ITEM_TREE_ID_PK primary key (ID)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table PRICES
prompt =====================
prompt
create table JAMES.PRICES
(
  ench_level            NUMBER not null,
  unbreaking            NUMBER,
  efficiency            NUMBER,
  silk_touch            NUMBER,
  fortune               NUMBER,
  looting               NUMBER,
  sharpness             NUMBER,
  knockback             NUMBER,
  smite                 NUMBER,
  bane_of_arthropods    NUMBER,
  fire_aspect           NUMBER,
  protection            NUMBER,
  thorns                NUMBER,
  aqua_affinity         NUMBER,
  fire_protection       NUMBER,
  projectile_protection NUMBER,
  feather_falling       NUMBER,
  blast_protection      NUMBER,
  respiration           NUMBER,
  depth_strider         NUMBER,
  power                 NUMBER,
  punch                 NUMBER,
  flame                 NUMBER,
  infinity              NUMBER,
  luck_of_the_sea       NUMBER,
  lure                  NUMBER
)
tablespace CHARM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table JAMES.PRICES
  add constraint PRICES_PK primary key (ENCH_LEVEL)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table STOCKING_RECORDS
prompt ===============================
prompt
create table JAMES.STOCKING_RECORDS
(
  recnum    NUMBER not null,
  name      VARCHAR2(20) not null,
  item_id   VARCHAR2(20) not null,
  payment   NUMBER not null,
  date_time TIMESTAMP(6) not null
)
tablespace CHARM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column JAMES.STOCKING_RECORDS.name
  is 'Name of enchanter';
comment on column JAMES.STOCKING_RECORDS.item_id
  is 'ID of enchanted item';
comment on column JAMES.STOCKING_RECORDS.payment
  is 'Payment made for item';
alter table JAMES.STOCKING_RECORDS
  add constraint STOCK_REC_PK primary key (RECNUM)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TEMP_TBL
prompt =======================
prompt
create global temporary table JAMES.TEMP_TBL
(
  sort NUMBER,
  name VARCHAR2(15),
  abbr VARCHAR2(3)
)
on commit delete rows;

prompt
prompt Creating type OKEYVALUEREC
prompt ==========================
prompt
CREATE OR REPLACE TYPE JAMES.oKeyValueRec AS OBJECT
(key      Varchar2(4000),
val      Varchar2(4000),
Sort     number)
/

prompt
prompt Creating type OKEYVALUETBL
prompt ==========================
prompt
create or replace type james.oKeyValueTbl is table of oKeyValueRec
/

prompt
prompt Creating package ARRAY
prompt ======================
prompt
create or replace package james.Array is

  type split_tbl is table of varchar2(32767);
  type tRefCur is ref cursor;
   
  /********************************************
  Splits a non-delimited string into an array
  ********************************************/
  function splitString (p_list varchar2) return split_tbl pipelined;
  
  /********************************************
  Splits a delimited string into an array
  ********************************************/
  function split
      (p_list varchar2,
       p_del varchar2 := ','
      ) 
  return split_tbl pipelined;
  
  function split_numeric
      (p_list varchar2,
       p_del varchar2 := ','
      ) 
  return split_tbl pipelined  ;

  /*******************************************
  GetArrayItem Function - Returns specific item from array list.  Zero based index
         usage GetArrayItem('val1,val2' , ',' , 1) returns val 2 
  *******************************************/
  function GetArrayItem (p_list      varchar2,
                         p_del       varchar2 := ',',
                         p_itemIndex pls_integer)
  return varchar2 ;

  function GetArrayItemByKey
                        (p_list varchar2,
                         p_del  varchar2 := ',',
                         p_key  varchar2)
  return varchar2;

  /***************************************
  Joins a column of table data into a delimited string
  ****************************************/
  function join
      (p_cursor tRefCur,
       p_del varchar2 := ',') 
  return varchar2;
  
  function getDecimal(pNumber varchar2) return varchar2;
  
  FUNCTION rowtocol( p_slct IN VARCHAR2,
                       p_dlmtr IN VARCHAR2 DEFAULT ',' ) RETURN VARCHAR2 ;


  Function GetKeyValueList_Fnc (pKey in varchar2, pValue in varchar2) return oKeyValueTbl;

end Array;
/

prompt
prompt Creating package CHARM_PKG
prompt ==========================
prompt
create or replace package james.charm_pkg is
  procedure buy_stock_prc(p_username in varchar2, p_items in varchar2);
  function price_fnc(p_itemid in varchar2) return number;
  function item_possible_fnc(p_itemid in varchar2) return boolean;
  function item_id_check_fnc(p_itemid in varchar2) return varchar2;
end charm_pkg;
/

prompt
prompt Creating type OKEYVALREC
prompt ========================
prompt
CREATE OR REPLACE TYPE JAMES.oKeyValRec AS OBJECT
(key  number,
 val  Varchar2(4000))
/

prompt
prompt Creating type OKEYVALTBL
prompt ========================
prompt
CREATE OR REPLACE TYPE JAMES.oKeyValTbl IS TABLE OF oKeyValRec;
/

prompt
prompt Creating type OVARCHARREC
prompt =========================
prompt
create or replace type james.oVarcharRec as object
(
col varchar2(30)
)
/

prompt
prompt Creating type OVARCHARTBL
prompt =========================
prompt
create or replace type james.oVarcharTbl is table of oVarcharRec
/


spool off
