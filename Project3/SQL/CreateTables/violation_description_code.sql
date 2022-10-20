create table if not exists tbl_violation_description_code (
    violation_description_code   int           not null,
    violation_description        varchar(1000) not null,
    primary key(violation_description_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
