create table if not exists tbl_boro (
    boro_code   varchar(1)   not null,
    boro_name   varchar(20)  not null,
    primary key(boro_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
