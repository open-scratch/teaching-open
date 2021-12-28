alter table teaching_course_unit
    add course_video_source tinyint default 1 null comment '视频源' after course_video ;

alter table teaching_course_unit modify course_video text null comment '课程视频';

alter table teaching_course
    add order_num int default 1 not null comment '排序';

alter table teaching_course_unit
    add order_num int default 1 not null comment '排序';


ALTER TABLE teaching_scratch_assets CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
