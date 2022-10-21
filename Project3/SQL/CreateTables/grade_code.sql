create table if not exists tbl_grade_code (
    grade_code    varchar(1) not null,
    grade         varchar(100) not null,
    primary key(grade_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
