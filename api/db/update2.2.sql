alter table teaching_course_unit
    add course_case varchar(256) default '' not null comment '课程作业案例' after course_video;
INSERT INTO sys_permission ( id, parent_id, name, perms_type, component, url, sort_no, menu_type, is_leaf, is_route, keep_alive, create_by, del_flag, hidden, create_time, status, always_show, internal_or_external )
 VALUES ( '1384345850621280257', '1249217230806978561', 'Python', 1, 'layouts/IframePageView', '{{ window._CONFIG[''webURL''] }}/python/index.html', 2.0, 1, true, true, false, 'admin', 0, false, '2021-04-20 11:19:05', 1, false, true )

INSERT INTO sys_role_permission ( id, role_id, permission_id ) VALUES ( '1384346075054292993', 'f6817f48af4fb3af11b9e8bf182f618b', '1384345850621280257' )
INSERT INTO sys_role_permission ( id, role_id, permission_id ) VALUES ( '1384346847716392961', '1252532277234982913', '1384345850621280257' )
INSERT INTO sys_role_permission ( id, role_id, permission_id ) VALUES ( '1384346952469135361', '1252532323347161090', '1384345850621280257' )