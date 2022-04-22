CREATE TABLE `teaching_menu`  (
                                  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
                                  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父id',
                                  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单标题',
                                  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
                                  `menu_type` int(11) NULL DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单)',
                                  `sort_no` double(8, 2) NULL DEFAULT NULL COMMENT '菜单排序',
                                  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
                                  `is_leaf` tinyint(1) NULL DEFAULT NULL COMMENT '是否叶子节点:    1:是   0:不是',
                                  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
                                  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
                                  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
                                  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
                                  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
                                  `del_flag` int(1) NULL DEFAULT 0 COMMENT '删除状态 0正常 1已删除',
                                  `internal_or_external` tinyint(1) NULL DEFAULT NULL COMMENT '外链菜单打开方式 0/内部打开 1/外部打开',
                                  `is_route` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否路由',
                                  `hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否隐藏',
                                  `need_login` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否需要登录',
                                  PRIMARY KEY (`id`) USING BTREE,
                                  INDEX `index_prem_pid`(`parent_id`) USING BTREE,
                                  INDEX `index_prem_sort_no`(`sort_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '前端菜单' ROW_FORMAT = Compact;

create index index_prem_pid
    on teaching_menu (parent_id);

create index index_prem_sort_no
    on teaching_menu (sort_no);

INSERT INTO `teaching_menu`(`id`, `parent_id`, `name`, `url`, `menu_type`, `sort_no`, `icon`, `is_leaf`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `internal_or_external`, `is_route`, `hidden`, `need_login`) VALUES ('1481554549722439681', '', '首页', '/home', 0, 1.00, 'home', 1, NULL, 'yuki', '2022-01-13 17:11:45', 'admin', '2022-04-01 17:25:44', 0, 0, 1, 0, 0);
INSERT INTO `teaching_menu`(`id`, `parent_id`, `name`, `url`, `menu_type`, `sort_no`, `icon`, `is_leaf`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `internal_or_external`, `is_route`, `hidden`, `need_login`) VALUES ('1481554751841755137', '', '创作', '/cms', 0, 1.00, 'build', 0, NULL, 'yuki', '2022-01-13 17:12:33', 'admin', '2022-04-01 16:23:36', 0, 0, 1, 0, 0);
INSERT INTO `teaching_menu`(`id`, `parent_id`, `name`, `url`, `menu_type`, `sort_no`, `icon`, `is_leaf`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `internal_or_external`, `is_route`, `hidden`, `need_login`) VALUES ('1481555191698415617', '1481554751841755137', '图形化编程', '/scratch3/index.html?scene=create', 1, 1.00, NULL, 1, NULL, 'yuki', '2022-01-13 17:14:18', 'admin', '2022-04-01 17:01:54', 0, 1, 1, 0, 0);
INSERT INTO `teaching_menu`(`id`, `parent_id`, `name`, `url`, `menu_type`, `sort_no`, `icon`, `is_leaf`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `internal_or_external`, `is_route`, `hidden`, `need_login`) VALUES ('1481959345444990978', '', '个人中心', '/account/center', 0, 3.00, NULL, 1, NULL, 'admin', '2022-01-14 20:00:16', 'admin', '2022-04-01 17:18:00', 0, 0, 1, 0, 1);
INSERT INTO `teaching_menu`(`id`, `parent_id`, `name`, `url`, `menu_type`, `sort_no`, `icon`, `is_leaf`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `internal_or_external`, `is_route`, `hidden`, `need_login`) VALUES ('1509808945860902914', '1481554751841755137', 'Python', '/python/index.html', 1, 2.00, NULL, 1, NULL, 'admin', '2022-04-01 16:24:38', 'admin', '2022-04-01 17:02:11', 0, 1, 1, 0, 0);
INSERT INTO `teaching_menu`(`id`, `parent_id`, `name`, `url`, `menu_type`, `sort_no`, `icon`, `is_leaf`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `internal_or_external`, `is_route`, `hidden`, `need_login`) VALUES ('1509809019143782402', '1481554751841755137', 'ScratchJr', '/scratchjr/home.html', 1, 1.00, NULL, 1, NULL, 'admin', '2022-04-01 16:24:55', 'admin', '2022-04-01 17:01:59', 0, 1, 1, 0, 0);
INSERT INTO `teaching_menu`(`id`, `parent_id`, `name`, `url`, `menu_type`, `sort_no`, `icon`, `is_leaf`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `internal_or_external`, `is_route`, `hidden`, `need_login`) VALUES ('1515601801083052034', '1481554751841755137', 'Blockly', '/blockly/index.html', 1, 4.00, NULL, 1, NULL, 'admin', '2022-04-17 16:03:22', NULL, NULL, 0, 1, 0, 0, 0);

INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1479321067621249026', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '网站配置', '/sys/sysConfig', 'system/SysConfig', NULL, NULL, 1, NULL, '1', 1.00, 0, 'tool', 1, 1, 0, 0, NULL, 'admin', '2022-01-07 13:16:41', 'admin', '2022-01-07 13:38:53', 0, 0, '1', 0);
INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1481550648382185474', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '前台菜单管理', '/teaching/menu', 'teaching/TeachingMenuList', NULL, NULL, 1, NULL, '1', 1.00, 0, 'bars', 1, 1, 0, 0, NULL, 'yuki', '2022-01-13 16:56:14', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_role_permission`(`id`, `role_id`, `permission_id`, `data_rule_ids`) VALUES ('1479341095267700738', 'f6817f48af4fb3af11b9e8bf182f618b', '1479321067621249026', NULL);
INSERT INTO `sys_role_permission`(`id`, `role_id`, `permission_id`, `data_rule_ids`) VALUES ('1481958531557076994', 'f6817f48af4fb3af11b9e8bf182f618b', '1481550648382185474', NULL);
create table sys_config
(
    id             varchar(32)       not null
        primary key,
    config_key     varchar(60)       not null comment '配置属性',
    config_value   longtext          not null comment '配置值',
    config_enabled tinyint default 1 not null comment '是否生效',
    comment        varchar(500)      null comment '备注'
);
INSERT INTO `sys_config`(`id`, `config_key`, `config_value`, `config_enabled`, `comment`) VALUES ('1481959780167823362', '_address', '', 1, NULL);
INSERT INTO `sys_config`(`id`, `config_key`, `config_value`, `config_enabled`, `comment`) VALUES ('1481959780360761346', 'brandName', 'Teaching教学平台', 1, NULL);
INSERT INTO `sys_config`(`id`, `config_key`, `config_value`, `config_enabled`, `comment`) VALUES ('1481959780637585409', 'footer', '<p>Copyright &copy; 2020&nbsp;<a href=\"https://teaching.vip\" target=\"_blank\" rel=\"noopener\">Teaching</a> | Teaching开源Steam教学平台 <a href=\"https://github.com/open-scratch/teaching\" target=\"_blank\" rel=\"noopener\">Github</a></p>\n<p><a href=\"http://beian.miit.gov.cn/\" target=\"_blank\" rel=\"noopener\">沪ICP备20009532号-4</a></p>', 1, NULL);
INSERT INTO `sys_config`(`id`, `config_key`, `config_value`, `config_enabled`, `comment`) VALUES ('1481959780801163266', '_phone', '', 1, NULL);
INSERT INTO `sys_config`(`id`, `config_key`, `config_value`, `config_enabled`, `comment`) VALUES ('1481959781103153153', '_defaultRole', '1252532277234982913', 1, NULL);
INSERT INTO `sys_config`(`id`, `config_key`, `config_value`, `config_enabled`, `comment`) VALUES ('1481959781228982274', 'logo', '7294427e3a8b49c08d10e64d3235726c.png', 1, NULL);
INSERT INTO `sys_config`(`id`, `config_key`, `config_value`, `config_enabled`, `comment`) VALUES ('1481959782168506369', 'allowReg', '1', 1, NULL);
INSERT INTO `sys_config`(`id`, `config_key`, `config_value`, `config_enabled`, `comment`) VALUES ('1481959782298529794', '_linkman', '', 1, NULL);
INSERT INTO `sys_config`(`id`, `config_key`, `config_value`, `config_enabled`, `comment`) VALUES ('1514923379054829570', '_defaultDepart', '4338928a0bbc4bb89fce1523142083a6', 1, NULL);
INSERT INTO `sys_config`(`id`, `config_key`, `config_value`, `config_enabled`, `comment`) VALUES ('1515593345009672194', 'brandDesc', '开源STEAM教学平台', 1, NULL);


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


alter table teaching_course_unit
    add course_video_source tinyint default 1 null comment '视频源' after course_video ;

alter table teaching_course_unit modify course_video text null comment '课程视频';

alter table teaching_course
    add order_num int default 1 not null comment '排序';

alter table teaching_course_unit
    add order_num int default 1 not null comment '排序';

INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1478676963631595521', '1249175047563493377', '文件', '0', '', 1, 1, 'admin', '2022-01-05 18:37:15', NULL, NULL);
INSERT INTO `sys_dict`(`id`, `dict_name`, `dict_code`, `description`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `type`) VALUES ('1362358951581159425', '附加作业状态', 'additional_work_status', '', 0, 'admin', '2021-02-18 05:11:00', NULL, NULL, 0);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1362358984892321794', '1362358951581159425', '未发布', '0', '', 1, 1, 'admin', '2021-02-18 05:11:08', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1362359007336042498', '1362358951581159425', '已发布', '1', '', 1, 1, 'admin', '2021-02-18 05:11:13', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1472853906186854401', '1362358951581159425', '已结束', '2', '', 2, 1, 'admin', '2021-12-20 16:58:30', NULL, NULL);

DELETE FROM `sys_dict_item` where dict_id = '1278612830199599105';
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1278612880279588866', '1278612830199599105', '已保存', '0', '', 1, 1, 'admin', '2020-07-02 16:54:00', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1278612903998377985', '1278612830199599105', '待批改', '1', '', 1, 1, 'admin', '2020-07-02 16:54:06', 'admin', '2022-04-17 16:32:17');
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1515609003021717505', '1278612830199599105', '已批改', '2', '', 3, 1, 'admin', '2022-04-17 16:31:59', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1515609292537745409', '1278612830199599105', '首页展示', '3', '', 4, 1, 'admin', '2022-04-17 16:33:08', NULL, NULL);


INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1478631237925072897', NULL, '作业管理', '/work', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 1.00, 0, 'form', 1, 0, 0, 0, NULL, 'admin', '2022-01-05 15:35:33', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1478631727777837058', '1478631237925072897', '布置班级作业', '/work/additionalWork', 'teaching/TeachingAdditionalWorkList', NULL, NULL, 1, NULL, '1', 2.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2022-01-05 15:37:30', NULL, NULL, 0, 0, '1', 0);
UPDATE sys_permission SET parent_id='1478631237925072897',menu_type=1,icon='' where id = '1249206567527260161';
INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1472819323378683905', '', '班级作业', '/center/myAdditionalWork', 'account/course/MyAdditionalWorkList', NULL, NULL, 0, NULL, '1', 6.00, 0, 'form', 1, 1, 0, 0, NULL, 'admin', '2021-12-20 14:41:05', 'admin', '2022-01-05 15:48:12', 0, 0, '1', 0);
ALTER TABLE teaching_scratch_assets CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1498944880717713410', '1249217230806978561', 'Blockly', '{{ window._CONFIG[\'webURL\'] }}/blockly/index.html', 'layouts/IframePageView', NULL, NULL, 1, NULL, '1', 10.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2022-03-02 16:54:43', NULL, NULL, 0, 0, '1', 1);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1498944561787031554', '1249175047563493377', '积木编程', '10', '', 10, 1, 'admin', '2022-03-02 16:53:27', NULL, NULL);
INSERT INTO sys_role_permission ( id, role_id, permission_id ) VALUES ( '1498944956328431618', 'f6817f48af4fb3af11b9e8bf182f618b', '1498944880717713410' );
INSERT INTO sys_role_permission ( id, role_id, permission_id ) VALUES ( '1498944956328431618', '1252532277234982913', '1498944880717713410' );
INSERT INTO sys_role_permission ( id, role_id, permission_id ) VALUES ( '1498944956328431618', '1252532323347161090', '1498944880717713410' );

drop table test_demo;
drop table test_order_main;
drop table test_order_product;
drop table test_person;
drop table demo;
drop table joa_demo;