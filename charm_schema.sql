

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
  name  VARCHAR(20)
);


create table if not exists CHARM.ITEM_TREE
(
  id     INT not null,
  parent INT,
  name   VARCHAR(25) not null,
  primary key (id)
);



create table if not exists CHARM.PRICES
(
  ench_level            INT not null,
  unbreaking            INT,
  efficiency            INT,
  silk_touch            INT,
  fortune               INT,
  looting               INT,
  sharpness             INT,
  knockback             INT,
  smite                 INT,
  bane_of_arthropods    INT,
  fire_aspect           INT,
  protection            INT,
  thorns                INT,
  aqua_affinity         INT,
  fire_protection       INT,
  projectile_protection INT,
  feather_falling       INT,
  blast_protection      INT,
  respiration           INT,
  depth_strider         INT,
  power                INT,
  punch                 INT,
  flame                 INT,
  infinity              INT,
  luck_of_the_sea       INT,
  lure                  INT,
  primary key (ench_level)
);


create table if not exists CHARM.STOCKING_RECORDS
(
  recnum    INT not null,
  name      VARCHAR(20) not null, -- Name of enchanter
  item_id   VARCHAR(20) not null, -- ID of enchanted item
  payment   FLOAT not null,       -- Payment made for item
  date_time TIMESTAMP not null,
  primary key (recnum)
);




