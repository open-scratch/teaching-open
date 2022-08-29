alter table sys_role
    add role_level int default 0 not null comment '角色等级';
update sys_role set role_level=99 where role_code='admin' or role_code='dev';
alter table sys_depart
    modify parent_id varchar(32) default '' not null comment '父机构ID';
update sys_permission set component='system/DepartList' where component = 'system/DepartDetailList';
delete from sys_permission_data_rule where rule_name = '本部门和子部门';