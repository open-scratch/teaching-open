alter table sys_role
    add role_level int default 0 not null comment '角色等级';
update sys_role set role_level=99 where role_code='admin' or role_code='dev';
alter table sys_depart
    modify parent_id varchar(32) default '' not null comment '父机构ID';
update sys_permission set component='system/DepartList' where component = 'system/DepartDetailList';
delete from sys_permission_data_rule where rule_name = '本部门和子部门';

alter table teaching_course_unit
    add show_course_video tinyint default 1 null comment '对学生显示课程视频' after course_video_source;

alter table teaching_course_unit
    add show_course_case tinyint default 1 null comment '对学生显示课程案例' after course_case;

alter table teaching_course_unit
    add show_course_ppt tinyint default 0 null comment '对学生显示课程资料' after course_ppt;

alter table teaching_course_unit
    add show_course_plan tinyint default 0 null comment '对学生显示教案' after course_plan;

alter table teaching_work
    add work_scene varchar(20) null comment '来源场景';
update teaching_work set work_scene = 'course' where course_id != '';
update teaching_work set work_scene = 'additional' where additional_id != '';
update teaching_work set work_scene = 'create' where (additional_id = '' or additional_id is null) and (course_id = '' or course_id is null);