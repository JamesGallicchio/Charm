---------------------------------------------
-- Export file for user JAMES@XE           --
-- Created by James on 11-Jun-16, 16:18:48 --
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
  name VARCHAR2(25),
  abbr VARCHAR2(3)
)
on commit delete rows;

prompt
prompt Creating sequence STOCK_REC_SEQ
prompt ===============================
prompt
create sequence JAMES.STOCK_REC_SEQ
minvalue 1
maxvalue 9999999999999999
start with 42
increment by 1
cache 20;

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
  function return_errors_fnc(p_input in number) return varchar2;
  function try_to_number_fnc(p_input in varchar2) return boolean;
  procedure buy_stock_prc(p_username in varchar2, p_items in varchar2);
  function price_fnc(p_itemid in varchar2) return number;
--  function item_possible_fnc(p_itemid in varchar2) return boolean;
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

prompt
prompt Creating package body ARRAY
prompt ===========================
prompt
create or replace package body james.Array is


    /********************************************
    SplitString returns a non-delimited string into an array
         usage: Select * from table(array.split('1234'));
    ********************************************/
    function splitString
        (p_list varchar2) 
    return split_tbl pipelined
    is
        l_idx    pls_integer;
        l_list   varchar2(32767) := p_list;
    begin
        loop
            l_idx := length(l_list);
            if l_idx > 0 then
                pipe row(substr(l_list,1,1));
                l_list := substr(l_list,2);
    
            else
                exit;
            end if;
        end loop;
        return;
    end splitString;

    /********************************************
    Splits a delimited string into an array
         usage: Select * from table(array.split('1,2,3,4'));
    ********************************************/
    function split
        (p_list varchar2,
         p_del varchar2 := ','
        ) 
    return split_tbl pipelined
    is
        l_idx    pls_integer;
        l_list   varchar2(32767) := p_list;
    begin
        loop
            l_idx := instr(l_list,p_del);
            if l_idx > 0 then
                pipe row(substr(l_list,1,l_idx-1));
                l_list := substr(l_list,l_idx+length(p_del));
    
            else
                pipe row(l_list);
                exit;
            end if;
        end loop;
        return;
    end split;

    /********************************************
    Splits a delimited string into an array
         usage: Select * from table(array.split('1,2,3,4'));
    ********************************************/
    function split_numeric
        (p_list varchar2,
         p_del varchar2 := ','
        ) 
    return split_tbl pipelined
    is
        l_idx    pls_integer;
        l_list   varchar2(32767) := REGEXP_REPLACE(p_list, '[^0-9,]',null) ;
    begin
        loop
            l_idx := instr(l_list,p_del);
            if l_idx > 0 then
                pipe row(substr(l_list,1,l_idx-1));
                l_list := substr(l_list,l_idx+length(p_del));
    
            else
                pipe row(l_list);
                exit;
            end if;
        end loop;
        return;
    end split_numeric;
    
    /*******************************************
    GetArrayItem Function - Returns specific item from array list.  Zero based index
           usage GetArrayItem('val1,val2' , ',' , 1) returns val 2 
    *******************************************/
    function GetArrayItem (p_list      varchar2,
                           p_del       varchar2 := ',',
                           p_itemIndex pls_integer)
    return varchar2 
    is
      loopIndex pls_integer := 0;
    Begin
         for c in (select * from table(array.split(p_list,p_del))) loop
             if loopIndex = p_itemIndex then
                return c.column_value;
             end if;
             loopIndex := loopIndex + 1;
         end loop;
         
         return null;
    End GetArrayItem;
    
    /*******************************************
    GetArrayItem Function - Returns specific item from array list.  Zero based index
           usage GetArrayItem('val1,val2' , ',' , 1) returns val 2 
    *******************************************/
    function GetArrayItemByKey
                          (p_list varchar2,
                           p_del  varchar2 := ',',
                           p_key  varchar2)
    return varchar2 
    is
      vKey varchar2(4000);
      vValue varchar2(4000);
    Begin
         for c in (select * from table(array.split(p_list,p_del))) loop
             vKey := array.GetArrayItem(c.column_value,'=',0);
             vValue := array.GetArrayItem(c.column_value,'=',1);
             
             if vKey = p_key then
                return vValue;
             end if;
         end loop;
         
         return null;
    End GetArrayItemByKey;

    /***************************************
    Joins a column of table data into a delimited string

       Ussage 
       select array.join(cursor(select 
                              columns
                          from 
                             table
                          where  
                              where clause)) from dual
    ****************************************/
    function join
        (p_cursor tRefCur,
         p_del varchar2 := ',') 
    return varchar2
    is
        l_value   varchar2(32767);
        l_result  varchar2(32767);
    begin
        loop
            fetch p_cursor into l_value;
            exit when p_cursor%notfound;
            if l_result is not null then
                l_result := l_result || p_del;
            end if;
            l_result := l_result || l_value;
        end loop;
        return l_result;
    end join;
    
    function getDecimal(pNumber varchar2) 
    return varchar2
    as
    begin
        return (substr(pNumber,instr(pNumber,'.')+1));
    end getDecimal;
    
    /*=========================================================================================
       Function GetKeyValueList 
    ===========================================================================================*/
    Function GetKeyValueList_Fnc (pKey in varchar2, pValue in varchar2) return oKeyValueTbl
    is 
       l_key           VARCHAR2(32767) := pKey   || ',';
       l_value         VARCHAR2(32767) := pValue || ',';
       l_comma_index   PLS_INTEGER;
       l_comma_index2  PLS_INTEGER;
       l_index         PLS_INTEGER := 1;
       l_index2        PLS_INTEGER := 1;
       retval          oKeyValueTbl := oKeyValueTbl();
       vKey            varchar2(4000);
       vValue          varchar2(4000);
    begin
        loop
            l_comma_index := INSTR(l_key, ',', l_index);
            l_comma_index2 := INSTR(l_value, ',', l_index2);
            
            EXIT WHEN l_comma_index = 0;
            vKey   := SUBSTR(l_key, l_index, l_comma_index - l_index);
            vValue := SUBSTR(l_value, l_index2, l_comma_index2 - l_index2);
            
            retval.extend;
            retval(retval.last) := oKeyValueRec(key => vKey ,val => vValue,sort => retval.count);
            
            l_index := l_comma_index + 1;
            l_index2 := l_comma_index2 + 1;
        end loop;
       
       return retval;
   end GetKeyValueList_Fnc;

  /*=========================================================================================
       Use to convert a row to columns
    ===========================================================================================*/
    FUNCTION rowtocol( p_slct IN VARCHAR2,
                       p_dlmtr IN VARCHAR2 DEFAULT ',' ) RETURN VARCHAR2 

     
     AS

     /*
      1) Column should be character type.
      2) If it is non-character type, column has to be converted into character type. 
      3) If the returned rows should in a specified order, put that ORDER BY CLASS in the SELECT statement argument.
      4) If the SQL statement happened to return duplicate values, and if you don't want that to happen, put DISTINCT in the SELECT statement argument.
     */
       TYPE c_refcur IS REF CURSOR;
       lc_str VARCHAR2(4000);
       lc_colval VARCHAR2(4000);
       c_dummy c_refcur;
--       l number;
     BEGIN

         OPEN c_dummy FOR p_slct;
         LOOP
           FETCH c_dummy INTO lc_colval;
           EXIT WHEN c_dummy%NOTFOUND;
           lc_str := lc_str || p_dlmtr || lc_colval;
         END LOOP;
    
         CLOSE c_dummy;
         RETURN SUBSTR(lc_str,2);

     EXCEPTION 
    
         WHEN OTHERS THEN
           lc_str := SQLERRM;
           IF c_dummy%ISOPEN THEN
              CLOSE c_dummy;
           END IF;
   
         RETURN lc_str;
     END;



    
    
end Array;
/

prompt
prompt Creating package body CHARM_PKG
prompt ===============================
prompt
create or replace package body james.charm_pkg is
  
  /* Error Codes!
     Returns the string for an error code provided, or null if input
     is not an error code. */
     
  function return_errors_fnc(p_input in number) return varchar2 is
    
  begin
    case p_input
      when -1 then return 'Item path not possible in item_tree';
      when -2 then return 'Item ID contains incorrect abbreviations';
      when -3 then return 'An enchantment''s level was higher than the max level';
      else return null;
    end case;
  end return_errors_fnc;
  
  /* try_to_number_fnc(string)
  
     Tries to cast a string to a number, returning boolean of if succeeds.
     Used for error handling. */
     
   function try_to_number_fnc(p_input in varchar2) return boolean is
     var number;
   begin
     var := to_number(p_input);
     return true;
   exception
     when VALUE_ERROR then return false;
   end try_to_number_fnc;

  /* buy_stock_prc(user, items)
  
     Inputs the username of enchanter and a string of space-deliminated
     item IDs. Item IDs can also have numbers in front of them to
     indicated that number of identical items, up to 99. If you have
     100 items to add at once please just dont. */
  procedure buy_stock_prc(p_username in varchar2, p_items in varchar2) is 
    count_chars number;
    item_count number;
    item varchar2(20);
    tbl oVarcharTbl := oVarcharTbl();
    item_price number;
    payment number := 0;
    payment_constant number := 0.8;
    message varchar2(100);
  begin
    for c in (select column_value from table(array.split (p_items, ' ')))
    loop
        count_chars := mod(length (c.column_value), 3);
        if count_chars = 0 then
          item_count := 1;
        else
          item_count := to_number(substr(c.column_value, 0, count_chars));
        end if;
        item := item_id_check_fnc(substr(c.column_value, -(length (c.column_value) - count_chars)));
        if try_to_number_fnc(item) then
          dbms_output.put_line(return_errors_fnc(to_number(item)));
          return;
        end if;
        for i in 1..item_count
            loop
              tbl.extend;
              tbl(tbl.last) := oVarcharRec(col => item);
            end loop;
    end loop;

    for c in (select col from table(tbl))
      loop
        item_price := price_fnc(c.col);
        if item_price < 0 then
          dbms_output.put_line(return_errors_fnc(item));
          return;
        end if;
        payment := payment + payment_constant * item_price;
        insert into stocking_records (name, item_id, payment) values (p_username, c.col, payment_constant * item_price);
        
        update inventory i
          set i.charm_stock = i.charm_stock + 1
          where i.item_id = c.col;
        if sql%rowcount = 0 then
          insert into inventory (item_id, charm_stock) values (c.col, 1);
        end if;
        
      end loop;
      
      select count(*) into message from table(tbl);
      
      message := 'Payment for ' || message || ' items!';
      
      dbms_output.put_line('/mail payment to:' || p_username || ' message:' || message || ' amount:' || payment);
      
      commit;
      
  end buy_stock_prc;

  /* price_fnc(itemID)
  
     Returns the price of the item provided, or an error code. */

  function price_fnc(p_itemid in varchar2) return number is
    itemid varchar2(25) := upper(p_itemid);
    item_check varchar2(30);
    tbl oKeyValTbl := oKeyValTbl();
    total_price number;
    item_type varchar2(20);
    ench_abbr varchar2(3);
    e_level number;
    max_level number;
    ench_name varchar2(30);
    ench_price number;
    fetch_str varchar2(200);
  begin
    
    item_check := item_id_check_fnc(itemid);
    if try_to_number_fnc(item_check) then
      if item_check = -1 then
        return -1;
      elsif item_check = -2 then
        return -2;
      end if;
    end if;
    itemid := item_check;
    for i in 1..(length(itemid)/3)
      loop
        tbl.extend;
        tbl(tbl.last) := oKeyValRec(key => i, 
                                    val => substr(itemid, 3*(i-1)+1, 3));
      end loop;
    
    select val into item_type from table(tbl) where key = 1;
    select price into total_price from item_prices where abbr = item_type;
    
    for i in 2..tbl.count
      loop
        select val into ench_abbr from table(tbl) where key = i;
        e_level := to_number(substr(ench_abbr, 3, 1));
        ench_abbr := substr(ench_abbr, 1, 2);
        
        select name into ench_name from enchant_info where abbr = ench_abbr;
        select max_level into max_level from enchant_info where name = ench_name;
        if e_level > max_level then
          return -3;
        end if;
        
        fetch_str := 'select ' || ench_name || ' from prices where ench_level = :b';
        execute immediate fetch_str into ench_price using e_level;
        
        total_price := total_price + ench_price;

      end loop;
    
    return total_price;

  end price_fnc;
  
/*  Commented out because not needed, but still here because might
    eventually be needed if something doesn't work with revised version...

    function item_possible_fnc(p_itemid in varchar2) return boolean is
    itemid varchar2(30) := upper(p_itemid);
    full_name varchar2(30);
    item_type varchar2(15);
    current_id number;
    parent_id number;
    ench_name varchar2(15);
    total_recs number;
    found_recs number;
  begin
    for i in 1..(length(itemid)/3)
      loop
        if i = 1 then
          select name into item_type from item_prices where abbr = substr(itemid, 1, 3);
        else
          select name into full_name from enchant_info where abbr = substr(itemid, 3*(i-1)+1, 2);
          insert into temp_tbl (sort, name) values (0, full_name);
        end if;
      end loop;
      
    select count(*) into total_recs from temp_tbl;
    
    for c in (select * from item_tree where exists(select 1 from temp_tbl where name = item_tree.name))
      loop
        current_id := c.id;
        parent_id := c.parent;
        
        while parent_id != 0
          loop
            select name into ench_name from item_tree where id = current_id;
            update temp_tbl t set t.sort = 1 where t.name = ench_name;
            select id, parent into current_id, parent_id from item_tree where id = parent_id;
          end loop;
        
        select count(*) into found_recs from temp_tbl where sort = 1;
        select name into ench_name from item_tree where id = current_id;
        
        if  found_recs = total_recs and ench_name = item_type then
          commit;
          return true;
        end if;
        
        update temp_tbl t set t.sort = 0;
          
      end loop;
      
    commit;
      
    return false;
    
  end item_possible_fnc; */
      
  /* item_id_check_fnc(itemID)
     
     Awesome lil function! Returns an item ID or an error code.
     
     The item ID is checked to see if the specific item is possible,
     based on item_tree. If not possible, returns an error code
     corresponding to why it is not possible.
     
     If it IS possible, it returns the same item ID, but with the
     enchants in order as they are from root to node in item_tree.
     This helps to keep all item IDs inputted to the database identical
     so that PICUN3EF4 is the same as PICEF4UN3. #IdiotProofing */
  
  function item_id_check_fnc(p_itemid in varchar2) return varchar2 is
    itemid varchar2(30) := upper(p_itemid);
    full_name varchar2(30);
    item_type varchar2(30);
    current_id number;
    parent_id number;
    ench_name varchar2(25);
    total_recs number;
    rec_count number;
    rec_zero number;
    final_itemid varchar2(30);
    next_str varchar2(3);
  begin
    for i in 1..(length(itemid)/3)
      loop
        if i = 1 then
          select name into item_type from item_prices where abbr = substr(itemid, 1, 3);
        else
          select name into full_name from enchant_info where abbr = substr(itemid, 3*(i-1)+1, 2);
          insert into temp_tbl (sort, name, abbr) values (0, full_name, substr(itemid, 3*(i-1)+1, 3));
         end if;
      end loop;
      
    select count(*) into total_recs from temp_tbl;
    
    for c in (select * from item_tree where exists(select 1 from temp_tbl where name = item_tree.name))
      loop
        rec_count := total_recs;
        current_id := c.id;
        parent_id := c.parent;
        
        while current_id != 0
          loop
            select name into ench_name from item_tree where id = current_id;
            update temp_tbl t set t.sort = rec_count where t.name = ench_name;
            if sql%rowcount != 0 then
              rec_count := rec_count - 1;
            end if;
            select id, parent into current_id, parent_id from item_tree where id = parent_id;
          end loop;
        
        select count(*) into rec_zero from temp_tbl where sort = 1;
        
        if rec_zero = 1 and ench_name = item_type then
          select abbr into final_itemid from item_prices where name = item_type;
          rec_count := 1;
          while rec_count <= total_recs
            loop
              select abbr into next_str from temp_tbl where sort = rec_count;
              final_itemid := final_itemid || next_str;
              rec_count := rec_count + 1;
            end loop;
          commit;
          return final_itemid;
        end if;
        
        update temp_tbl t set t.sort = 0;
        
      end loop;
      
      commit;
      return -1;
      
  exception
    when NO_DATA_FOUND then
      return -2;
  end item_id_check_fnc;

end charm_pkg;
/

prompt
prompt Creating type body OKEYVALUETBL
prompt ===============================
prompt
create or replace type body james.oKeyValueTbl is
  
  -- Member procedures and functions
  -- member procedure <ProcedureName>(<Parameter> <Datatype>) is
  begin
    <Statements>;
  end;
  
end;
/

prompt
prompt Creating trigger STOCK_REC_TRIG
prompt ===============================
prompt
create or replace trigger james.stock_rec_trig
  before insert
  on stocking_records 
  for each row
declare
  -- local variables here
begin
  :new.recnum := stock_rec_seq.nextval;
  :new.date_time := sysdate;
end stock_rec_trig;
/


spool off
