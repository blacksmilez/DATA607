create table if not exists tbl_inspection_code (
    inspection_code    varchar(2)  not null,
    inspection_type    varchar(70) not null,
    primary key(inspection_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
