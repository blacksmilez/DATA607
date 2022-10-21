create table if not exists tbl_action_code (
    action_code    varchar(2)   not null,
    `action`       varchar(150) not null,
    primary key(action_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
