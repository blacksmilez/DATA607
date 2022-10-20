create table if not exists tbl_cuisine_code (
    cuisine_code          int         not null,
    cuisine_decription    varchar(50) not null,
    primary key(cuisine_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
