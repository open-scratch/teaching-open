alter table teaching_course
    add is_shared tinyint default 0 not null comment '是否共享课程';