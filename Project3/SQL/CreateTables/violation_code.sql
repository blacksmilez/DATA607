create table if not exists tbl_violation_code (
    violation_code     varchar(3) not null,
    violation_code_5   varchar(5) not null,
    primary key(violation_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
