alter table teaching_course_unit
    add course_video_source tinyint default 1 null comment '视频源' after course_video ;

alter table teaching_course_unit modify course_video text null comment '课程视频';

alter table teaching_course
    add order_num int default 1 not null comment '排序';

alter table teaching_course_unit
    add order_num int default 1 not null comment '排序';

create table teaching_additional_work
(
    id varchar(36) not null comment '主键'
        primary key,
    create_by varchar(50) null comment '创建人',
    create_time datetime null comment '创建日期',
    update_by varchar(50) null comment '更新人',
    update_time datetime null comment '更新日期',
    sys_org_code varchar(64) null comment '所属部门',
    code_type tinyint null comment '代码类型',
    work_name varchar(64) null comment '作业名',
    work_desc varchar(512) null comment '作业描述',
    work_cover varchar(256) null comment '作业封面',
    work_url varchar(256) null comment '作业文件',
    work_dept varchar(2000) not null comment '分配班级逗号分割',
    status tinyint default 0 not null comment '状态0 未发布 1发布',
    work_document_url varchar(256) null comment '作业资料'
)
comment '附加作业';

alter table teaching_work
    add additional_id varchar(40) default '' null;

INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1478676963631595521', '1249175047563493377', '文件', '0', '', 1, 1, 'admin', '2022-01-05 18:37:15', NULL, NULL);
INSERT INTO `sys_dict`(`id`, `dict_name`, `dict_code`, `description`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `type`) VALUES ('1362358951581159425', '附加作业状态', 'additional_work_status', '', 0, 'admin', '2021-02-18 05:11:00', NULL, NULL, 0);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1362358984892321794', '1362358951581159425', '未发布', '0', '', 1, 1, 'admin', '2021-02-18 05:11:08', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1362359007336042498', '1362358951581159425', '已发布', '1', '', 1, 1, 'admin', '2021-02-18 05:11:13', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1472853906186854401', '1362358951581159425', '已结束', '2', '', 2, 1, 'admin', '2021-12-20 16:58:30', NULL, NULL);


INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1478631237925072897', NULL, '作业管理', '/work', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 1.00, 0, 'form', 1, 0, 0, 0, NULL, 'admin', '2022-01-05 15:35:33', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1478631727777837058', '1478631237925072897', '布置班级作业', '/work/additionalWork', 'teaching/TeachingAdditionalWorkList', NULL, NULL, 1, NULL, '1', 2.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2022-01-05 15:37:30', NULL, NULL, 0, 0, '1', 0);
UPDATE sys_permission SET parent_id='1478631237925072897',menu_type=1,icon='' where id = '1249206567527260161';
INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1472819323378683905', '', '班级作业', '/center/myAdditionalWork', 'account/course/MyAdditionalWorkList', NULL, NULL, 0, NULL, '1', 6.00, 0, 'form', 1, 1, 0, 0, NULL, 'admin', '2021-12-20 14:41:05', 'admin', '2022-01-05 15:48:12', 0, 0, '1', 0);
ALTER TABLE teaching_scratch_assets CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
