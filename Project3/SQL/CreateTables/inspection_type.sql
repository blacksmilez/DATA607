create table if not exists tbl_inspection_type (
    camis              varchar(8) not null,
    inspection_date    date       not null,
    inspection_code    int        not null,
    foreign key(camis, inspection_date) references tbl_inspection_result(camis, inspection_date),
    foreign key(inspection_code) references tbl_inspection_code(inspection_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 
