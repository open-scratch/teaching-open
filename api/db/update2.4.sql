alter table teaching_course
    add is_shared tinyint default 0 not null comment '是否共享课程';

alter table sys_category
    add value varchar(100) null comment '自定义值';
alter table sys_category
    add comment varchar(200) null comment '备注';
create unique index pid_value_uindex
    on sys_category (pid, value);

create table teaching_scratch_assets
(
    id varchar(40) not null
        primary key,
    asset_type tinyint not null comment '素材类型 1背景 2声音 3造型 4角色',
    asset_name varchar(100) null comment '冗余 素材名',
    asset_data longtext null comment '素材json数据',
    md5_ext varchar(5000) null comment '冗余 素材md5',
    tags varchar(1000) null comment '标签',
    create_by varchar(40) null comment '创建人',
    create_time datetime null comment '创建时间',
    update_by varchar(40) null comment '修改人',
    udpate_time datetime null comment '修改时间',
    del_flag tinyint default 0 not null comment '删除状态'
);

alter table sys_file modify file_type tinyint null comment '文件类型';

alter table sys_file modify file_location tinyint not null comment '存储位置';


create index assetNameIndex
    on teaching_scratch_assets (asset_name);

create index md5extindex
    on teaching_scratch_assets (md5_ext);

INSERT INTO `sys_permission`(`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1439107239277322241', 'd7d6e2e4e2934f2c9385a623fd98c6f3', 'Scratch素材库', '/scratch/assets', 'teaching/TeachingScratchAssetsList', NULL, NULL, 1, NULL, '1', 10.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2021-09-18 01:01:17', 'admin', '2021-09-24 05:08:59', 0, 0, '1', 0);
INSERT INTO `sys_role_permission`(`id`, `role_id`, `permission_id`, `data_rule_ids`) VALUES ('1439108051370074113', 'f6817f48af4fb3af11b9e8bf182f618b', '1439107239277322241', NULL);

INSERT INTO `sys_dict`(`id`, `dict_name`, `dict_code`, `description`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `type`) VALUES ('1439110468358717442', 'Scratch素材类型', 'scratch_asset_type', 'scratch素材库的素材类型', 0, 'admin', '2021-09-18 01:14:07', NULL, NULL, 0);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1439110522679148546', '1439110468358717442', '背景', '1', '', 1, 1, 'admin', '2021-09-18 01:14:20', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1439110574122287105', '1439110468358717442', '声音', '2', '', 2, 1, 'admin', '2021-09-18 01:14:32', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1439110603184619521', '1439110468358717442', '造型', '3', '', 3, 1, 'admin', '2021-09-18 01:14:39', NULL, NULL);
INSERT INTO `sys_dict_item`(`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1439110626148433922', '1439110468358717442', '角色', '4', '', 4, 1, 'admin', '2021-09-18 01:14:45', NULL, NULL);

INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441319390847008770', '0', '素材库标签', 'A03', 'admin', '2021-09-24 03:31:35', 'admin', '2021-09-24 03:53:37', 'A04', '1', NULL, NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441324936413061121', '1441319390847008770', '背景', 'A03A01', 'admin', '2021-09-24 03:53:38', 'admin', '2021-09-24 03:54:27', 'A04', '1', NULL, NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441325142940590082', '1441324936413061121', '奇幻', 'A03A01A01', 'admin', '2021-09-24 03:54:27', NULL, NULL, 'A04', NULL, 'fantasy', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441325189015019522', '1441324936413061121', '音乐', 'A03A01A02', 'admin', '2021-09-24 03:54:38', NULL, NULL, 'A04', NULL, 'music', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441328672250335233', '1441319390847008770', '声音', 'A03A02', 'admin', '2021-09-24 04:08:28', 'admin', '2021-09-24 04:09:49', 'A04', '1', NULL, NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441328704135434241', '1441319390847008770', '角色', 'A03A03', 'admin', '2021-09-24 04:08:36', 'admin', '2021-09-24 04:11:06', 'A04', '1', NULL, NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441328791544729601', '1441324936413061121', '运动', 'A03A01A03', 'admin', '2021-09-24 04:08:57', NULL, NULL, 'A04', NULL, 'sports', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441328825422123010', '1441324936413061121', '户外', 'A03A01A04', 'admin', '2021-09-24 04:09:05', NULL, NULL, 'A04', NULL, 'outdoors', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441328859848970242', '1441324936413061121', '室内', 'A03A01A05', 'admin', '2021-09-24 04:09:13', NULL, NULL, 'A04', NULL, 'indoors', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441328891092340738', '1441324936413061121', '太空', 'A03A01A06', 'admin', '2021-09-24 04:09:20', NULL, NULL, 'A04', NULL, 'space', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441328921211637762', '1441324936413061121', '水下', 'A03A01A07', 'admin', '2021-09-24 04:09:28', NULL, NULL, 'A04', NULL, 'underwater', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441328958427697154', '1441324936413061121', '图案', 'A03A01A08', 'admin', '2021-09-24 04:09:36', NULL, NULL, 'A04', NULL, 'patterns', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329010533535746', '1441328672250335233', '动物', 'A03A02A01', 'admin', '2021-09-24 04:09:49', NULL, NULL, 'A04', NULL, 'animals', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329053705506818', '1441328672250335233', '效果', 'A03A02A02', 'admin', '2021-09-24 04:09:59', NULL, NULL, 'A04', NULL, 'effects', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329085334753282', '1441328672250335233', '可循环', 'A03A02A03', 'admin', '2021-09-24 04:10:07', NULL, NULL, 'A04', NULL, 'loops', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329116032864258', '1441328672250335233', '音符', 'A03A02A04', 'admin', '2021-09-24 04:10:14', NULL, NULL, 'A04', NULL, 'notes', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329157548085250', '1441328672250335233', '打击乐器', 'A03A02A05', 'admin', '2021-09-24 04:10:24', NULL, NULL, 'A04', NULL, 'percussion', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329188107784194', '1441328672250335233', '太空', 'A03A02A06', 'admin', '2021-09-24 04:10:31', NULL, NULL, 'A04', NULL, 'space', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329223457378305', '1441328672250335233', '运动', 'A03A02A07', 'admin', '2021-09-24 04:10:40', NULL, NULL, 'A04', NULL, 'sports', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329259465478146', '1441328672250335233', '人声', 'A03A02A08', 'admin', '2021-09-24 04:10:48', NULL, NULL, 'A04', NULL, 'voice', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329291728064514', '1441328672250335233', '古怪', 'A03A02A09', 'admin', '2021-09-24 04:10:56', NULL, NULL, 'A04', NULL, 'wacky', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329333524303873', '1441328704135434241', '动物', 'A03A03A01', 'admin', '2021-09-24 04:11:06', NULL, NULL, 'A04', NULL, 'animals', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329369280745474', '1441328704135434241', '人物', 'A03A03A02', 'admin', '2021-09-24 04:11:14', NULL, NULL, 'A04', NULL, 'people', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329396858294273', '1441328704135434241', '奇幻', 'A03A03A03', 'admin', '2021-09-24 04:11:21', NULL, NULL, 'A04', NULL, 'fantasy', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329422980419585', '1441328704135434241', '舞蹈', 'A03A03A04', 'admin', '2021-09-24 04:11:27', NULL, NULL, 'A04', NULL, 'dance', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329456912338945', '1441328704135434241', '音乐', 'A03A03A05', 'admin', '2021-09-24 04:11:35', NULL, NULL, 'A04', NULL, 'music', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329488424144898', '1441328704135434241', '运动', 'A03A03A06', 'admin', '2021-09-24 04:11:43', NULL, NULL, 'A04', NULL, 'sports', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329526349041665', '1441328704135434241', '食物', 'A03A03A07', 'admin', '2021-09-24 04:11:52', NULL, NULL, 'A04', NULL, 'food', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329558519353346', '1441328704135434241', '时尚', 'A03A03A08', 'admin', '2021-09-24 04:12:00', NULL, NULL, 'A04', NULL, 'fashion', NULL);
INSERT INTO `sys_category`(`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`, `value`, `comment`) VALUES ('1441329606007263234', '1441328704135434241', '字母', 'A03A03A09', 'admin', '2021-09-24 04:12:11', NULL, NULL, 'A04', NULL, 'letters', NULL);
