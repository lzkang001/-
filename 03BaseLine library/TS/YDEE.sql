/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/7/8 9:05:01                             */
/*==============================================================*/


drop table if exists Course;

drop table if exists Dictionary;

drop table if exists Exam;

drop table if exists File;

drop table if exists Grade;

drop table if exists Manager;

drop table if exists Mechanism;

drop table if exists Qbank;

drop table if exists Question;

drop table if exists Resource;

drop table if exists Scheme;

drop table if exists Signin;

drop table if exists Student;

drop table if exists Task;

drop table if exists Teacher;

drop table if exists Tpaper;

drop table if exists Train;

drop table if exists Zhibo;

/*==============================================================*/
/* Table: Course                                                */
/*==============================================================*/
create table Course
(
   cour_id              char(25) not null,
   cour_teachid         char(25),
   cour_name            char(25),
   cour_type            char(25),
   cour_using           char(25),
   cour_state           char(25),
   cour_teachname       char(25),
   cour_cost            float(15),
   cour_credit          float(15),
   cour_udate           date,
   cour_duration        char(25),
   cour_alive           bool,
   cour_cdate           date,
   primary key (cour_id)
);

/*==============================================================*/
/* Table: Dictionary                                            */
/*==============================================================*/
create table Dictionary
(
   dic_id               char(25) not null,
   dic_name             char(25),
   dic_parent           char(25),
   dic_value            int,
   dic_sign             char(10),
   dic_sort             bool,
   dic_sortvalue        int,
   dic_note             char(25),
   dic_alive            bool,
   primary key (dic_id)
);

/*==============================================================*/
/* Table: Exam                                                  */
/*==============================================================*/
create table Exam
(
   exam_id              char(25) not null,
   exam_name            char(25),
   exam_tpid            char(25),
   exam_alive           bool,
   exam_groupname       char(25),
   exam_type            char(25),
   exam_maxtime         char(25),
   exam_usetime         char(25),
   exam_submit          char(25),
   exam_producer        char(25),
   exam_topic           char(25),
   exam_level           char(25),
   exam_udate           date,
   exam_cdate           date,
   exam_sdate           date,
   exam_edate           date,
   exam_minscore        float(15),
   exam_maxscore        float(15),
   primary key (exam_id)
);

/*==============================================================*/
/* Table: File                                                  */
/*==============================================================*/
create table File
(
   file_id              char(25) not null,
   file_name            char(25),
   file_date            date,
   file_check           char(25),
   file_save            char(25),
   file_courname        char(25),
   file_courid          char(25),
   file_courtype        char(25),
   file_courusing       char(25),
   file_teachname       char(25),
   file_teachid         char(25),
   file_teachstation    char(25),
   file_teachlevel      char(25),
   file_state           char(25),
   file_sdate           date,
   file_edate           date,
   cour_alive           bool,
   primary key (file_id)
);

/*==============================================================*/
/* Table: Grade                                                 */
/*==============================================================*/
create table Grade
(
   grade_id             char(25) not null,
   grade_stuname        char(25),
   grade_stuid          char(25),
   grade_name           char(25),
   grade_type           char(25),
   grade_ltime          char(25),
   grade_utime          char(25),
   grade_date           date,
   grade_state          char(25),
   grade_pgrade         float(15),
   grade_score          float(15),
   grade_pass           char(25),
   grade_count          int,
   primary key (grade_id)
);

/*==============================================================*/
/* Table: Manager                                               */
/*==============================================================*/
create table Manager
(
   man_id               char(25) not null,
   man_name             char(25),
   man_sex              char(25),
   man_tel              char(25),
   man_nation           char(25),
   man_edu              char(25),
   man_role             char(25),
   man_alive            bool,
   man_power            int,
   man_note             char(25),
   primary key (man_id)
);

/*==============================================================*/
/* Table: Mechanism                                             */
/*==============================================================*/
create table Mechanism
(
   mech_id              char(25) not null,
   mech_name            char(25),
   mech_pname           char(25),
   mech_tel             char(25),
   mech_address         char(25),
   mech_alive           bool,
   mech_ype             char(25),
   mech_note            char(25),
   primary key (mech_id)
);

/*==============================================================*/
/* Table: Qbank                                                 */
/*==============================================================*/
create table Qbank
(
   qbank_id             char(25),
   qbank_name           char(25),
   qbank_type           char(25),
   qbank_level          char(25),
   qbank_producer       char(25),
   qbank_cdate          date,
   qbank_udate          date,
   qbank_alive          bool
);

/*==============================================================*/
/* Table: Question                                              */
/*==============================================================*/
create table Question
(
   que_id               char(25) not null,
   que_subject          char(25),
   que_cont             char(100),
   que_answer           char(100),
   que_asker            char(25),
   que_askdate          date,
   que_check            char(25),
   que_solver           char(25),
   que_soldate          date,
   que_alive            bool,
   que_name             char(25),
   primary key (que_id)
);

/*==============================================================*/
/* Table: Resource                                              */
/*==============================================================*/
create table Resource
(
   res_name             char(25),
   res_pname            char(25),
   res_date             date,
   res_state            char(25),
   res_note             char(25),
   res_type             char(25),
   res_volume           char(25),
   res_rouye            char(25),
   res_alive            bool,
   res_id               char(25) not null,
   primary key (res_id)
);

/*==============================================================*/
/* Table: Scheme                                                */
/*==============================================================*/
create table Scheme
(
   scheme_id            char(25) not null,
   scheme_name          char(25),
   scheme_type          char(25),
   scheme_producer      char(25),
   scheme_credit        char(25),
   scheme_hours         char(25),
   scheme_state         char(25),
   scheme_alive         bool,
   scheme_test          char(25),
   scheme_key           char(25),
   scheme_udate         date,
   scheme_sdate         date,
   scheme_edate         date,
   scheme_jsdate        date,
   scheme_jedate        date,
   scheme_max           int,
   scheme_money         float(15),
   scheme_note          char(25),
   primary key (scheme_id)
);

/*==============================================================*/
/* Table: Signin                                                */
/*==============================================================*/
create table Signin
(
   sin_name             char(25),
   sin_id               char(25),
   sin_group            char(25),
   sin_date             date,
   sin_desc             char(25),
   sin_alive            bool,
   sin_zid              char(25) not null,
   primary key (sin_zid)
);

/*==============================================================*/
/* Table: Student                                               */
/*==============================================================*/
create table Student
(
   stu_id               char(25) not null,
   stu_name             char(25),
   stu_tel              char(25),
   stu_birth            char(25),
   stu_address          char(25),
   stu_nation           char(25),
   stu_country          char(25),
   stu_power            int,
   stu_note             char(25),
   stu_group            char(25),
   stu_taskcount        int,
   stu_nickname         char(25),
   stu_num              int,
   stu_email            char(25),
   stu_sex              char(25),
   stu_role             char(25),
   stu_shcemajor        char(25),
   stu_scheminor        char(25),
   primary key (stu_id)
);

/*==============================================================*/
/* Table: Task                                                  */
/*==============================================================*/
create table Task
(
   task_id              char(25) not null,
   task_teachid         char(25),
   task_name            char(25),
   task_cont            char(100),
   task_state           char(25),
   task_sdate           date,
   task_edate           date,
   task_subnum          int,
   task_idate           date,
   task_alive           bool,
   task_stuname         char(25),
   tsak_groupname       char(25),
   tsak_stuid           char(25),
   tsak_icont           char(100),
   tsak_score           float(15),
   tsak_count           int,
   task_teachname       char(25),
   primary key (task_id)
);

/*==============================================================*/
/* Table: Teacher                                               */
/*==============================================================*/
create table Teacher
(
   file_teachname       char(25),
   file_teachid         char(25) not null,
   teach_tel            char(25),
   teach_station        char(25),
   file_teachlevel      char(25),
   teach_type           char(25),
   teach_domain         char(25),
   teach_birth          date,
   teach_edu            char(25),
   teach_nation         char(25),
   teach_country        char(25),
   teach_years          int,
   teach_power          int,
   teach_zhibo          char(25),
   teach_note           char(25),
   cour_alive           bool,
   primary key (file_teachid)
);

/*==============================================================*/
/* Table: Tpaper                                                */
/*==============================================================*/
create table Tpaper
(
   tp_id                char(25) not null,
   tp_name              char(25),
   tp_qbankid           char(25),
   tp_type              char(25),
   tp_level             char(25),
   tp_qbankname         char(25),
   tp_producer          char(25),
   tp_cdate             date,
   tp_udate             date,
   tp_alive             bool,
   tp_cout              int,
   tp_select            int,
   tp_selects           int,
   tp_judge             int,
   tp_sque              int,
   tp_blank             int,
   tp_code              int,
   primary key (tp_id)
);

/*==============================================================*/
/* Table: Train                                                 */
/*==============================================================*/
create table Train
(
   train_name           char(25),
   train_id             char(25) not null,
   train_stuname        char(25),
   train_stuid          int,
   train_groupname      char(25),
   train_major          char(25),
   train_role           char(25),
   train_sdate          date,
   train_edate          date,
   train_zunum          char(25),
   train_demend         float(15),
   train_design         float(15),
   train_code           float(15),
   train_skill          float(15),
   train_habit          float(15),
   train_pioneer        float(15),
   train_comment        char(25),
   train_note           char(25),
   primary key (train_id)
);

/*==============================================================*/
/* Table: Zhibo                                                 */
/*==============================================================*/
create table Zhibo
(
   zhibo_id             char(25) not null,
   zhibo_name           char(25),
   zhibo_teachname      char(25),
   zhibo_place          char(25),
   zhibo_sdate          date,
   zhibo_etime          date,
   zhibo_watch          char(25),
   zhibo_alive          bool,
   zhibo_teachid        char(25),
   primary key (zhibo_id)
);

