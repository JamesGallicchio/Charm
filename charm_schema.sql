create database if not exists CHARM;

create table if not exists CHARM.ENCHANT_INFO
(
  name      VARCHAR(25) not NULL,
  abbr      VARCHAR(3) not null,
  max_level INT not null,
  primary key (name),
  unique (abbr)
);


create table if not exists CHARM.INVENTORY
(
  item_id      VARCHAR(20) not null,
  charm_stock  INT default 0 not null,
  tools_stock  INT default 0 not null,
  arms_stock   INT default 0 not null,
  books_stock  INT default 0 not null,
  market_stock INT default 0 not null,
  charm_inv    INT default 0 not null,
  tools_inv    INT default 0 not null,
  arms_inv     INT default 0 not null,
  books_inv    INT default 0 not null,
  market_inv   INT default 0 not null,
  primary key (item_id)
);


create table if not exists CHARM.ITEM_PRICES
(
  abbr  VARCHAR(3),
  price FLOAT,
  name  VARCHAR(20),
  primary key (abbr)
);


create table if not exists CHARM.ITEM_TREE
(
  id     INT not null,
  parent INT,
  abbr   VARCHAR(3) not null,
  primary key (id)
);



create table if not exists CHARM.PRICES
(
  abbr   VARCHAR(3) not null,
  price  FLOAT not null,
  primary key (abbr)
);


create table if not exists CHARM.STOCKING_RECORDS
(
  recnum    INT not null auto_increment,
  name      VARCHAR(30) not null, -- Name of enchanter
  item_id   VARCHAR(30) not null, -- ID of enchanted item
  payment   FLOAT not null,       -- Payment made for item
  date_time TIMESTAMP not null default current_timestamp,
  primary key (recnum)
);




