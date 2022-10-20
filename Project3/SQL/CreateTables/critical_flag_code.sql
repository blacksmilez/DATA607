create table if not exists tbl_critical_flag_code (
--    critical_flag_code   int         not null,
    critical_flag_code   varchar(1)  not null,
    critical_flag        varchar(15) not null,
    primary key(critical_flag_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
