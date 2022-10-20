create table tbl_action_code (
    action_code    int unsigned not null,
    `action`       varchar(150) not null,
    primary key(action_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
