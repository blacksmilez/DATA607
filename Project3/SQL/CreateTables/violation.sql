create table if not exists tbl_violation (
    camis                         varchar(8) not null,
    inspection_date               date           null,
    violation_code                varchar(3) not null,
    violation_description_code    varchar(3) not null,
    critical_flag_code            varchar(1) not null,
    foreign key(camis, inspection_date) references tbl_inspection_result(camis, inspection_date),
    foreign key(violation_code) references tbl_violation_code(violation_code),
    foreign key(violation_description_code) references tbl_violation_description_code(violation_description_code),
    foreign key(critical_flag_code) references tbl_critical_flag_code(critical_flag_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
