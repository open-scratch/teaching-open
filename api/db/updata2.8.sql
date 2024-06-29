create table teaching_news
(
    id           varchar(36)   not null comment '主键'
        primary key,
    news_title   varchar(256)  null comment '标题',
    news_content text          null comment '内容',
    news_status  int default 0 null comment '状态',
    create_by    varchar(50)   null comment '创建人',
    create_time  datetime      null comment '创建日期',
    update_by    varchar(50)   null comment '更新人',
    update_time  datetime      null comment '更新日期'
);

INSERT INTO `sys_dict`(`id`, `dict_name`, `dict_code`, `description`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `type`) VALUES ('1803328062360666114', '资讯状态', 'news_status', '', 0, 'admin', '2024-06-19 15:24:49', NULL, NULL, 0);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1803328097664122882', '1803328062360666114', '草稿', '0', '', 1, 1, 'admin', '2024-06-19 15:24:57', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1803328116316192769', '1803328062360666114', '已发布', '1', '', 1, 1, 'admin', '2024-06-19 15:25:02', NULL, NULL);
INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1803329147661983746', '', '资讯管理', '/news/list', 'teaching/TeachingNewsList', NULL, NULL, 0, NULL, '1', 13.00, 0, 'profile', 1, 1, 0, 0, NULL, 'admin', '2024-06-19 15:29:07', 'admin', '2024-06-19 15:32:24', 0, 0, '1', 0);
INSERT INTO `sys_role_permission`(`id`, `role_id`, `permission_id`, `data_rule_ids`) VALUES ('1803329311386640386', 'f6817f48af4fb3af11b9e8bf182f618b', '1803329147661983746', NULL);
INSERT INTO `teaching_menu`(`id`, `parent_id`, `name`, `url`, `menu_type`, `sort_no`, `icon`, `is_leaf`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `internal_or_external`, `is_route`, `hidden`, `need_login`) VALUES ('1803359896461238274', '', '资讯', '/newsList', 0, 3.00, 'notification', 1, NULL, 'admin', '2024-06-19 17:31:19', 'admin', '2024-06-19 17:31:43', 0, 0, 1, 0, 0);
