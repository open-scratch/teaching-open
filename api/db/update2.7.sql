alter table sys_role
    add role_level int default 0 not null comment '角色等级';
alter table sys_depart
    modify parent_id varchar(32) default '' not null comment '父机构ID';
update sys_permission set component='system/DepartList' where component = 'system/DepartDetailList'