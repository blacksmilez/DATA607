create table if not exists tbl_cuisine_code (
    cuisine_code          varchar(3)  not null,
    cuisine_description    varchar(50) not null,
    primary key(cuisine_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
