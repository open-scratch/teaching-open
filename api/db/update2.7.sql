-- 2023-01-15
alter table sys_role
    add role_level int default 0 not null comment '角色等级';
update sys_role set role_level=99 where role_code='admin' or role_code='dev';
alter table sys_depart
    modify parent_id varchar(32) default '' not null comment '父机构ID';
update sys_permission set component='system/DepartList' where component = 'system/DepartDetailList';
delete from sys_permission_data_rule where rule_name = '本部门和子部门';
INSERT INTO `sys_permission_data_rule`(`id`, `permission_id`, `rule_name`, `rule_column`, `rule_conditions`, `rule_value`, `status`, `create_time`, `create_by`, `update_time`, `update_by`) VALUES ('1613428265733283841', '3f915b2769fc80648e92d04e84ca059d', '仅显示学生', '', 'USE_SQL_RULES', 'sys_user.user_identity=1', '1', '2023-01-12 14:50:49', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule`(`id`, `permission_id`, `rule_name`, `rule_column`, `rule_conditions`, `rule_value`, `status`, `create_time`, `create_by`, `update_time`, `update_by`) VALUES ('1613432890075062274', '5c2f42277948043026b7a14692456828', '仅显示学生', '', 'USE_SQL_RULES', 'sys_user.user_identity=1', '1', '2023-01-12 15:09:11', 'admin', NULL, NULL);
update sys_role_permission set data_rule_ids = '1613428265733283841' where role_id='1252532323347161090' and permission_id='3f915b2769fc80648e92d04e84ca059d';
update sys_role_permission set data_rule_ids = '1613432890075062274' where role_id='1252532323347161090' and permission_id='5c2f42277948043026b7a14692456828';
INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1614181631321108481', '3f915b2769fc80648e92d04e84ca059d', '编辑', NULL, NULL, NULL, NULL, 2, 'user:edit', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2023-01-14 16:44:25', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1614181468561141762', '3f915b2769fc80648e92d04e84ca059d', '删除', NULL, NULL, NULL, NULL, 2, 'user:del', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2023-01-14 16:43:46', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1614181261056339970', '3f915b2769fc80648e92d04e84ca059d', '修改部门班级', NULL, NULL, NULL, NULL, 2, 'sys:user:depart', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2023-01-14 16:42:57', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1614181090612408322', '3f915b2769fc80648e92d04e84ca059d', '冻结解冻', NULL, NULL, NULL, NULL, 2, 'user:status', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2023-01-14 16:42:16', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1614181021255397377', '3f915b2769fc80648e92d04e84ca059d', '导出', NULL, NULL, NULL, NULL, 2, 'user:export', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2023-01-14 16:42:00', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1614180971661946881', '3f915b2769fc80648e92d04e84ca059d', '导入', NULL, NULL, NULL, NULL, 2, 'user:import', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2023-01-14 16:41:48', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1614180914560692225', '3f915b2769fc80648e92d04e84ca059d', '回收站', NULL, NULL, NULL, NULL, 2, 'user:recycle', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2023-01-14 16:41:34', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_role_permission`(`id`, `role_id`, `permission_id`, `data_rule_ids`) VALUES ('1614181352366338049', 'f6817f48af4fb3af11b9e8bf182f618b', '1614180971661946881', NULL);
INSERT INTO `sys_role_permission`(`id`, `role_id`, `permission_id`, `data_rule_ids`) VALUES ('1614181352374726657', 'f6817f48af4fb3af11b9e8bf182f618b', '1614180914560692225', NULL);
INSERT INTO `sys_role_permission`(`id`, `role_id`, `permission_id`, `data_rule_ids`) VALUES ('1614181352374726658', 'f6817f48af4fb3af11b9e8bf182f618b', '1614181021255397377', NULL);
INSERT INTO `sys_role_permission`(`id`, `role_id`, `permission_id`, `data_rule_ids`) VALUES ('1614181352383115266', 'f6817f48af4fb3af11b9e8bf182f618b', '1614181090612408322', NULL);
INSERT INTO `sys_role_permission`(`id`, `role_id`, `permission_id`, `data_rule_ids`) VALUES ('1614181352387309569', 'f6817f48af4fb3af11b9e8bf182f618b', '1614181261056339970', NULL);
INSERT INTO `sys_role_permission`(`id`, `role_id`, `permission_id`, `data_rule_ids`) VALUES ('1614181863106736130', 'f6817f48af4fb3af11b9e8bf182f618b', '1614181468561141762', NULL);
INSERT INTO `sys_role_permission`(`id`, `role_id`, `permission_id`, `data_rule_ids`) VALUES ('1614181863115124738', 'f6817f48af4fb3af11b9e8bf182f618b', '1614181631321108481', NULL);
INSERT INTO `sys_role_permission`(`id`, `role_id`, `permission_id`, `data_rule_ids`) VALUES ('1614182465463316482', '1252532323347161090', '1614181631321108481', NULL);
INSERT INTO `sys_role_permission`(`id`, `role_id`, `permission_id`, `data_rule_ids`) VALUES ('1614182465526231042', '1252532323347161090', '1614181468561141762', NULL);
INSERT INTO `sys_role_permission`(`id`, `role_id`, `permission_id`, `data_rule_ids`) VALUES ('1614182465526231044', '1252532323347161090', '1614181090612408322', NULL);

-- 2022-12-30

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

-- 2023-01-15

INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1614538431740420098', '1278612830199599105', '精选作品', '4', '', 4, 1, 'admin', '2023-01-15 16:22:13', NULL, NULL);
INSERT INTO `teaching_menu`(`id`, `parent_id`, `name`, `url`, `menu_type`, `sort_no`, `icon`, `is_leaf`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `internal_or_external`, `is_route`, `hidden`, `need_login`) VALUES ('1614545041074384897', '', '发现', '/new', 0, 2.00, 'search', 1, NULL, 'admin', '2023-01-15 16:48:29', 'admin', '2023-01-15 16:48:43', 0, 0, 1, 0, 0);

-- 2023-02-24

alter table teaching_course
    add depart_ids varchar(1000) default '' not null comment '授权部门';

alter table sys_user
    drop key index_user_name;

-- 2023-07-06

alter table teaching_course_unit
    add media_content longtext null comment '富文本课件' after map_y;
alter table teaching_course
    add show_home tinyint default 0 not null comment '首页展示' after is_shared;
INSERT INTO `teaching_menu`(`id`, `parent_id`, `name`, `url`, `menu_type`, `sort_no`, `icon`, `is_leaf`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `internal_or_external`, `is_route`, `hidden`, `need_login`) VALUES ('1677199026683559937', '', '课程', '/courseList', 0, 2.00, 'calculator', 1, NULL, 'admin', '2023-07-07 14:13:03', 'admin', '2023-07-07 14:13:28', 0, 0, 1, 0, 0);
update teaching_menu set url='/workList?type=1' where `name`='发现';

-- 2023-07-10
INSERT INTO `sys_dict`(`id`, `dict_name`, `dict_code`, `description`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `type`) VALUES ('1678348253119864834', '课程类型', 'course_type', '', 0, 'admin', '2023-07-10 18:19:40', NULL, NULL, 0);
alter table teaching_course
    add course_type varchar(16) default '' not null comment '课程类型';
INSERT INTO `sys_dict`(`id`, `dict_name`, `dict_code`, `description`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `type`) VALUES ('1678348253119864835', '课程分类', 'course_category', '', 0, 'admin', '2023-07-10 18:19:40', NULL, NULL, 0);
alter table teaching_course
    add course_category varchar(16) default '' not null comment '课程分类';

-- 2023-09-26
update sys_user set realname='' where realname is null;
alter table sys_user
    modify realname varchar(100) default '' not null comment '真实姓名';
-- 2023-10-09
alter table teaching_work
    add has_cloud_data tinyint default 0 null comment '是否包含云变量';

-- 2024-01-19
update `teaching_menu` set url = '/index' where url = '/home';
update `teaching_menu` set sort_no=9 where url = '/account/center';
INSERT INTO `teaching_menu`(`id`, `parent_id`, `name`, `url`, `menu_type`, `sort_no`, `icon`, `is_leaf`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `internal_or_external`, `is_route`, `hidden`, `need_login`) VALUES ('1748233072370798594', NULL, '社区', '/home', 0, 0.00, 'experiment', 1, NULL, 'admin', '2024-01-19 14:36:59', NULL, NULL, 0, 0, 1, 0, 0);
INSERT INTO `sys_config`(`id`, `config_key`, `config_value`, `config_enabled`, `comment`) VALUES ('1748234993433325570', 'homeBgColor', '', 1, NULL);
INSERT INTO `sys_config`(`id`, `config_key`, `config_value`, `config_enabled`, `comment`) VALUES ('1748234993630457857', 'homeBgRepeat', 'no-repeat', 1, NULL);
INSERT INTO `sys_config`(`id`, `config_key`, `config_value`, `config_enabled`, `comment`) VALUES ('1748234994012139522', 'file_homeBg', '', 1, NULL);
INSERT INTO `sys_config`(`id`, `config_key`, `config_value`, `config_enabled`, `comment`) VALUES ('1748234994079248386', '_homeHtml', '<h2 style=\"text-align: center;\">&nbsp;</h2>\n<h2 style=\"text-align: center;\">&nbsp;</h2>\n<h2 style=\"text-align: center;\"><span style=\"color: #b96ad9;\"><strong>这里是自定义首页</strong></span></h2>', 1, NULL);

-- 2024-04-22
alter table sys_user
    add school varchar(256) default '' not null comment '学校' after post;

