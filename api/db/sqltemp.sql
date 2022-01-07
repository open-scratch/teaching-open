create table sys_config
(
    id varchar(32) not null
        primary key,
    config_key varchar(60) not null comment '配置属性',
    config_value longtext not null comment '配置值',
    config_enabled tinyint default 1 not null comment '是否生效',
    comment varchar(500) null comment '备注'
);

INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1479321067621249026', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '网站配置', '/sys/sysConfig', 'system/SysConfig', NULL, NULL, 1, NULL, '1', 1.00, 0, 'tool', 1, 1, 0, 0, NULL, 'admin', '2022-01-07 13:16:41', 'admin', '2022-01-07 13:38:53', 0, 0, '1', 0);


