create table tbl_violation (
    camis                         varchar(8) not null,
    inspection_date               date       not null,
    violation_code                int        not null,
    violation_description_code    int        not null,
    critical_flag_code            int        not null,
    foreign key(camis, inspection_date) references tbl_inspection_result(camis, inspection_date),
    foreign key(violation_code) references tbl_violation_code(violation_code),
    foreign key(violation_description_code) references tbl_violation_description_code(violation_description_code),
    foreign key(critical_flag_code) references tbl_critical_flag_code(critical_flag_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
