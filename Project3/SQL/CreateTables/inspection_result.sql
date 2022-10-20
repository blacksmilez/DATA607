create table tbl_inspection_result (
camis              varchar(8) not null,
  inspection_date    date not null,
action_code        int unsigned default null,
score              int null,
grade_code         varchar(1) null,
grade_date         date not null,
record_date        date not null,
cuisine_code       int not null,
primary key(camis, inspection_date),
  foreign key(camis) references tbl_dba(camis),
  foreign key(action_code) references tbl_action_code(action_code),
  foreign key(grade_code) references tbl_grade_code(grade_code),
  foreign key(cuisine_code) references tbl_cuisine_code(cuisine_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
