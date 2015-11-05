drop table T_RM_CRPLAN cascade constraints;

drop table T_RM_CRPLANEXE cascade constraints;

drop table T_RM_CRPLANMASTER cascade constraints;

drop table T_RM_CRUANSWER cascade constraints;

drop table T_RM_CRUQUESTION cascade constraints;

drop table T_RM_DISMISSPAPER cascade constraints;

drop table T_RM_EDUCATEHISTORY cascade constraints;

drop table T_RM_EMPLOYAPPLY cascade constraints;

drop table T_RM_ENTERLIST cascade constraints;

drop table T_RM_ESTFORNEWER cascade constraints;

drop table T_RM_ESTFORRECM cascade constraints;

drop table T_RM_ESTFORRECP cascade constraints;

drop table T_RM_ESTFORVIEWER cascade constraints;

drop table T_RM_EXAMRESULT cascade constraints;

drop table T_RM_EXAMTEM cascade constraints;

drop table T_RM_EXPERIENCE cascade constraints;

drop table T_RM_HEALTHDATA cascade constraints;

drop table T_RM_HRPRINC cascade constraints;

drop table T_RM_INTERVIEW cascade constraints;

drop table T_RM_INTERVIEWER cascade constraints;

drop table T_RM_MESSAGETEMPLATE cascade constraints;

drop table T_RM_NOTIFY cascade constraints;

drop table T_RM_NOTIFYSTANDARD cascade constraints;

drop table T_RM_PUBLISHTYPE cascade constraints;

drop table T_RM_QUALIFICATION cascade constraints;

drop table T_RM_RECEIPTION cascade constraints;

drop table T_RM_REQUIREAPPLY cascade constraints;

drop table T_RM_RESUME cascade constraints;

drop table T_RM_RESUMEDELIVERY cascade constraints;

drop table T_RM_SURVEY cascade constraints;

drop table T_RM_SURVEYDETAIL cascade constraints;

drop table T_RM_SURVEYITEM cascade constraints;

drop table T_RM_TALENTEDRESUME cascade constraints;

/*==============================================================*/
/* Table: T_RM_CRPLAN                                           */
/*==============================================================*/
create table T_RM_CRPLAN 
(
   CRPLANID             VARCHAR2(50)         not null,
   PLANID               VARCHAR2(50)         not null,
   REQUIREAPPLYID       VARCHAR2(50)         not null,
   PUBLISHID            VARCHAR2(50)         not null,
   PUBLISHNAME          NVARCHAR2(50)        not null,
   REQQTY               NUMBER(6,0)          default 0 not null,
   EXPECTCOST           NUMBER(9,2)          not null,
   REMARK               VARCHAR2(2000),
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   EDITSTATE            VARCHAR2(10)         default '2',
   constraint PK_T_RM_CRPLAN primary key (CRPLANID)
);

comment on table T_RM_CRPLAN is
'T_RM_CRPLAN 制定招聘计划子表';

comment on column T_RM_CRPLAN.CRPLANID is
'计划表虚拟ID';

comment on column T_RM_CRPLAN.PLANID is
'计划ID';

comment on column T_RM_CRPLAN.REQUIREAPPLYID is
'需求ID';

comment on column T_RM_CRPLAN.PUBLISHID is
'渠道ID';

comment on column T_RM_CRPLAN.PUBLISHNAME is
'渠道名';

comment on column T_RM_CRPLAN.REQQTY is
'需搜索简历份数';

comment on column T_RM_CRPLAN.EXPECTCOST is
'预计费用';

comment on column T_RM_CRPLAN.REMARK is
'说明';

comment on column T_RM_CRPLAN.CREATEUSERID is
'创建人';

comment on column T_RM_CRPLAN.CREATEDATE is
'创建时间';

comment on column T_RM_CRPLAN.UPDATEUSERID is
'修改人ID';

comment on column T_RM_CRPLAN.UPDATEDATE is
'修改时间';

comment on column T_RM_CRPLAN.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

/*==============================================================*/
/* Index: "idx_1_T_RM_CRPLAN"                                   */
/*==============================================================*/
create index "idx_1_T_RM_CRPLAN" on T_RM_CRPLAN (
   CREATEDATE DESC
);

/*==============================================================*/
/* Table: T_RM_CRPLANEXE                                        */
/*==============================================================*/
create table T_RM_CRPLANEXE 
(
   PLANID               VARCHAR2(50)         not null,
   REQUIREAPPLYID       VARCHAR2(50)         not null,
   REQUIREAPPLYCODE     NVARCHAR2(50)        not null,
   PUBLISHID            VARCHAR2(50)         not null,
   PUBLISHNAME          NVARCHAR2(50)        not null,
   RESUMEID             VARCHAR2(50)         not null,
   NAME                 NVARCHAR2(50)        not null,
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   CREATECOMPANYID      VARCHAR2(50),
   CREATEDEPARTMENTID   VARCHAR2(50),
   CREATEPOSTID         VARCHAR2(50),
   EDITSTATE            VARCHAR2(10),
   constraint PK_T_RM_CRPLANEXE primary key (RESUMEID)
);

comment on table T_RM_CRPLANEXE is
'T_RM_CRPLANEXE 招聘计划执行';

comment on column T_RM_CRPLANEXE.PLANID is
'计划ID';

comment on column T_RM_CRPLANEXE.REQUIREAPPLYID is
'需求ID';

comment on column T_RM_CRPLANEXE.REQUIREAPPLYCODE is
'申请编号';

comment on column T_RM_CRPLANEXE.PUBLISHID is
'渠道ID';

comment on column T_RM_CRPLANEXE.PUBLISHNAME is
'渠道名';

comment on column T_RM_CRPLANEXE.RESUMEID is
'简历ID';

comment on column T_RM_CRPLANEXE.NAME is
'姓名';

comment on column T_RM_CRPLANEXE.CREATEUSERID is
'创建人';

comment on column T_RM_CRPLANEXE.CREATEDATE is
'创建时间';

comment on column T_RM_CRPLANEXE.CREATECOMPANYID is
'创建人公司ID';

comment on column T_RM_CRPLANEXE.CREATEDEPARTMENTID is
'创建人部门ID';

comment on column T_RM_CRPLANEXE.CREATEPOSTID is
'创建人岗位ID';

comment on column T_RM_CRPLANEXE.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

/*==============================================================*/
/* Index: "idx_1_T_RM_CRPLANEXE"                                */
/*==============================================================*/
create index "idx_1_T_RM_CRPLANEXE" on T_RM_CRPLANEXE (
   CREATEDATE ASC
);

/*==============================================================*/
/* Table: T_RM_CRPLANMASTER                                     */
/*==============================================================*/
create table T_RM_CRPLANMASTER 
(
   PLANID               VARCHAR2(50)         not null,
   REQUIREAPPLYID       VARCHAR2(50)         not null,
   REQUIREAPPLYCODE     NVARCHAR2(50)        not null,
   INTENDDATE           DATE,
   ISEXE                VARCHAR2(10)         default '0',
   CHECKSTATES          VARCHAR2(10)         not null,
   EDITSTATE            VARCHAR2(10)         default '2',
   OWNERID              VARCHAR2(50)         not null,
   OWNERPOSTID          VARCHAR2(50)         not null,
   OWNERDEPARTMENTID    VARCHAR2(50)         not null,
   OWNERCOMPANYID       VARCHAR2(50)         not null,
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   CREATECOMPANYID      VARCHAR2(50),
   CREATEDEPARTMENTID   VARCHAR2(50),
   CREATEPOSTID         VARCHAR2(50),
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   constraint PK_T_RM_CRPLANMASTER primary key (PLANID)
);

comment on table T_RM_CRPLANMASTER is
'T_RM_CRPLANMASTER 招聘计划主表';

comment on column T_RM_CRPLANMASTER.PLANID is
'计划ID';

comment on column T_RM_CRPLANMASTER.REQUIREAPPLYID is
'需求ID';

comment on column T_RM_CRPLANMASTER.REQUIREAPPLYCODE is
'申请编号';

comment on column T_RM_CRPLANMASTER.INTENDDATE is
'预计到岗日期';

comment on column T_RM_CRPLANMASTER.ISEXE is
'招聘计划执行 0.未提交 1.已提交复选3.执行结束';

comment on column T_RM_CRPLANMASTER.CHECKSTATES is
'审核状态： CheckStates
///0 未提交 UnSubmit,
///1 审核中 Approving,
/// 2 审核通过 Approved,
///3 审核未通过 UnApproved
///4 待审核
///5 所有';

comment on column T_RM_CRPLANMASTER.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

comment on column T_RM_CRPLANMASTER.OWNERID is
'所属人ID';

comment on column T_RM_CRPLANMASTER.OWNERPOSTID is
'所属岗位ID';

comment on column T_RM_CRPLANMASTER.OWNERDEPARTMENTID is
'所属部门ID';

comment on column T_RM_CRPLANMASTER.OWNERCOMPANYID is
'所属公司ID';

comment on column T_RM_CRPLANMASTER.CREATEUSERID is
'创建人';

comment on column T_RM_CRPLANMASTER.CREATEDATE is
'创建时间';

comment on column T_RM_CRPLANMASTER.CREATECOMPANYID is
'创建人公司ID';

comment on column T_RM_CRPLANMASTER.CREATEDEPARTMENTID is
'创建人部门ID';

comment on column T_RM_CRPLANMASTER.CREATEPOSTID is
'创建人岗位ID';

comment on column T_RM_CRPLANMASTER.UPDATEUSERID is
'修改人ID';

comment on column T_RM_CRPLANMASTER.UPDATEDATE is
'修改时间';

/*==============================================================*/
/* Index: "idx_1_T_RM_CRPLANMASTER"                             */
/*==============================================================*/
create index "idx_1_T_RM_CRPLANMASTER" on T_RM_CRPLANMASTER (
   REQUIREAPPLYCODE ASC
);

/*==============================================================*/
/* Index: "idx_2_T_RM_CRPLANMASTER"                             */
/*==============================================================*/
create index "idx_2_T_RM_CRPLANMASTER" on T_RM_CRPLANMASTER (
   CREATEDATE DESC
);

/*==============================================================*/
/* Table: T_RM_CRUANSWER                                        */
/*==============================================================*/
create table T_RM_CRUANSWER 
(
   ANSWERID             VARCHAR2(50)         not null,
   QUESTIONID           VARCHAR2(64)         not null,
   ANSWERNAME           NVARCHAR2(50)        not null,
   USEFUL               VARCHAR2(10)         default '1' not null,
   SORTNO               NUMBER(4,0)          not null,
   REMARK               NVARCHAR2(2000)      default '1',
   EDITSTATE            VARCHAR2(10)         default '2',
   constraint PK_T_RM_CRUANSWER primary key (ANSWERID)
);

comment on table T_RM_CRUANSWER is
'背景调查问题答案项设定';

comment on column T_RM_CRUANSWER.ANSWERID is
'答案项ID';

comment on column T_RM_CRUANSWER.QUESTIONID is
'问题ID';

comment on column T_RM_CRUANSWER.ANSWERNAME is
'答案名';

comment on column T_RM_CRUANSWER.USEFUL is
'答案是否为有利项：1.有利项.2.为不利项';

comment on column T_RM_CRUANSWER.SORTNO is
'答案序号';

comment on column T_RM_CRUANSWER.REMARK is
'备注';

comment on column T_RM_CRUANSWER.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

/*==============================================================*/
/* Index: "idx_1_T_RM_CRUANSWER"                                */
/*==============================================================*/
create index "idx_1_T_RM_CRUANSWER" on T_RM_CRUANSWER (
   ANSWERNAME ASC
);

/*==============================================================*/
/* Table: T_RM_CRUQUESTION                                      */
/*==============================================================*/
create table T_RM_CRUQUESTION 
(
   QUESTIONID           VARCHAR2(64)         not null,
   QUESTIONNAME         NVARCHAR2(50)        not null,
   QUESTIONVALUE        NUMBER(4,0)          not null,
   SORTNO               NUMBER(4,0)          not null,
   QUESTIONTYPE         VARCHAR2(10)         default '1' not null,
   RULE                 VARCHAR2(10)         default '3' not null,
   DISABLE              VARCHAR2(10)         default '0',
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   EDITSTATE            VARCHAR2(10)         default '2',
   constraint PK_T_RM_CRUQUESTION primary key (QUESTIONID)
);

comment on table T_RM_CRUQUESTION is
'背景调查问题项设定';

comment on column T_RM_CRUQUESTION.QUESTIONID is
'问题ID';

comment on column T_RM_CRUQUESTION.QUESTIONNAME is
'问题名';

comment on column T_RM_CRUQUESTION.QUESTIONVALUE is
'问题值';

comment on column T_RM_CRUQUESTION.SORTNO is
'问题序号';

comment on column T_RM_CRUQUESTION.QUESTIONTYPE is
'问题类型:1选择题 2.问答题.';

comment on column T_RM_CRUQUESTION.RULE is
'否决原则:1.一票不利否决.2.3项中有一票不利否决.3.人力资源主官决定';

comment on column T_RM_CRUQUESTION.DISABLE is
'是否在使用中.0.使用中.1.未使用';

comment on column T_RM_CRUQUESTION.UPDATEUSERID is
'修改人ID';

comment on column T_RM_CRUQUESTION.UPDATEDATE is
'修改时间';

comment on column T_RM_CRUQUESTION.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

/*==============================================================*/
/* Table: T_RM_DISMISSPAPER                                     */
/*==============================================================*/
create table T_RM_DISMISSPAPER 
(
   RESUMEDELIVERYID     VARCHAR2(50)         not null,
   RESUMENAME           NVARCHAR2(32)        not null,
   COMPANYCONFIRM       VARCHAR2(10)         default '2',
   DISMISSCONFIRM       VARCHAR2(10)         default '2',
   WORKYEAECONFIRM      VARCHAR2(10)         default '2',
   DISMISSREASONCONFIRM VARCHAR2(10)         default '3',
   POSTCONFIMR          VARCHAR2(10)         default '4',
   SALARYCONFIRM        VARCHAR2(10)         default '4',
   RESULT               VARCHAR2(10),
   EDITSTATE            VARCHAR2(10)         default '2',
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   constraint PK_T_RM_DISMISSPAPER primary key (RESUMEDELIVERYID)
);

comment on table T_RM_DISMISSPAPER is
'离职证明';

comment on column T_RM_DISMISSPAPER.RESUMEDELIVERYID is
'简历应聘ID';

comment on column T_RM_DISMISSPAPER.RESUMENAME is
'应聘者姓名';

comment on column T_RM_DISMISSPAPER.COMPANYCONFIRM is
'工作单位确认1.是.2,否';

comment on column T_RM_DISMISSPAPER.DISMISSCONFIRM is
'是否已开离职证明1.是.2,否';

comment on column T_RM_DISMISSPAPER.WORKYEAECONFIRM is
'工作年限误差是否超过1.5年以上1.是.2,否';

comment on column T_RM_DISMISSPAPER.DISMISSREASONCONFIRM is
'离职原因是否属实1.是.2,否.3未回答';

comment on column T_RM_DISMISSPAPER.POSTCONFIMR is
'岗位是否符合1.属实,2.未回答.3.不属实.4.未回答';

comment on column T_RM_DISMISSPAPER.SALARYCONFIRM is
'薪资是否属实1.属实,2.未回答.3.不属实.4.未回答';

comment on column T_RM_DISMISSPAPER.RESULT is
'1.属实.2.不属实';

comment on column T_RM_DISMISSPAPER.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

comment on column T_RM_DISMISSPAPER.UPDATEUSERID is
'修改人ID';

comment on column T_RM_DISMISSPAPER.UPDATEDATE is
'修改时间';

/*==============================================================*/
/* Index: "idx_1_T_RM_DISMISSPAPER"                             */
/*==============================================================*/
create index "idx_1_T_RM_DISMISSPAPER" on T_RM_DISMISSPAPER (
   RESUMENAME ASC
);

/*==============================================================*/
/* Table: T_RM_EDUCATEHISTORY                                   */
/*==============================================================*/
create table T_RM_EDUCATEHISTORY 
(
   EDUCATEHISTORYID     VARCHAR2(50)         not null,
   RESUMEID             VARCHAR2(50)         not null,
   SCHOONAME            NVARCHAR2(50)        not null,
   MAJOR                NVARCHAR2(50)        not null,
   EDUCATIONLEVEL       VARCHAR2(10)         not null,
   EDUCATIONNAME        NVARCHAR2(50)        not null,
   STARTDATE            NVARCHAR2(50),
   ENDDATE              NVARCHAR2(50),
   REMARK               NVARCHAR2(2000),
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   EDITSTATE            VARCHAR2(10)         default '2',
   constraint PK_T_RM_EDUCATEHISTORY primary key (EDUCATEHISTORYID)
);

comment on table T_RM_EDUCATEHISTORY is
'教育背景';

comment on column T_RM_EDUCATEHISTORY.EDUCATEHISTORYID is
'教育背景ID';

comment on column T_RM_EDUCATEHISTORY.RESUMEID is
'简历ID';

comment on column T_RM_EDUCATEHISTORY.SCHOONAME is
'学校名称';

comment on column T_RM_EDUCATEHISTORY.MAJOR is
'专业';

comment on column T_RM_EDUCATEHISTORY.EDUCATIONLEVEL is
'最高学历0:初中1:高中2:中技3: 中专4: 大专5: 本科6: 硕士7: 博士';

comment on column T_RM_EDUCATEHISTORY.EDUCATIONNAME is
'学历名称';

comment on column T_RM_EDUCATEHISTORY.STARTDATE is
'学历开始日期';

comment on column T_RM_EDUCATEHISTORY.ENDDATE is
'学历结束日期';

comment on column T_RM_EDUCATEHISTORY.REMARK is
'教育情况描述';

comment on column T_RM_EDUCATEHISTORY.UPDATEUSERID is
'修改人ID';

comment on column T_RM_EDUCATEHISTORY.UPDATEDATE is
'修改时间';

comment on column T_RM_EDUCATEHISTORY.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

/*==============================================================*/
/* Index: "Index_T_RM_EDUCATEHISTORY"                           */
/*==============================================================*/
create index "Index_T_RM_EDUCATEHISTORY" on T_RM_EDUCATEHISTORY (
   RESUMEID ASC
);

/*==============================================================*/
/* Table: T_RM_EMPLOYAPPLY                                      */
/*==============================================================*/
create table T_RM_EMPLOYAPPLY 
(
   EMPLOYAPPLYID        VARCHAR2(50)         not null,
   RESUMEDELIVERYID     VARCHAR2(50)         not null,
   ENTERDATE            DATE,
   PLANENTERDATE        Date,
   ISACCEPTEMPLOIED     VARCHAR2(10),
   RESUMENAME           NVARCHAR2(50)        not null,
   REQUIREPOSTNAME      NVARCHAR2(50),
   REMARK               NVARCHAR2(2000),
   SALARY               NUMBER(10,2)         default 0,
   CLASS                NVARCHAR2(10),
   TRYOUTSALARY         NUMBER(10,2)         default 0,
   FORMALSALARY         NUMBER(10,2)         default 0,
   INCOME               NUMBER(10,2)         default 0,
   PLANDATE             Date,
   SURVEYSTATUS         VARCHAR2(10)         default '1',
   SURVEYRESULT         VARCHAR2(10),
   ENTERLISTSTATUS      VARCHAR2(10),
   ENTERLISTRESULT      VARCHAR2(10),
   CHECKSTATES          VARCHAR2(10)         not null,
   EDITSTATE            VARCHAR2(10)         default '2',
   OWNERID              VARCHAR2(50)         not null,
   OWNERPOSTID          VARCHAR2(50)         not null,
   OWNERDEPARTMENTID    VARCHAR2(50)         not null,
   OWNERCOMPANYID       VARCHAR2(50)         not null,
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   CREATECOMPANYID      VARCHAR2(50),
   CREATEDEPARTMENTID   NVARCHAR2(50),
   CREATEPOSTID         VARCHAR2(50),
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   constraint PK_T_RM_EMPLOYAPPLY primary key (EMPLOYAPPLYID)
);

comment on table T_RM_EMPLOYAPPLY is
'T_RM_EMPLOYAPPLY 入职申请';

comment on column T_RM_EMPLOYAPPLY.EMPLOYAPPLYID is
'入职ID';

comment on column T_RM_EMPLOYAPPLY.RESUMEDELIVERYID is
'简历应聘ID';

comment on column T_RM_EMPLOYAPPLY.ENTERDATE is
'到岗时间';

comment on column T_RM_EMPLOYAPPLY.PLANENTERDATE is
'预计入职日期';

comment on column T_RM_EMPLOYAPPLY.ISACCEPTEMPLOIED is
'应聘者是否答应被录用
1: 否
2：是';

comment on column T_RM_EMPLOYAPPLY.RESUMENAME is
'应聘人姓名';

comment on column T_RM_EMPLOYAPPLY.REQUIREPOSTNAME is
'应聘岗位';

comment on column T_RM_EMPLOYAPPLY.REMARK is
'录用备注';

comment on column T_RM_EMPLOYAPPLY.SALARY is
'薪资要求';

comment on column T_RM_EMPLOYAPPLY.CLASS is
'对应薪资级别';

comment on column T_RM_EMPLOYAPPLY.TRYOUTSALARY is
'试用期月薪';

comment on column T_RM_EMPLOYAPPLY.FORMALSALARY is
'转正月薪';

comment on column T_RM_EMPLOYAPPLY.INCOME is
'年总收入';

comment on column T_RM_EMPLOYAPPLY.PLANDATE is
'到岗时间';

comment on column T_RM_EMPLOYAPPLY.SURVEYSTATUS is
'是否已背景调查1.未调查.2.已调查';

comment on column T_RM_EMPLOYAPPLY.SURVEYRESULT is
'背景调查结果:1.合格.2.不合格.3.未调查';

comment on column T_RM_EMPLOYAPPLY.ENTERLISTSTATUS is
'入职手续状态1.已办理入职手续.2.未办理入职手续';

comment on column T_RM_EMPLOYAPPLY.ENTERLISTRESULT is
'入职手续结果:1.合格.2.不合格';

comment on column T_RM_EMPLOYAPPLY.CHECKSTATES is
'审核状态： CheckStates
///0 未提交 UnSubmit,
///1 审核中 Approving,
/// 2 审核通过 Approved,
///3 审核未通过 UnApproved
///4 待审核
///5 所有';

comment on column T_RM_EMPLOYAPPLY.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

comment on column T_RM_EMPLOYAPPLY.OWNERID is
'所属人ID';

comment on column T_RM_EMPLOYAPPLY.OWNERPOSTID is
'所属岗位ID';

comment on column T_RM_EMPLOYAPPLY.OWNERDEPARTMENTID is
'所属部门ID';

comment on column T_RM_EMPLOYAPPLY.UPDATEUSERID is
'修改人ID';

comment on column T_RM_EMPLOYAPPLY.UPDATEDATE is
'修改时间';

/*==============================================================*/
/* Index: "idx_1_T_RM_EMPLOYAPPLY"                              */
/*==============================================================*/
create index "idx_1_T_RM_EMPLOYAPPLY" on T_RM_EMPLOYAPPLY (
   RESUMENAME ASC
);

/*==============================================================*/
/* Table: T_RM_ENTERLIST                                        */
/*==============================================================*/
create table T_RM_ENTERLIST 
(
   ENTERLISTID          VARCHAR2(50)         not null,
   RESUMEDELIVERYID     VARCHAR2(50)         not null,
   RESUMENAME           NVARCHAR2(50)        not null,
   IDCARDNUMBER         NVARCHAR2(50)        not null,
   IDCARDTYPE           VARCHAR2(10)         default '1',
   CARDPHONE            NVARCHAR2(200),
   CARDRESULT           VARCHAR2(10)         default '3',
   DIPLOMA              NVARCHAR2(50),
   DIPLOMACHECK         VARCHAR2(10),
   DIPLOMAPHONE         NVARCHAR2(200),
   DEGREECARD           NVARCHAR2(50),
   DEGREECARDCHECK      VARCHAR2(10),
   DEGREECARDAPHOTO     NVARCHAR2(200),
   HEALTHTEST           NVARCHAR2(50),
   HEALTHTESTCHECK      VARCHAR2(10),
   HEALTHTESTPHOTO      NVARCHAR2(200),
   DISMISSPAPER         NVARCHAR2(50),
   DISMISSPAPERCHECK    VARCHAR2(10),
   DISMISSPAPERPHOTO    NVARCHAR2(200),
   DISCLAIMER           NVARCHAR2(50),
   DISCLAIMERCHECK      VARCHAR2(10),
   DISCLAIMERPHOTO      NVARCHAR2(200),
   SURETY               NVARCHAR2(50),
   SURETYCHECK          VARCHAR2(10),
   SURETYPATH           NVARCHAR2(200),
   APPOINTCARD          NVARCHAR2(50),
   APPOINTCHECK         VARCHAR2(10),
   APPOINTPHOTO         NVARCHAR2(200),
   JQUALIFY             NVARCHAR2(50),
   JQUALIFYCHECK        VARCHAR2(10),
   JQUALIFYPHOTO        NVARCHAR2(200),
   BANKCARD             NVARCHAR2(50),
   BANKCARDCHECK        VARCHAR2(10),
   BANKCARDPHOTO        NVARCHAR2(200),
   SOCIALCARD           NVARCHAR2(50),
   SOCIALCARDCHECK      VARCHAR2(10),
   SOCIALCARDPHOTO      NVARCHAR2(200),
   HOUSEFCARD           NVARCHAR2(50),
   HOUSEFCARDCHECK      VARCHAR2(10),
   HOUSEFCARDPHONE      NVARCHAR2(200),
   COLORPHOTO           NVARCHAR2(50),
   COLORPHOTOCHECK      VARCHAR2(10),
   "COLORPHOTOPic"      NVARCHAR2(200),
   LABORCON             NVARCHAR2(50),
   LABORCONPHOTO        NVARCHAR2(200),
   LABORCONCHECK        VARCHAR2(10),
   ANOTHER              NVARCHAR2(50),
   ANOTHERPHOTO         NVARCHAR2(200),
   ANOTHERCHECK         VARCHAR2(10),
   RESULT               VARCHAR2(10),
   CHECKSTATES          VARCHAR2(10),
   EDITSTATE            VARCHAR2(10)         default '2',
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   OWNERID              VARCHAR2(50)         not null,
   OWNERPOSTID          VARCHAR2(50)         not null,
   OWNERDEPARTMENTID    VARCHAR2(50)         not null,
   OWNERCOMPANYID       VARCHAR2(50)         not null,
   constraint PK_T_RM_ENTERLIST primary key (ENTERLISTID)
);

comment on table T_RM_ENTERLIST is
'入职手续';

comment on column T_RM_ENTERLIST.ENTERLISTID is
'入职手续ID';

comment on column T_RM_ENTERLIST.RESUMEDELIVERYID is
'简历应聘ID';

comment on column T_RM_ENTERLIST.RESUMENAME is
'应聘者姓名';

comment on column T_RM_ENTERLIST.IDCARDNUMBER is
'身份证号码';

comment on column T_RM_ENTERLIST.IDCARDTYPE is
'身份证件类型1.身份证.2.士官证.3.护照';

comment on column T_RM_ENTERLIST.CARDPHONE is
'证件上传';

comment on column T_RM_ENTERLIST.CARDRESULT is
'1.合格.2.临时身份证.3.未提交 4.过期 5.无法识别.6.虚假';

comment on column T_RM_ENTERLIST.DIPLOMA is
'毕业证';

comment on column T_RM_ENTERLIST.DIPLOMACHECK is
'1.95前，人为判断合格.2.95前，人为判断不合格.3.95前无法提交.4.95(含)年后验证不合格.5.95(含)后无法识别.6.95(含)后无法提交.7.应届毕业生有学校证明.8.等待提交.9.虚假';

comment on column T_RM_ENTERLIST.DIPLOMAPHONE is
'毕业证上传';

comment on column T_RM_ENTERLIST.DEGREECARD is
'学位证';

comment on column T_RM_ENTERLIST.DEGREECARDCHECK is
'1.合格 2.不合格';

comment on column T_RM_ENTERLIST.DEGREECARDAPHOTO is
'学位证上传';

comment on column T_RM_ENTERLIST.HEALTHTEST is
'入职体检表';

comment on column T_RM_ENTERLIST.HEALTHTESTCHECK is
'1.合格 2.不合格';

comment on column T_RM_ENTERLIST.HEALTHTESTPHOTO is
'入职体检表上传';

comment on column T_RM_ENTERLIST.DISMISSPAPER is
'离职证明';

comment on column T_RM_ENTERLIST.DISMISSPAPERCHECK is
'1.核实无误 2.已提交,不合格.3.等待15天内提供.4.无法提供.5.原单位不存，无法提供.6.自由职业，无法提供';

comment on column T_RM_ENTERLIST.DISMISSPAPERPHOTO is
'离职证明上传';

comment on column T_RM_ENTERLIST.DISCLAIMER is
'免责声明';

comment on column T_RM_ENTERLIST.DISCLAIMERCHECK is
'1.合格 2.不合格';

comment on column T_RM_ENTERLIST.DISCLAIMERPHOTO is
'免责声明上传';

comment on column T_RM_ENTERLIST.SURETY is
'担保资料';

comment on column T_RM_ENTERLIST.SURETYCHECK is
'1.合格 2.不合格.3.等待提交';

comment on column T_RM_ENTERLIST.SURETYPATH is
'担保资料上传';

comment on column T_RM_ENTERLIST.APPOINTCARD is
'上岗证';

comment on column T_RM_ENTERLIST.APPOINTCHECK is
'1.合格 2.不合格.3.等待提交';

comment on column T_RM_ENTERLIST.APPOINTPHOTO is
'上岗证上传';

comment on column T_RM_ENTERLIST.JQUALIFY is
'岗位资格证书';

comment on column T_RM_ENTERLIST.JQUALIFYCHECK is
'1.合格 2.不合格.3.等待提交15天内';

comment on column T_RM_ENTERLIST.JQUALIFYPHOTO is
'岗位资格证书上传';

comment on column T_RM_ENTERLIST.BANKCARD is
'银行卡';

comment on column T_RM_ENTERLIST.BANKCARDCHECK is
'1.已提交.2.等待提交';

comment on column T_RM_ENTERLIST.BANKCARDPHOTO is
'银行卡上传';

comment on column T_RM_ENTERLIST.SOCIALCARD is
'社保卡';

comment on column T_RM_ENTERLIST.SOCIALCARDCHECK is
'1.已提交.2.等待提交.3,公司新办';

comment on column T_RM_ENTERLIST.SOCIALCARDPHOTO is
'社保卡上传';

comment on column T_RM_ENTERLIST.HOUSEFCARD is
'住房公积金卡';

comment on column T_RM_ENTERLIST.HOUSEFCARDCHECK is
'1.已提交.2.等待提交.3,公司新办';

comment on column T_RM_ENTERLIST.HOUSEFCARDPHONE is
'住房公积金卡上传';

comment on column T_RM_ENTERLIST.COLORPHOTO is
'彩色照片';

comment on column T_RM_ENTERLIST.COLORPHOTOCHECK is
'1.已提交.2.等待提交';

comment on column T_RM_ENTERLIST."COLORPHOTOPic" is
'彩色照片上传';

comment on column T_RM_ENTERLIST.LABORCON is
'劳动合同';

comment on column T_RM_ENTERLIST.LABORCONPHOTO is
'劳动合同上传';

comment on column T_RM_ENTERLIST.LABORCONCHECK is
'劳动合同检查结果0.未提交 1.已提交';

comment on column T_RM_ENTERLIST.ANOTHER is
'其它';

comment on column T_RM_ENTERLIST.ANOTHERPHOTO is
'其它资料上传';

comment on column T_RM_ENTERLIST.ANOTHERCHECK is
'其它资料检查结果0.未提交 1.已提交';

comment on column T_RM_ENTERLIST.RESULT is
'1.合格 2.不合格';

comment on column T_RM_ENTERLIST.CHECKSTATES is
'审核状态： CheckStates
///0 未提交 UnSubmit,
///1 审核中 Approving,
/// 2 审核通过 Approved,
///3 审核未通过 UnApproved
///4 待审核
///5 所有';

comment on column T_RM_ENTERLIST.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

comment on column T_RM_ENTERLIST.UPDATEUSERID is
'修改人ID';

comment on column T_RM_ENTERLIST.UPDATEDATE is
'修改时间';

comment on column T_RM_ENTERLIST.OWNERID is
'所属人ID';

comment on column T_RM_ENTERLIST.OWNERPOSTID is
'所属岗位ID';

comment on column T_RM_ENTERLIST.OWNERDEPARTMENTID is
'所属部门ID';

/*==============================================================*/
/* Index: "idx_1_T_RM_ENTERLIST"                                */
/*==============================================================*/
create index "idx_1_T_RM_ENTERLIST" on T_RM_ENTERLIST (
   IDCARDNUMBER ASC,
   RESUMENAME ASC
);

/*==============================================================*/
/* Index: "idx_2_T_RM_ENTERLIST"                                */
/*==============================================================*/
create index "idx_2_T_RM_ENTERLIST" on T_RM_ENTERLIST (
   CREATEDATE DESC
);

/*==============================================================*/
/* Table: T_RM_ESTFORNEWER                                      */
/*==============================================================*/
create table T_RM_ESTFORNEWER 
(
   NEWERESTID           VARCHAR2(50)         not null,
   RESUMEDELIVERYID     VARCHAR2(50)         not null,
   INTERVIEWERID        VARCHAR2(50)         not null,
   INTERVIEWERDEPARTMENTID VARCHAR2(50)         not null,
   INTERVIEWERPOSTID    VARCHAR2(50)         not null,
   INTERVIEWERCOMPANYID VARCHAR2(50)         not null,
   SURFACE              VARCHAR2(10),
   COMMU                VARCHAR2(10),
   INNOV                VARCHAR2(10),
   COOPT                VARCHAR2(10),
   ANALYSIS             VARCHAR2(10),
   PROFESSIONAL         VARCHAR2(10),
   POTENTIAL            VARCHAR2(10),
   ENVIR                VARCHAR2(10),
   CULT                 VARCHAR2(10),
   DETAILEST            NVARCHAR2(2000),
   ESTRESULT            VARCHAR2(10)         not null,
   RECPOSTID            NVARCHAR2(50),
   SALARY               NUMBER(10,2)         default 0,
   CLASS                NVARCHAR2(10),
   TRYOUTSALARY         NUMBER(10,2)         default 0,
   FORMALSALARY         NUMBER(10,2)         default 0,
   INCOME               NUMBER(10,2)         default 0,
   PLANDATE             Date,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   OWNERID              VARCHAR2(50)         not null,
   OWNERPOSTID          VARCHAR2(50)         not null,
   OWNERDEPARTMENTID    VARCHAR2(50)         not null,
   OWNERCOMPANYID       VARCHAR2(50)         not null,
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   constraint PK_T_RM_ESTFORNEWER primary key (NEWERESTID)
);

comment on table T_RM_ESTFORNEWER is
'面试官对应聘者的评价';

comment on column T_RM_ESTFORNEWER.NEWERESTID is
'对应聘者的评价ID';

comment on column T_RM_ESTFORNEWER.RESUMEDELIVERYID is
'简历应聘ID';

comment on column T_RM_ESTFORNEWER.INTERVIEWERID is
'面试官ID';

comment on column T_RM_ESTFORNEWER.INTERVIEWERDEPARTMENTID is
'面试官单位部门ID';

comment on column T_RM_ESTFORNEWER.INTERVIEWERPOSTID is
'面试官岗位ID';

comment on column T_RM_ESTFORNEWER.INTERVIEWERCOMPANYID is
'面试官公司ID';

comment on column T_RM_ESTFORNEWER.SURFACE is
'仪表风度1.优秀.2.良好.3.一般.4.较差';

comment on column T_RM_ESTFORNEWER.COMMU is
'沟通能力1.优秀.2.良好.3.一般.4.较差';

comment on column T_RM_ESTFORNEWER.INNOV is
'创新能力1.优秀.2.良好.3.一般.4.较差';

comment on column T_RM_ESTFORNEWER.COOPT is
'协作能力1.优秀.2.良好.3.一般.4.较差';

comment on column T_RM_ESTFORNEWER.ANALYSIS is
'分析能力1.优秀.2.良好.3.一般.4.较差';

comment on column T_RM_ESTFORNEWER.PROFESSIONAL is
'专业能力1.优秀.2.良好.3.一般.4.较差';

comment on column T_RM_ESTFORNEWER.POTENTIAL is
'发展潜力1.优秀.2.良好.3.一般.4.较差';

comment on column T_RM_ESTFORNEWER.ENVIR is
'个人期望与公司环境匹配度1.优秀.2.良好.3.一般.4.较差';

comment on column T_RM_ESTFORNEWER.CULT is
'与公司文化匹配度1.优秀.2.良好.3.一般.4.较差';

comment on column T_RM_ESTFORNEWER.DETAILEST is
'具体评价';

comment on column T_RM_ESTFORNEWER.ESTRESULT is
'评估结论:1.不予录用.2.拟录用.3.推荐他用';

comment on column T_RM_ESTFORNEWER.RECPOSTID is
'推荐岗位ID';

comment on column T_RM_ESTFORNEWER.SALARY is
'薪资要求';

comment on column T_RM_ESTFORNEWER.CLASS is
'对应薪资级别';

comment on column T_RM_ESTFORNEWER.TRYOUTSALARY is
'试用期月薪';

comment on column T_RM_ESTFORNEWER.FORMALSALARY is
'转正月薪';

comment on column T_RM_ESTFORNEWER.INCOME is
'年总收入';

comment on column T_RM_ESTFORNEWER.PLANDATE is
'到岗时间';

comment on column T_RM_ESTFORNEWER.UPDATEUSERID is
'修改人ID';

comment on column T_RM_ESTFORNEWER.UPDATEDATE is
'修改时间';

comment on column T_RM_ESTFORNEWER.OWNERID is
'所属人ID';

comment on column T_RM_ESTFORNEWER.OWNERPOSTID is
'所属岗位ID';

comment on column T_RM_ESTFORNEWER.OWNERDEPARTMENTID is
'所属部门ID';

/*==============================================================*/
/* Index: "idx_1_T_RM_ESTFORNEWER"                              */
/*==============================================================*/
create index "idx_1_T_RM_ESTFORNEWER" on T_RM_ESTFORNEWER (
   CREATEDATE DESC
);

/*==============================================================*/
/* Table: T_RM_ESTFORRECM                                       */
/*==============================================================*/
create table T_RM_ESTFORRECM 
(
   MANAGERESTID         VARCHAR2(50)         not null,
   ESTERID              VARCHAR2(50)         not null,
   ESTER                NVARCHAR2(50)        not null,
   ESTERDEPARTMENTID    VARCHAR2(50)         not null,
   ESTERPOSTID          VARCHAR2(50)         not null,
   ESTERCOMPANYID       VARCHAR2(50)         not null,
   BYESTER              VARCHAR2(50)         not null,
   BYESTDEPARTMENTID    VARCHAR2(50)         not null,
   BYESTCOMPANYID       VARCHAR2(50)         not null,
   DARACOMPLETE         VARCHAR2(10)         default '0',
   SERVICEONTIME        VARCHAR2(10)         default '0',
   CHARACTER            NVARCHAR2(200),
   RESUMEID             VARCHAR2(50)         not null,
   REMARK               NVARCHAR2(2000),
   EDITSTATES           VARCHAR2(10)         default '2',
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   OWNERID              VARCHAR2(50)         not null,
   OWNERPOSTID          VARCHAR2(50)         not null,
   OWNERDEPARTMENTID    VARCHAR2(50)         not null,
   OWNERCOMPANYID       VARCHAR2(50)         not null,
   constraint PK_T_RM_ESTFORRECM primary key (MANAGERESTID)
);

comment on table T_RM_ESTFORRECM is
'面试官对招聘经理的评价';

comment on column T_RM_ESTFORRECM.MANAGERESTID is
'对招聘经理评价ID';

comment on column T_RM_ESTFORRECM.ESTERID is
'评价人ID';

comment on column T_RM_ESTFORRECM.ESTER is
'评价人';

comment on column T_RM_ESTFORRECM.ESTERDEPARTMENTID is
'评价人单位部门';

comment on column T_RM_ESTFORRECM.ESTERPOSTID is
'评价人岗位';

comment on column T_RM_ESTFORRECM.ESTERCOMPANYID is
'评价人公司ID';

comment on column T_RM_ESTFORRECM.BYESTER is
'被价评人';

comment on column T_RM_ESTFORRECM.BYESTDEPARTMENTID is
'被评人部门';

comment on column T_RM_ESTFORRECM.BYESTCOMPANYID is
'被评人公司ID';

comment on column T_RM_ESTFORRECM.DARACOMPLETE is
'资料是否齐全0.未定义.1.是.2.否';

comment on column T_RM_ESTFORRECM.SERVICEONTIME is
'服务是否准时0.未定义.1.准时.2.不准时';

comment on column T_RM_ESTFORRECM.CHARACTER is
'人员质量';

comment on column T_RM_ESTFORRECM.RESUMEID is
'简历ID';

comment on column T_RM_ESTFORRECM.REMARK is
'备注';

comment on column T_RM_ESTFORRECM.EDITSTATES is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

comment on column T_RM_ESTFORRECM.UPDATEUSERID is
'修改人ID';

comment on column T_RM_ESTFORRECM.UPDATEDATE is
'修改时间';

comment on column T_RM_ESTFORRECM.OWNERID is
'所属人ID';

comment on column T_RM_ESTFORRECM.OWNERPOSTID is
'所属岗位ID';

comment on column T_RM_ESTFORRECM.OWNERDEPARTMENTID is
'所属部门ID';

/*==============================================================*/
/* Index: "Index_T_RM_ESTFORRECM"                               */
/*==============================================================*/
create index "Index_T_RM_ESTFORRECM" on T_RM_ESTFORRECM (
   ESTER ASC,
   BYESTER ASC
);

/*==============================================================*/
/* Table: T_RM_ESTFORRECP                                       */
/*==============================================================*/
create table T_RM_ESTFORRECP 
(
   RECPESTID            VARCHAR2(50)         not null,
   ESTERID              VARCHAR2(50)         not null,
   ESTER                NVARCHAR2(50)        not null,
   ESTERDEPARTMENTID    VARCHAR2(50)         not null,
   ESTERPOSTID          VARCHAR2(50)         not null,
   ESTERCOMPANYID       VARCHAR2(50)         not null,
   BYESTDEPARTMENTID    VARCHAR2(50)         not null,
   BYESTCOMPANYID       VARCHAR2(50)         not null,
   BYESTERID            VARCHAR2(50)         not null,
   BYESTER              NVARCHAR2(50)        not null,
   VISITORID            VARCHAR2(50),
   REMARK               NVARCHAR2(2000),
   RECEPTIONITEM        VARCHAR2(10),
   EDITSTATE            VARCHAR2(10)         default '2',
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   OWNERID              VARCHAR2(50)         not null,
   OWNERPOSTID          VARCHAR2(50)         not null,
   OWNERDEPARTMENTID    VARCHAR2(50)         not null,
   OWNERCOMPANYID       VARCHAR2(50)         not null,
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   constraint PK_T_RM_ESTFORRECP primary key (RECPESTID)
);

comment on table T_RM_ESTFORRECP is
'招聘经理对前台接待的评价表';

comment on column T_RM_ESTFORRECP.RECPESTID is
'对前台的评价ID';

comment on column T_RM_ESTFORRECP.ESTERID is
'评价人ID';

comment on column T_RM_ESTFORRECP.ESTER is
'评价人';

comment on column T_RM_ESTFORRECP.ESTERDEPARTMENTID is
'评价人单位部门';

comment on column T_RM_ESTFORRECP.ESTERPOSTID is
'评价人岗位';

comment on column T_RM_ESTFORRECP.ESTERCOMPANYID is
'评价人公司ID';

comment on column T_RM_ESTFORRECP.BYESTDEPARTMENTID is
'被评人部门';

comment on column T_RM_ESTFORRECP.BYESTCOMPANYID is
'被评人公司ID';

comment on column T_RM_ESTFORRECP.BYESTERID is
'被评人ID';

comment on column T_RM_ESTFORRECP.BYESTER is
'被评价人';

comment on column T_RM_ESTFORRECP.VISITORID is
'来访人ID';

comment on column T_RM_ESTFORRECP.REMARK is
'备注';

comment on column T_RM_ESTFORRECP.RECEPTIONITEM is
'接待事项:1.2.表示接待了两项。1.2是接待事项的值.1表倒水，2.公司期刊.依接待事项定义';

comment on column T_RM_ESTFORRECP.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

comment on column T_RM_ESTFORRECP.UPDATEUSERID is
'修改人ID';

comment on column T_RM_ESTFORRECP.UPDATEDATE is
'修改时间';

comment on column T_RM_ESTFORRECP.OWNERID is
'所属人ID';

comment on column T_RM_ESTFORRECP.OWNERPOSTID is
'所属岗位ID';

comment on column T_RM_ESTFORRECP.OWNERDEPARTMENTID is
'所属部门ID';

/*==============================================================*/
/* Index: "idx_1_T_RM_ESTFORRECP"                               */
/*==============================================================*/
create index "idx_1_T_RM_ESTFORRECP" on T_RM_ESTFORRECP (
   ESTER ASC,
   BYESTER ASC
);

/*==============================================================*/
/* Table: T_RM_ESTFORVIEWER                                     */
/*==============================================================*/
create table T_RM_ESTFORVIEWER 
(
   VIEWERESTID          VARCHAR2(50)         not null,
   ESTER                NVARCHAR2(50)        not null,
   ESTERID              VARCHAR2(50)         not null,
   ESTERDEPARTMENTID    NVARCHAR2(50)        not null,
   ESTPOSTID            VARCHAR2(50)         not null,
   ESTCOMPANYID         NVARCHAR2(50)        not null,
   BYESTDEPARTMENTID    NVARCHAR2(50)        not null,
   BYESTCOMPANYID       NVARCHAR2(50)        not null,
   BYESTERID            VARCHAR2(50)         not null,
   BYESTER              NVARCHAR2(50),
   RESUMEID             VARCHAR2(50)         not null,
   REMARK               NVARCHAR2(2000),
   ATTENDSTATUS         VARCHAR2(10),
   EDITSTATE            VARCHAR2(10)         default '2',
   OWNERID              VARCHAR2(50)         not null,
   OWNERPOSTID          VARCHAR2(50)         not null,
   OWNERDEPARTMENTID    VARCHAR2(50)         not null,
   OWNERCOMPANYID       VARCHAR2(50)         not null,
   constraint PK_T_RM_ESTFORVIEWER primary key (VIEWERESTID)
);

comment on table T_RM_ESTFORVIEWER is
'招聘经理对面试官评价';

comment on column T_RM_ESTFORVIEWER.VIEWERESTID is
'对面试官评价ID';

comment on column T_RM_ESTFORVIEWER.ESTER is
'评价人';

comment on column T_RM_ESTFORVIEWER.ESTERID is
'评价人ID';

comment on column T_RM_ESTFORVIEWER.ESTERDEPARTMENTID is
'评价人单位部门ID';

comment on column T_RM_ESTFORVIEWER.ESTPOSTID is
'评价人岗位ID';

comment on column T_RM_ESTFORVIEWER.ESTCOMPANYID is
'评价人公司ID';

comment on column T_RM_ESTFORVIEWER.BYESTDEPARTMENTID is
'被评人部门';

comment on column T_RM_ESTFORVIEWER.BYESTCOMPANYID is
'被评人公司ID';

comment on column T_RM_ESTFORVIEWER.BYESTERID is
'被评价人ID';

comment on column T_RM_ESTFORVIEWER.RESUMEID is
'简历ID';

comment on column T_RM_ESTFORVIEWER.REMARK is
'备注';

comment on column T_RM_ESTFORVIEWER.ATTENDSTATUS is
'出勤状况:1.正常.2.缺席.3迟到.4.早退';

comment on column T_RM_ESTFORVIEWER.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

comment on column T_RM_ESTFORVIEWER.OWNERID is
'所属人ID';

comment on column T_RM_ESTFORVIEWER.OWNERPOSTID is
'所属岗位ID';

comment on column T_RM_ESTFORVIEWER.OWNERDEPARTMENTID is
'所属部门ID';

/*==============================================================*/
/* Index: "idx_1_T_RM_ESTFORVIEWER"                             */
/*==============================================================*/
create index "idx_1_T_RM_ESTFORVIEWER" on T_RM_ESTFORVIEWER (
   ESTER ASC,
   BYESTER ASC
);

/*==============================================================*/
/* Table: T_RM_EXAMRESULT                                       */
/*==============================================================*/
create table T_RM_EXAMRESULT 
(
   REQEXAMID            VARCHAR2(50)         not null,
   REQUIREAPPLYID       VARCHAR2(50)         not null,
   EXAMID               VARCHAR2(50)         not null,
   EXAMTYPE             VARCHAR2(50),
   EXAMPAPERID          VARCHAR2(50),
   EXAMPAPERNAME        VARCHAR2(50),
   REQUIRECOMPANYID     VARCHAR2(50),
   REQUIREDEPARTMENTID  VARCHAR2(50),
   REQUIREPOSTID        VARCHAR2(50),
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   EDITSTATE            VARCHAR2(10)         default '2',
   constraint PK_T_RM_EXAMRESULT primary key (REQEXAMID)
);

comment on table T_RM_EXAMRESULT is
'T_RM_EXAMRESULT 电话初试与面试';

comment on column T_RM_EXAMRESULT.REQEXAMID is
'需求考试ID';

comment on column T_RM_EXAMRESULT.REQUIREAPPLYID is
'需求ID';

comment on column T_RM_EXAMRESULT.EXAMID is
'考试ID';

comment on column T_RM_EXAMRESULT.EXAMTYPE is
'试卷类型.1.电话初试 .2.面试笔试';

comment on column T_RM_EXAMRESULT.EXAMPAPERID is
'试卷ID';

comment on column T_RM_EXAMRESULT.EXAMPAPERNAME is
'试卷名称';

comment on column T_RM_EXAMRESULT.REQUIRECOMPANYID is
'需求公司ID';

comment on column T_RM_EXAMRESULT.REQUIREDEPARTMENTID is
'需求部门ID';

comment on column T_RM_EXAMRESULT.REQUIREPOSTID is
'需求岗位ID';

comment on column T_RM_EXAMRESULT.UPDATEUSERID is
'修改人ID';

comment on column T_RM_EXAMRESULT.UPDATEDATE is
'修改时间';

comment on column T_RM_EXAMRESULT.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

/*==============================================================*/
/* Index: "idx_1_T_RM_EXAMRESULT"                               */
/*==============================================================*/
create index "idx_1_T_RM_EXAMRESULT" on T_RM_EXAMRESULT (
   CREATEDATE DESC
);

/*==============================================================*/
/* Table: T_RM_EXAMTEM                                          */
/*==============================================================*/
create table T_RM_EXAMTEM 
(
   EXAMID               VARCHAR2(50)         not null,
   EXAMNAME             NVARCHAR2(50),
   SCORE                NUMBER(5,2),
   constraint PK_T_RM_EXAMTEM primary key (EXAMID)
);

comment on table T_RM_EXAMTEM is
'考试';

comment on column T_RM_EXAMTEM.EXAMID is
'考试ID';

comment on column T_RM_EXAMTEM.EXAMNAME is
'考试名称';

comment on column T_RM_EXAMTEM.SCORE is
'考试成绩';

/*==============================================================*/
/* Index: "idx_1_T_RM_EXAMTEM"                                  */
/*==============================================================*/
create index "idx_1_T_RM_EXAMTEM" on T_RM_EXAMTEM (
   EXAMNAME ASC
);

/*==============================================================*/
/* Table: T_RM_EXPERIENCE                                       */
/*==============================================================*/
create table T_RM_EXPERIENCE 
(
   EXPERIENCEID         NVARCHAR2(50)        not null,
   RESUMEID             VARCHAR2(50)         not null,
   COMPANYNAME          NVARCHAR2(50)        not null,
   POST                 NVARCHAR2(50)        not null,
   SALARY               NVARCHAR2(50)        default '0',
   STARTDATE            NVARCHAR2(50)        not null,
   ENDDATE              NVARCHAR2(50)        not null,
   JOBDESCRIPTION       NVARCHAR2(2000),
   VOUCHER              NVARCHAR2(50),
   VOUCHERPHONE         NVARCHAR2(50),
   REMARK               NVARCHAR2(2000),
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   CREATECOMPANYID      VARCHAR2(50),
   CREATEDEPARTMENTID   VARCHAR2(50),
   CREATEPOSTID         VARCHAR2(50),
   EDITSTATE            VARCHAR2(10)         default '2',
   constraint PK_T_RM_EXPERIENCE primary key (EXPERIENCEID)
);

comment on table T_RM_EXPERIENCE is
'工作经历';

comment on column T_RM_EXPERIENCE.EXPERIENCEID is
'工作经历ID';

comment on column T_RM_EXPERIENCE.RESUMEID is
'简历ID';

comment on column T_RM_EXPERIENCE.COMPANYNAME is
'曾工作公司';

comment on column T_RM_EXPERIENCE.POST is
'工作岗位';

comment on column T_RM_EXPERIENCE.SALARY is
'月薪';

comment on column T_RM_EXPERIENCE.STARTDATE is
'工作开始日期';

comment on column T_RM_EXPERIENCE.ENDDATE is
'工作结束日期';

comment on column T_RM_EXPERIENCE.JOBDESCRIPTION is
'工作描述';

comment on column T_RM_EXPERIENCE.VOUCHER is
'证明人';

comment on column T_RM_EXPERIENCE.VOUCHERPHONE is
'证明人联系电话';

comment on column T_RM_EXPERIENCE.UPDATEUSERID is
'修改人ID';

comment on column T_RM_EXPERIENCE.UPDATEDATE is
'修改时间';

comment on column T_RM_EXPERIENCE.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

/*==============================================================*/
/* Index: "Index_T_RM_EXPERIENCE"                               */
/*==============================================================*/
create index "Index_T_RM_EXPERIENCE" on T_RM_EXPERIENCE (
   RESUMEID ASC
);

/*==============================================================*/
/* Table: T_RM_HEALTHDATA                                       */
/*==============================================================*/
create table T_RM_HEALTHDATA 
(
   HEALTHID             VARCHAR2(50)         not null,
   RESUMEDELIVERYID     VARCHAR2(50)         not null,
   RESUMENAME           NVARCHAR2(16)        not null,
   YEARMONTH            VARCHAR2(50),
   SEX                  VARCHAR2(10),
   AGE                  NUMBER(4,0)          default 0,
   MARRIAGE             VARCHAR2(10),
   CURRENTADDRESS       NVARCHAR2(200),
   HEIGHT               NUMBER(5, 2),
   WEIGHT               NUMBER(5, 2),
   POST                 NVARCHAR2(200),
   LSIGHT               VARCHAR2(10),
   LSIGHTP              NVARCHAR2(200),
   RSIGHT               VARCHAR2(10),
   RSIGHTP              NVARCHAR2(200),
   LEAR                 VARCHAR2(10),
   LEARP                NVARCHAR2(200),
   REAR                 VARCHAR2(10),
   REARP                NVARCHAR2(200),
   EARDISEASE           VARCHAR2(10),
   EARDISEASEP          NVARCHAR2(200),
   NOSEDISEASE          VARCHAR2(10),
   NOSEDISEASEP         NVARCHAR2(200),
   COLORVISION          VARCHAR2(10),
   COLORVISIONP         NVARCHAR2(200),
   BLOODPRESSURE        VARCHAR2(10),
   BLOODPRESSUREP       NVARCHAR2(200),
   FAUCE                VARCHAR2(10),
   FAUCEP               NVARCHAR2(200),
   CHUNE                VARCHAR2(10),
   CHUNEP               NVARCHAR2(200),
   DENTALCARIES         VARCHAR2(10),
   DENTALCARIESP        NVARCHAR2(200),
   MISSTOOTH            VARCHAR2(10),
   MISSTOOTHP           NVARCHAR2(200),
   PERIODONTAL          VARCHAR2(10),
   PERIODONTALP         NVARCHAR2(200),
   STUTTER              VARCHAR2(10),
   STUTTERP             NVARCHAR2(200),
   BUST                 VARCHAR2(10),
   BUSTP                NVARCHAR2(200),
   BRESTHDIFF           VARCHAR2(10),
   BRESTHDIFFP          NVARCHAR2(200),
   THYROID              VARCHAR2(10),
   THYROIDP             NVARCHAR2(200),
   SKIN                 VARCHAR2(10),
   SKINP                NVARCHAR2(200),
   SPINE                VARCHAR2(10),
   SPINEP               NVARCHAR2(200),
   LIMB                 VARCHAR2(10),
   LIMBP                NVARCHAR2(200),
   JOINT                VARCHAR2(10),
   JOINTP               NVARCHAR2(200),
   LYMPH                VARCHAR2(10),
   LYMPHP               NVARCHAR2(200),
   COLIC                VARCHAR2(10),
   COLICP               NVARCHAR2(200),
   BELLY                VARCHAR2(10),
   BELLYP               NVARCHAR2(200),
   NEURAL               VARCHAR2(10),
   NEURALP              NVARCHAR2(200),
   PSYCHIATRICHIST      VARCHAR2(10),
   PSYCHIATRICHISTP     NVARCHAR2(200),
   LUNGRES              VARCHAR2(10),
   LUNGRESP             NVARCHAR2(200),
   HEARTBLOOD           VARCHAR2(10),
   HEARTBLOODP          NVARCHAR2(200),
   LIVER                VARCHAR2(10),
   LIVERP               NVARCHAR2(200),
   SPLEEN               VARCHAR2(10),
   SPLEENP              NVARCHAR2(200),
   CHESTXRAY            VARCHAR2(10),
   CHESTXRAYP           NVARCHAR2(200),
   ANTHOR               VARCHAR2(10),
   ANTHORP              NVARCHAR2(200),
   BLOOD                VARCHAR2(10),
   BLOODP               NVARCHAR2(200),
   HBSAG                VARCHAR2(10),
   HBSAGP               NVARCHAR2(200),
   HBSAB                VARCHAR2(10),
   HBSABP               NVARCHAR2(200),
   HBEAG                VARCHAR2(10),
   HBEAGP               NVARCHAR2(200),
   HBEAB                VARCHAR2(10),
   HBEABP               NVARCHAR2(200),
   HBCAB                VARCHAR2(10),
   HBCABP               NVARCHAR2(200),
   RESULT               VARCHAR2(10),
   EDITSTATE            VARCHAR2(10)         default '2',
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   constraint PK_T_RM_HEALTHDATA primary key (HEALTHID)
);

comment on table T_RM_HEALTHDATA is
'体检明细';

comment on column T_RM_HEALTHDATA.HEALTHID is
'健康ID';

comment on column T_RM_HEALTHDATA.RESUMENAME is
'应聘者姓名';

comment on column T_RM_HEALTHDATA.YEARMONTH is
'年度';

comment on column T_RM_HEALTHDATA.SEX is
'性别1.男.2.女';

comment on column T_RM_HEALTHDATA.AGE is
'年龄';

comment on column T_RM_HEALTHDATA.MARRIAGE is
'婚姻状况1.已婚.2.未婚';

comment on column T_RM_HEALTHDATA.CURRENTADDRESS is
'住址';

comment on column T_RM_HEALTHDATA.HEIGHT is
'身高cm';

comment on column T_RM_HEALTHDATA.WEIGHT is
'体重kg';

comment on column T_RM_HEALTHDATA.POST is
'应聘职位';

comment on column T_RM_HEALTHDATA.LSIGHT is
'裸眼视力左.1合格.2不合格';

comment on column T_RM_HEALTHDATA.LSIGHTP is
'裸眼视力左参数';

comment on column T_RM_HEALTHDATA.RSIGHT is
'裸眼视力右1合格.2不合格';

comment on column T_RM_HEALTHDATA.RSIGHTP is
'裸眼视力右参数';

comment on column T_RM_HEALTHDATA.LEAR is
'听力左1合格.2不合格';

comment on column T_RM_HEALTHDATA.LEARP is
'听力左参数';

comment on column T_RM_HEALTHDATA.REAR is
'听力右1合格.2不合格';

comment on column T_RM_HEALTHDATA.REARP is
'听力右参数';

comment on column T_RM_HEALTHDATA.EARDISEASE is
'耳疾1合格.2不合格';

comment on column T_RM_HEALTHDATA.EARDISEASEP is
'耳疾参数';

comment on column T_RM_HEALTHDATA.NOSEDISEASE is
'鼻疾1合格.2不合格';

comment on column T_RM_HEALTHDATA.NOSEDISEASEP is
'鼻疾参数';

comment on column T_RM_HEALTHDATA.COLORVISION is
'色觉1合格.2不合格';

comment on column T_RM_HEALTHDATA.COLORVISIONP is
'色觉参数';

comment on column T_RM_HEALTHDATA.BLOODPRESSURE is
'血压 1合格.2不合格';

comment on column T_RM_HEALTHDATA.BLOODPRESSUREP is
'血压参数';

comment on column T_RM_HEALTHDATA.FAUCE is
'咽喉 1合格.2不合格';

comment on column T_RM_HEALTHDATA.FAUCEP is
'咽喉参数';

comment on column T_RM_HEALTHDATA.CHUNE is
'唇腭1合格.2不合格';

comment on column T_RM_HEALTHDATA.CHUNEP is
'唇腭参数';

comment on column T_RM_HEALTHDATA.DENTALCARIES is
'龋齿1合格.2不合格';

comment on column T_RM_HEALTHDATA.DENTALCARIESP is
'龋齿参数';

comment on column T_RM_HEALTHDATA.MISSTOOTH is
'缺齿1合格.2不合格';

comment on column T_RM_HEALTHDATA.MISSTOOTHP is
'缺齿参数';

comment on column T_RM_HEALTHDATA.PERIODONTAL is
'牙周疾病1合格.2不合格';

comment on column T_RM_HEALTHDATA.PERIODONTALP is
'牙周疾病参数';

comment on column T_RM_HEALTHDATA.STUTTER is
'口吃1合格.2不合格';

comment on column T_RM_HEALTHDATA.STUTTERP is
'口吃参数';

comment on column T_RM_HEALTHDATA.BUST is
'胸围1合格.2不合格';

comment on column T_RM_HEALTHDATA.BUSTP is
'胸围参数';

comment on column T_RM_HEALTHDATA.BRESTHDIFF is
'呼吸差1合格.2不合格';

comment on column T_RM_HEALTHDATA.BRESTHDIFFP is
'呼吸差参数';

comment on column T_RM_HEALTHDATA.THYROID is
'甲状腺1合格.2不合格';

comment on column T_RM_HEALTHDATA.THYROIDP is
'甲状腺参数';

comment on column T_RM_HEALTHDATA.SKIN is
'皮肤1合格.2不合格';

comment on column T_RM_HEALTHDATA.SKINP is
'皮肤参数';

comment on column T_RM_HEALTHDATA.SPINE is
'脊柱1合格.2不合格';

comment on column T_RM_HEALTHDATA.SPINEP is
'脊柱参数';

comment on column T_RM_HEALTHDATA.LIMB is
'四肢1合格.2不合格';

comment on column T_RM_HEALTHDATA.LIMBP is
'四肢参数';

comment on column T_RM_HEALTHDATA.JOINT is
'关节1合格.2不合格';

comment on column T_RM_HEALTHDATA.JOINTP is
'关节参数';

comment on column T_RM_HEALTHDATA.LYMPH is
'淋巴1合格.2不合格';

comment on column T_RM_HEALTHDATA.LYMPHP is
'淋巴参数';

comment on column T_RM_HEALTHDATA.COLIC is
'疝气1合格.2不合格';

comment on column T_RM_HEALTHDATA.COLICP is
'疝气参数';

comment on column T_RM_HEALTHDATA.BELLY is
'腹部1合格.2不合格';

comment on column T_RM_HEALTHDATA.BELLYP is
'腹部参数';

comment on column T_RM_HEALTHDATA.NEURAL is
'神经系统1合格.2不合格';

comment on column T_RM_HEALTHDATA.NEURALP is
'神经系统参数';

comment on column T_RM_HEALTHDATA.PSYCHIATRICHIST is
'精神病史1合格.2不合格';

comment on column T_RM_HEALTHDATA.PSYCHIATRICHISTP is
'精神病史参数';

comment on column T_RM_HEALTHDATA.LUNGRES is
'肺及呼吸道1合格.2不合格';

comment on column T_RM_HEALTHDATA.LUNGRESP is
'肺及呼吸道参数';

comment on column T_RM_HEALTHDATA.HEARTBLOOD is
'心脏及血管1合格.2不合格';

comment on column T_RM_HEALTHDATA.HEARTBLOODP is
'心脏及血管参数';

comment on column T_RM_HEALTHDATA.LIVER is
'肝脏1合格.2不合格';

comment on column T_RM_HEALTHDATA.LIVERP is
'肝脏参数';

comment on column T_RM_HEALTHDATA.SPLEEN is
'脾脏1合格.2不合格';

comment on column T_RM_HEALTHDATA.SPLEENP is
'脾脏参数';

comment on column T_RM_HEALTHDATA.CHESTXRAY is
'胸部X光1合格.2不合格';

comment on column T_RM_HEALTHDATA.CHESTXRAYP is
'胸部X光';

comment on column T_RM_HEALTHDATA.ANTHOR is
'其它1合格.2不合格';

comment on column T_RM_HEALTHDATA.ANTHORP is
'其它参数';

comment on column T_RM_HEALTHDATA.BLOOD is
'血常规1合格.2不合格';

comment on column T_RM_HEALTHDATA.BLOODP is
'血常规参数';

comment on column T_RM_HEALTHDATA.HBSAG is
'HBSAg1合格.2不合格';

comment on column T_RM_HEALTHDATA.HBSAGP is
'HBSAg参数';

comment on column T_RM_HEALTHDATA.HBSAB is
'HBSAb1合格.2不合格';

comment on column T_RM_HEALTHDATA.HBSABP is
'HBSAb参数';

comment on column T_RM_HEALTHDATA.HBEAG is
'HBEAG1合格.2不合格';

comment on column T_RM_HEALTHDATA.HBEAGP is
'HBEAG参数';

comment on column T_RM_HEALTHDATA.HBEAB is
'hBeAb1合格.2不合格';

comment on column T_RM_HEALTHDATA.HBEABP is
'hBeAb参数';

comment on column T_RM_HEALTHDATA.HBCAB is
'hBcAb1合格.2不合格';

comment on column T_RM_HEALTHDATA.HBCABP is
'hBcAb参数';

comment on column T_RM_HEALTHDATA.RESULT is
'检查结果:1合格.2不合格';

comment on column T_RM_HEALTHDATA.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

comment on column T_RM_HEALTHDATA.UPDATEUSERID is
'修改人ID';

comment on column T_RM_HEALTHDATA.UPDATEDATE is
'修改时间';

/*==============================================================*/
/* Index: "idx_1_T_RM_HEALTHDATA"                               */
/*==============================================================*/
create index "idx_1_T_RM_HEALTHDATA" on T_RM_HEALTHDATA (
   RESUMENAME ASC
);

/*==============================================================*/
/* Index: "idx_2_T_RM_HEALTHDATA"                               */
/*==============================================================*/
create index "idx_2_T_RM_HEALTHDATA" on T_RM_HEALTHDATA (
   CREATEDATE DESC
);

/*==============================================================*/
/* Table: T_RM_HRPRINC                                          */
/*==============================================================*/
create table T_RM_HRPRINC 
(
   CLASSID              NVARCHAR2(50)        not null,
   PRINCPOSTID          NVARCHAR2(50)        not null,
   PRINCCOMPANYID       VARCHAR2(50)         not null,
   PRINCDEPARTMENTID    VARCHAR2(50)         not null,
   CHECKSTATES          VARCHAR2(10)         not null,
   EDITSTATE            VARCHAR2(10)         default '2',
   ISSENDBUMF           VARCHAR2(10)         default '0' not null,
   BUMFSCOPE            VARCHAR2(10)         default '0' not null,
   OWNERID              VARCHAR2(50)         not null,
   OWNERPOSTID          VARCHAR2(50)         not null,
   OWNERDEPARTMENTID    VARCHAR2(50)         not null,
   OWNERCOMPANYID       VARCHAR2(50)         not null,
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   CREATECOMPANYID      VARCHAR2(50),
   CREATEDEPARTMENTID   NVARCHAR2(50),
   CREATEPOSTID         VARCHAR2(50),
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   constraint PK_T_RM_HRPRINC primary key (CLASSID)
);

comment on table T_RM_HRPRINC is
'对不同级别的岗位设定人事招聘责任人';

comment on column T_RM_HRPRINC.CLASSID is
'级别';

comment on column T_RM_HRPRINC.PRINCPOSTID is
'责任岗位ID';

comment on column T_RM_HRPRINC.PRINCCOMPANYID is
'责任人公司ID';

comment on column T_RM_HRPRINC.PRINCDEPARTMENTID is
'责任人部门ID';

comment on column T_RM_HRPRINC.CHECKSTATES is
'审核状态： CheckStates
///0 未提交 UnSubmit,
///1 审核中 Approving,
/// 2 审核通过 Approved,
///3 审核未通过 UnApproved
///4 待审核
///5 所有';

comment on column T_RM_HRPRINC.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

comment on column T_RM_HRPRINC.ISSENDBUMF is
'是否需要发公文0.不需要.1.需要';

comment on column T_RM_HRPRINC.BUMFSCOPE is
'发公文的范围0.不需要.1.本公司.2.集团';

comment on column T_RM_HRPRINC.OWNERID is
'所属人ID';

comment on column T_RM_HRPRINC.OWNERPOSTID is
'所属岗位ID';

comment on column T_RM_HRPRINC.OWNERDEPARTMENTID is
'所属部门ID';

comment on column T_RM_HRPRINC.OWNERCOMPANYID is
'所属公司ID';

comment on column T_RM_HRPRINC.CREATEUSERID is
'创建人';

comment on column T_RM_HRPRINC.CREATEDATE is
'创建时间';

comment on column T_RM_HRPRINC.CREATECOMPANYID is
'创建人公司ID';

comment on column T_RM_HRPRINC.CREATEDEPARTMENTID is
'创建人部门ID';

comment on column T_RM_HRPRINC.CREATEPOSTID is
'创建人岗位ID';

comment on column T_RM_HRPRINC.UPDATEUSERID is
'修改人ID';

comment on column T_RM_HRPRINC.UPDATEDATE is
'修改时间';

/*==============================================================*/
/* Table: T_RM_INTERVIEW                                        */
/*==============================================================*/
create table T_RM_INTERVIEW 
(
   INTERVIEWID          VARCHAR2(50)         not null,
   RESUMEDELIVERYID     VARCHAR2(50)         not null,
   NOTIFYID             VARCHAR2(50)         not null,
   STAGE                VARCHAR2(10)         default '’0‘',
   STAGENAME            NVARCHAR2(50),
   INTERVIEWRESULT      VARCHAR2(10)         default '’0‘',
   INTERVIEWRESULTNAME  NVARCHAR2(50),
   REJECTTYPE           VARCHAR2(10)         default '’0‘',
   REJECTTYPENAME       NVARCHAR2(50),
   REJECTREASON         NVARCHAR2(2000),
   INTERVIEWREMARK      NVARCHAR2(2000),
   EXAMID               VARCHAR2(50),
   EXAMTYPE             VARCHAR2(50),
   SCORE                NUMBER(5,2),
   PLANVIEWSTART        DATE,
   PLANVIEWEND          DATE,
   ISEXAM               VARCHAR2(10)         default '0',
   ISINTERVIEW          VARCHAR2(10)         default '0',
   INTERVIEWTIMESTART   DATE,
   INTERVIEWTIMEEND     DATE,
   EDITSTATE            VARCHAR2(10)         default '2',
   OWNERID              VARCHAR2(50)         not null,
   OWNERPOSTID          VARCHAR2(50)         not null,
   OWNERDEPARTMENTID    VARCHAR2(50)         not null,
   OWNERCOMPANYID       VARCHAR2(50)         not null,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   constraint PK_T_RM_INTERVIEW primary key (INTERVIEWID)
);

comment on table T_RM_INTERVIEW is
'面试,电话初试和复试的面试ID不一样.复试的记录是在发面试官面试预约通知时.电话初试';

comment on column T_RM_INTERVIEW.INTERVIEWID is
'面试ID';

comment on column T_RM_INTERVIEW.RESUMEDELIVERYID is
'简历应聘ID';

comment on column T_RM_INTERVIEW.NOTIFYID is
'通知ID';

comment on column T_RM_INTERVIEW.STAGE is
'面试阶段0.未分类;1.电话初始.2.复试.3.在职';

comment on column T_RM_INTERVIEW.STAGENAME is
'面试阶段名';

comment on column T_RM_INTERVIEW.INTERVIEWRESULT is
'0.未面试 .1未通知 2.合格.3.不合格.4.拒绝参加..5.人才储备6.推荐更高岗位';

comment on column T_RM_INTERVIEW.INTERVIEWRESULTNAME is
'面试结果名';

comment on column T_RM_INTERVIEW.REJECTTYPE is
'0.未定义1.暂不想换工作.2.离开本地.3.其它';

comment on column T_RM_INTERVIEW.REJECTTYPENAME is
'拒绝类型名';

comment on column T_RM_INTERVIEW.REJECTREASON is
'拒绝原因';

comment on column T_RM_INTERVIEW.EXAMID is
'考试ID';

comment on column T_RM_INTERVIEW.EXAMTYPE is
'考试类型.1.电话初试 .2.面试笔试';

comment on column T_RM_INTERVIEW.SCORE is
'分数';

comment on column T_RM_INTERVIEW.PLANVIEWSTART is
'计划面试开始时间';

comment on column T_RM_INTERVIEW.PLANVIEWEND is
'计划面试结束时间';

comment on column T_RM_INTERVIEW.ISEXAM is
'是否已考试0.未定义1.未考试 2.已考试';

comment on column T_RM_INTERVIEW.ISINTERVIEW is
'是否已面谈0.未定义1.未面谈 2.已面谈';

comment on column T_RM_INTERVIEW.INTERVIEWTIMESTART is
'面试开始时间';

comment on column T_RM_INTERVIEW.INTERVIEWTIMEEND is
'面试结束时间';

comment on column T_RM_INTERVIEW.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

comment on column T_RM_INTERVIEW.OWNERID is
'所属人ID';

comment on column T_RM_INTERVIEW.OWNERPOSTID is
'所属岗位ID';

comment on column T_RM_INTERVIEW.OWNERDEPARTMENTID is
'所属部门ID';

comment on column T_RM_INTERVIEW.UPDATEUSERID is
'修改人ID';

comment on column T_RM_INTERVIEW.UPDATEDATE is
'修改时间';

/*==============================================================*/
/* Index: "idx_1_T_RM_INTERVIEW"                                */
/*==============================================================*/
create index "idx_1_T_RM_INTERVIEW" on T_RM_INTERVIEW (
   CREATEDATE DESC
);

/*==============================================================*/
/* Table: T_RM_INTERVIEWER                                      */
/*==============================================================*/
create table T_RM_INTERVIEWER 
(
   INTERVIEWERUID       VARCHAR2(50)         not null,
   INTERVIEWERID        VARCHAR2(50)         not null,
   REQUIREAPPLYID       VARCHAR2(50)         not null,
   REQUIRECOMPANYID     VARCHAR2(50)         not null,
   REQUIREDEPARTMENTID  VARCHAR2(50)         not null,
   REQUIREPOSTID        VARCHAR2(50)         not null,
   SORTNO               NUMBER(3,0),
   INTERVIEWERNAME      NVARCHAR2(50),
   INTERVIEWERCOMPANYID VARCHAR2(50)         not null,
   INTERVIEWERCOMPANYNAME NVARCHAR2(50)        default ' ' not null,
   INTERVIEWERDEPARTMENTID VARCHAR2(50)         not null,
   INTERVIEWERDEPARTMENTNAME NVARCHAR2(50)        default ' ' not null,
   INTERVIEWERPOSTID    VARCHAR2(50)         not null,
   INTERVIEWERPOSTNAME  NVARCHAR2(50)        default ' ' not null,
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   EDITSTATE            VARCHAR2(10)         default '2',
   constraint PK_T_RM_INTERVIEWER primary key (INTERVIEWERUID)
);

comment on table T_RM_INTERVIEWER is
'T_RM_INTERVIEWER 面试官';

comment on column T_RM_INTERVIEWER.INTERVIEWERUID is
'需求面试官ID';

comment on column T_RM_INTERVIEWER.INTERVIEWERID is
'面试官ID';

comment on column T_RM_INTERVIEWER.REQUIREAPPLYID is
'需求ID';

comment on column T_RM_INTERVIEWER.REQUIRECOMPANYID is
'需求公司ID';

comment on column T_RM_INTERVIEWER.REQUIREDEPARTMENTID is
'需求部门ID';

comment on column T_RM_INTERVIEWER.REQUIREPOSTID is
'需求岗位ID';

comment on column T_RM_INTERVIEWER.SORTNO is
'面试官序号';

comment on column T_RM_INTERVIEWER.INTERVIEWERNAME is
'面试官姓名';

comment on column T_RM_INTERVIEWER.INTERVIEWERCOMPANYID is
'面试官公司ID';

comment on column T_RM_INTERVIEWER.INTERVIEWERCOMPANYNAME is
'面试官公司名';

comment on column T_RM_INTERVIEWER.INTERVIEWERDEPARTMENTID is
'面试官部门ID';

comment on column T_RM_INTERVIEWER.INTERVIEWERDEPARTMENTNAME is
'面试官部门名';

comment on column T_RM_INTERVIEWER.INTERVIEWERPOSTID is
'面试官岗位ID';

comment on column T_RM_INTERVIEWER.INTERVIEWERPOSTNAME is
'面试官岗位名';

comment on column T_RM_INTERVIEWER.CREATEUSERID is
'创建人';

comment on column T_RM_INTERVIEWER.CREATEDATE is
'创建时间';

comment on column T_RM_INTERVIEWER.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

/*==============================================================*/
/* Index: "idx_1_T_RM_INTERVIEWER"                              */
/*==============================================================*/
create index "idx_1_T_RM_INTERVIEWER" on T_RM_INTERVIEWER (
   INTERVIEWERNAME ASC,
   INTERVIEWERDEPARTMENTNAME ASC,
   INTERVIEWERCOMPANYNAME ASC
);

/*==============================================================*/
/* Index: "idx_2_T_RM_INTERVIEWER"                              */
/*==============================================================*/
create index "idx_2_T_RM_INTERVIEWER" on T_RM_INTERVIEWER (
   CREATEDATE ASC
);

/*==============================================================*/
/* Table: T_RM_MESSAGETEMPLATE                                  */
/*==============================================================*/
create table T_RM_MESSAGETEMPLATE 
(
   MESSAGETEMPLATEID    VARCHAR2(50)         not null,
   MESSAGETEMPLATENAME  NVARCHAR2(50)        not null,
   CLASSNAME            NVARCHAR2(50),
   MESSAGE              NVARCHAR2(2000)      not null,
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   MESSAGETEMPLATETYPE  VARCHAR2(10)         not null,
   CHECKSTATES          VARCHAR2(10)         not null,
   EDITSTATE            VARCHAR2(10)         default '2',
   OWNERID              VARCHAR2(50)         not null,
   OWNERPOSTID          VARCHAR2(50)         not null,
   OWNERDEPARTMENTID    VARCHAR2(50)         not null,
   OWNERCOMPANYID       VARCHAR2(50)         not null,
   OWNERNAME            NVARCHAR2(50)        not null,
   constraint PK_T_RM_MESSAGETEMPLATE primary key (MESSAGETEMPLATEID)
);

comment on table T_RM_MESSAGETEMPLATE is
'消息模板';

comment on column T_RM_MESSAGETEMPLATE.MESSAGETEMPLATENAME is
'模板名称';

comment on column T_RM_MESSAGETEMPLATE.CLASSNAME is
'类名';

comment on column T_RM_MESSAGETEMPLATE.MESSAGE is
'模板内容';

comment on column T_RM_MESSAGETEMPLATE.UPDATEUSERID is
'修改人ID';

comment on column T_RM_MESSAGETEMPLATE.UPDATEDATE is
'修改时间';

comment on column T_RM_MESSAGETEMPLATE.MESSAGETEMPLATETYPE is
'模板类型  1:初试　２:复试,３:入职';

comment on column T_RM_MESSAGETEMPLATE.CHECKSTATES is
'审核状态： CheckStates
///0 未提交 UnSubmit,
///1 审核中 Approving,
/// 2 审核通过 Approved,
///3 审核未通过 UnApproved
///4 待审核
///5 所有';

comment on column T_RM_MESSAGETEMPLATE.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

comment on column T_RM_MESSAGETEMPLATE.OWNERID is
'所属人ID';

comment on column T_RM_MESSAGETEMPLATE.OWNERPOSTID is
'所属岗位ID';

comment on column T_RM_MESSAGETEMPLATE.OWNERDEPARTMENTID is
'所属部门ID';

comment on column T_RM_MESSAGETEMPLATE.OWNERNAME is
'所属人ID';

/*==============================================================*/
/* Index: "Index_T_RM_MESSAGETEMPLATE"                          */
/*==============================================================*/
create index "Index_T_RM_MESSAGETEMPLATE" on T_RM_MESSAGETEMPLATE (
   MESSAGETEMPLATENAME ASC
);

/*==============================================================*/
/* Table: T_RM_NOTIFY                                           */
/*==============================================================*/
create table T_RM_NOTIFY 
(
   NOTIFYID             VARCHAR2(50)         not null,
   RESUMEDELIVERYID     VARCHAR2(50)         not null,
   ISNOTIFIED           VARCHAR2(10),
   NOTIFIEDMETHOD       VARCHAR2(10),
   NOTIFIEDRESULT       VARCHAR2(10),
   INTERVIEWDATEPLAN    DATE,
   AHEADPROMPT          VARCHAR2(10)         default '0',
   AHEADTIME            NUMBER(4,0),
   INTERVIEWDATEDUE     DATE,
   INTERVIEWADDRESS     NVARCHAR2(200),
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   constraint PK_T_RM_NOTIFY primary key (NOTIFYID)
);

comment on table T_RM_NOTIFY is
' 通知,来源于Grid的输入';

comment on column T_RM_NOTIFY.NOTIFYID is
'通知ID';

comment on column T_RM_NOTIFY.RESUMEDELIVERYID is
'简历应聘ID';

comment on column T_RM_NOTIFY.ISNOTIFIED is
'0:未通知, 1:已通知';

comment on column T_RM_NOTIFY.NOTIFIEDMETHOD is
'1. 邮件,2.电话,3.手机短信,4.其他';

comment on column T_RM_NOTIFY.NOTIFIEDRESULT is
'1 :按时来,2.不来.3.改期.4.联系不上';

comment on column T_RM_NOTIFY.INTERVIEWDATEPLAN is
'计划面试时间，是应聘者的计划面试时间点';

comment on column T_RM_NOTIFY.AHEADPROMPT is
'是否提前提醒0.不提前提醒 1.提前提醒';

comment on column T_RM_NOTIFY.AHEADTIME is
'提前时间(小时)';

comment on column T_RM_NOTIFY.INTERVIEWDATEDUE is
'预约面试时间';

comment on column T_RM_NOTIFY.INTERVIEWADDRESS is
'面试地址';

comment on column T_RM_NOTIFY.UPDATEUSERID is
'修改人ID';

comment on column T_RM_NOTIFY.UPDATEDATE is
'修改时间';

/*==============================================================*/
/* Index: "idx_1_T_RM_NOTIFY"                                   */
/*==============================================================*/
create index "idx_1_T_RM_NOTIFY" on T_RM_NOTIFY (
   CREATEDATE ASC
);

/*==============================================================*/
/* Table: T_RM_NOTIFYSTANDARD                                   */
/*==============================================================*/
create table T_RM_NOTIFYSTANDARD 
(
   STANDARDID           VARCHAR2(50)         not null,
   ITEMVALUE            NVARCHAR2(1000)      not null,
   SORTNO               NUMBER(4,0)          not null,
   FATHERSTANDARDID     VARCHAR2(50),
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   EDITSTATE            VARCHAR2(10)         default '2',
   constraint PK_T_RM_NOTIFYSTANDARD primary key (STANDARDID)
);

comment on table T_RM_NOTIFYSTANDARD is
'T_RM_NOTIFYSTANDARD  通知标准';

comment on column T_RM_NOTIFYSTANDARD.STANDARDID is
'通知标准ID';

comment on column T_RM_NOTIFYSTANDARD.ITEMVALUE is
'通知标准项';

comment on column T_RM_NOTIFYSTANDARD.SORTNO is
'序号';

comment on column T_RM_NOTIFYSTANDARD.FATHERSTANDARDID is
'父通知标准ID';

comment on column T_RM_NOTIFYSTANDARD.CREATEUSERID is
'创建人';

comment on column T_RM_NOTIFYSTANDARD.CREATEDATE is
'创建时间';

comment on column T_RM_NOTIFYSTANDARD.UPDATEUSERID is
'修改人ID';

comment on column T_RM_NOTIFYSTANDARD.UPDATEDATE is
'修改时间';

comment on column T_RM_NOTIFYSTANDARD.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

/*==============================================================*/
/* Index: "idx_1_T_RM_NOTIFYSTANDARD"                           */
/*==============================================================*/
create index "idx_1_T_RM_NOTIFYSTANDARD" on T_RM_NOTIFYSTANDARD (
   CREATEDATE DESC
);

/*==============================================================*/
/* Table: T_RM_PUBLISHTYPE                                      */
/*==============================================================*/
create table T_RM_PUBLISHTYPE 
(
   PUBLISHID            VARCHAR2(50)         not null,
   PUBLISHNAME          NVARCHAR2(50)        not null,
   COST                 NUMBER(10,2)         default 0,
   REMARK               NVARCHAR2(2000),
   CHECKSTATES          VARCHAR2(10)         not null,
   EDITSTATE            VARCHAR2(10)         default '2',
   OWNERID              VARCHAR2(50)         not null,
   OWNERPOSTID          VARCHAR2(50)         not null,
   OWNERDEPARTMENTID    VARCHAR2(50)         not null,
   OWNERCOMPANYID       VARCHAR2(50)         not null,
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   CREATECOMPANYID      VARCHAR2(50),
   CREATEDEPARTMENTID   NVARCHAR2(50),
   CREATEPOSTID         VARCHAR2(50),
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   constraint PK_T_RM_PUBLISHTYPE primary key (PUBLISHID)
);

comment on table T_RM_PUBLISHTYPE is
'定义发布的种类及费用';

comment on column T_RM_PUBLISHTYPE.PUBLISHID is
'发布种类ID';

comment on column T_RM_PUBLISHTYPE.PUBLISHNAME is
'渠道名';

comment on column T_RM_PUBLISHTYPE.COST is
'费用';

comment on column T_RM_PUBLISHTYPE.REMARK is
'备注';

comment on column T_RM_PUBLISHTYPE.CHECKSTATES is
'审核状态： CheckStates
///0 未提交 UnSubmit,
///1 审核中 Approving,
/// 2 审核通过 Approved,
///3 审核未通过 UnApproved
///4 待审核
///5 所有';

comment on column T_RM_PUBLISHTYPE.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

comment on column T_RM_PUBLISHTYPE.OWNERID is
'所属人ID';

comment on column T_RM_PUBLISHTYPE.OWNERPOSTID is
'所属岗位ID';

comment on column T_RM_PUBLISHTYPE.OWNERDEPARTMENTID is
'所属部门ID';

comment on column T_RM_PUBLISHTYPE.OWNERCOMPANYID is
'所属公司ID';

comment on column T_RM_PUBLISHTYPE.CREATEUSERID is
'创建人';

comment on column T_RM_PUBLISHTYPE.CREATEDATE is
'创建时间';

comment on column T_RM_PUBLISHTYPE.CREATECOMPANYID is
'创建人公司ID';

comment on column T_RM_PUBLISHTYPE.CREATEDEPARTMENTID is
'创建人部门ID';

comment on column T_RM_PUBLISHTYPE.CREATEPOSTID is
'创建人岗位ID';

comment on column T_RM_PUBLISHTYPE.UPDATEUSERID is
'修改人ID';

comment on column T_RM_PUBLISHTYPE.UPDATEDATE is
'修改时间';

/*==============================================================*/
/* Table: T_RM_QUALIFICATION                                    */
/*==============================================================*/
create table T_RM_QUALIFICATION 
(
   REQUIREAPPLYID       VARCHAR2(50)         not null,
   EXPERIENCEREQ        VARCHAR2(10),
   SEXREQ               NVARCHAR2(50),
   EDUCATEDREQ          VARCHAR2(10),
   CERTIFICATEREQ       NVARCHAR2(50),
   REMARK               NVARCHAR2(2000),
   EDITSTATE            VARCHAR2(10)         default '2',
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   constraint PK_T_RM_QUALIFICATION primary key (REQUIREAPPLYID)
);

comment on table T_RM_QUALIFICATION is
'T_RM_QUALIFICATION 任职资格
';

comment on column T_RM_QUALIFICATION.REQUIREAPPLYID is
'需求ID';

comment on column T_RM_QUALIFICATION.EXPERIENCEREQ is
'工作经验要求1.无工作经验要求.2. >2年工作经验要求.3.>5年工作经验要求.4.>10年工作经验要求.5.>15年工作经验要求';

comment on column T_RM_QUALIFICATION.SEXREQ is
'姓别要求';

comment on column T_RM_QUALIFICATION.EDUCATEDREQ is
'学历要求 0:初中
1:高中
2:中技
3: 中专
4: 大专
5: 本科
6: 硕士
7: 博士';

comment on column T_RM_QUALIFICATION.CERTIFICATEREQ is
'证件要求';

comment on column T_RM_QUALIFICATION.REMARK is
'备注';

comment on column T_RM_QUALIFICATION.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

comment on column T_RM_QUALIFICATION.CREATEUSERID is
'创建人';

comment on column T_RM_QUALIFICATION.CREATEDATE is
'创建时间';

/*==============================================================*/
/* Index: "idx_1_T_RM_QUALIFICATION"                            */
/*==============================================================*/
create index "idx_1_T_RM_QUALIFICATION" on T_RM_QUALIFICATION (
   CREATEDATE DESC
);

/*==============================================================*/
/* Table: T_RM_RECEIPTION                                       */
/*==============================================================*/
create table T_RM_RECEIPTION 
(
   VISITORID            VARCHAR2(50)         not null,
   VISITOR              NVARCHAR2(50)        not null,
   RESUMEDELIVERYID     VARCHAR2(50),
   IDCARDNUMBER         VARCHAR2(50),
   SEX                  VARCHAR2(10)         not null,
   COMPANY              NVARCHAR2(50),
   CELLPHONE            VARCHAR2(15),
   DUTY                 NVARCHAR2(50),
   VISITORREASON        VARCHAR2(10),
   ISVISITED            VARCHAR2(10)         default '1',
   PLANDATE             DATE,
   STATUS               VARCHAR2(10),
   COUNTDOWN            NUMBER(4,0)          default 0,
   FRECEPTERID          NVARCHAR2(50),
   SRECEPTERID          NVARCHAR2(50),
   NOTIFYREMARK         NVARCHAR2(2000),
   RECEPTIONITEM        VARCHAR2(10),
   CHECKSTATES          VARCHAR2(10)         not null,
   EDITSTATE            VARCHAR2(10)         default '2',
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE                 not null,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   OWNERID              VARCHAR2(50),
   OWNERPOSTID          VARCHAR2(50),
   OWNERDEPARTMENTID    VARCHAR2(50),
   OWNERCOMPANYID       VARCHAR2(50),
   constraint PK_T_RM_RECEIPTION primary key (VISITORID)
);

comment on table T_RM_RECEIPTION is
'前台接待';

comment on column T_RM_RECEIPTION.VISITORID is
'来访人ID';

comment on column T_RM_RECEIPTION.VISITOR is
'来访人姓名';

comment on column T_RM_RECEIPTION.RESUMEDELIVERYID is
'简历应聘ID';

comment on column T_RM_RECEIPTION.IDCARDNUMBER is
'身份证号码';

comment on column T_RM_RECEIPTION.SEX is
'性别';

comment on column T_RM_RECEIPTION.COMPANY is
'来访人单位';

comment on column T_RM_RECEIPTION.CELLPHONE is
'手机号码';

comment on column T_RM_RECEIPTION.DUTY is
'来访人职务';

comment on column T_RM_RECEIPTION.VISITORREASON is
'来访事由:1.应聘 2.业务洽谈 3.私人来访 4.新人报道.5.维修施工.6.公务来访';

comment on column T_RM_RECEIPTION.ISVISITED is
'是否已来访1.未处理 2.未来访.3.已来访';

comment on column T_RM_RECEIPTION.PLANDATE is
'计划来访时间';

comment on column T_RM_RECEIPTION.STATUS is
'接待状态1.正常接待.2.延时接待.3.接待人联系不上';

comment on column T_RM_RECEIPTION.COUNTDOWN is
'倒计时时间(分钟)';

comment on column T_RM_RECEIPTION.FRECEPTERID is
'第1接待人';

comment on column T_RM_RECEIPTION.SRECEPTERID is
'第2接待人';

comment on column T_RM_RECEIPTION.NOTIFYREMARK is
'通知状态';

comment on column T_RM_RECEIPTION.RECEPTIONITEM is
'接待事项:1.2.表示接待了两项。1.2是接待事项的值.1表倒水，2.公司期刊.依接待事项定义';

comment on column T_RM_RECEIPTION.CHECKSTATES is
'审核状态： CheckStates
///0 未提交 UnSubmit,
///1 审核中 Approving,
/// 2 审核通过 Approved,
///3 审核未通过 UnApproved
///4 待审核
///5 所有';

comment on column T_RM_RECEIPTION.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

comment on column T_RM_RECEIPTION.UPDATEUSERID is
'修改人ID';

comment on column T_RM_RECEIPTION.UPDATEDATE is
'修改时间';

comment on column T_RM_RECEIPTION.OWNERID is
'所属人ID';

comment on column T_RM_RECEIPTION.OWNERPOSTID is
'所属岗位ID';

comment on column T_RM_RECEIPTION.OWNERDEPARTMENTID is
'所属部门ID';

comment on column T_RM_RECEIPTION.OWNERCOMPANYID is
'所属公司ID';

/*==============================================================*/
/* Index: "idx_1_T_RM_RECEIPTION"                               */
/*==============================================================*/
create index "idx_1_T_RM_RECEIPTION" on T_RM_RECEIPTION (
   VISITOR ASC
);

/*==============================================================*/
/* Index: "idx_2_T_RM_RECEIPTION"                               */
/*==============================================================*/
create index "idx_2_T_RM_RECEIPTION" on T_RM_RECEIPTION (
   CREATEDATE DESC
);

/*==============================================================*/
/* Table: T_RM_REQUIREAPPLY                                     */
/*==============================================================*/
create table T_RM_REQUIREAPPLY 
(
   REQUIREAPPLYID       VARCHAR2(50)         not null,
   REQUIREAPPLYCODE     NVARCHAR2(50)        not null,
   REQUIRECOMPANYID     VARCHAR2(50)         not null,
   REQUIREDEPARTMENTID  VARCHAR2(50)         not null,
   REQUIREPOSTID        VARCHAR2(50)         not null,
   REQUIRECOMPANYNAME   NVARCHAR2(50)        not null,
   REQUIREDEPARTMENTNAME NVARCHAR2(50)        not null,
   REQUIREPOSTNAME      NVARCHAR2(50)        not null,
   REQUIREDNUMBER       NUMBER(6,0)          not null,
   POSTDUTY             NVARCHAR2(500)       not null,
   POSTCLASS            VARCHAR2(10)         not null,
   EXPECTDATE           DATE                 not null,
   LANGUAGETYPE         VARCHAR2(10),
   LANGUAGEABLILITY     VARCHAR2(10),
   TRAVELFREQUENCY      VARCHAR2(50),
   WORKPLACE            VARCHAR2(50),
   WORKYEAR             NUMBER(4,0),
   STARTDATE            DATE,
   ENDDATE              DATE,
   ACTUALENDDATE        DATE,
   ENTERNUMBER          NUMBER(6,0),
   REQUIRESTATES        VARCHAR2(10)         not null,
   PLANSTARTDATE        DATE,
   PLANENDDATE          DATE,
   PUBLISHERID          VARCHAR2(50),
   PUBLISHPOSTID        VARCHAR2(50),
   PUBLISHDEPARTMENTID  VARCHAR2(50),
   PUBLISHCOMPANYID     VARCHAR2(50),
   CHECKSTATES          VARCHAR2(10)         not null,
   EDITSTATE            VARCHAR2(10)         default '2',
   OWNERID              VARCHAR2(50)         not null,
   OWNERPOSTID          VARCHAR2(50)         not null,
   OWNERDEPARTMENTID    VARCHAR2(50)         not null,
   OWNERCOMPANYID       VARCHAR2(50)         not null,
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   CREATECOMPANYID      VARCHAR2(50),
   CREATEDEPARTMENTID   VARCHAR2(50),
   CREATEPOSTID         VARCHAR2(50),
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   constraint PK_T_RM_REQUIREAPPLY primary key (REQUIREAPPLYID)
);

comment on table T_RM_REQUIREAPPLY is
'T_RM_REQUIREAPPLY 招聘需求申请';

comment on column T_RM_REQUIREAPPLY.REQUIREAPPLYID is
'需求ID';

comment on column T_RM_REQUIREAPPLY.REQUIREAPPLYCODE is
'申请编号';

comment on column T_RM_REQUIREAPPLY.REQUIRECOMPANYID is
'需求公司ID';

comment on column T_RM_REQUIREAPPLY.REQUIREDEPARTMENTID is
'需求部门ID';

comment on column T_RM_REQUIREAPPLY.REQUIREPOSTID is
'需求岗位ID';

comment on column T_RM_REQUIREAPPLY.REQUIRECOMPANYNAME is
'需求公司名';

comment on column T_RM_REQUIREAPPLY.REQUIREDEPARTMENTNAME is
'需求部门名';

comment on column T_RM_REQUIREAPPLY.REQUIREPOSTNAME is
'需求岗位名';

comment on column T_RM_REQUIREAPPLY.REQUIREDNUMBER is
'招聘人数';

comment on column T_RM_REQUIREAPPLY.POSTDUTY is
'岗位职责';

comment on column T_RM_REQUIREAPPLY.POSTCLASS is
'岗位职级';

comment on column T_RM_REQUIREAPPLY.EXPECTDATE is
'期望到岗日期';

comment on column T_RM_REQUIREAPPLY.LANGUAGETYPE is
'1';

comment on column T_RM_REQUIREAPPLY.LANGUAGEABLILITY is
'0: 不限
1: 一般
2: 熟练
3: 精通';

comment on column T_RM_REQUIREAPPLY.TRAVELFREQUENCY is
'出差频率';

comment on column T_RM_REQUIREAPPLY.WORKPLACE is
'工作地点，从字典中选';

comment on column T_RM_REQUIREAPPLY.WORKYEAR is
'工作年限';

comment on column T_RM_REQUIREAPPLY.STARTDATE is
'发布开始日期';

comment on column T_RM_REQUIREAPPLY.ENDDATE is
'发布结束日期';

comment on column T_RM_REQUIREAPPLY.ACTUALENDDATE is
'实际结束日期';

comment on column T_RM_REQUIREAPPLY.ENTERNUMBER is
'已招人数';

comment on column T_RM_REQUIREAPPLY.REQUIRESTATES is
'0: 未生效, 1: 未发布, 2: 发布中, 3:已完成, 4:已过期, 5: 手动关闭';

comment on column T_RM_REQUIREAPPLY.PLANSTARTDATE is
'拟招日期';

comment on column T_RM_REQUIREAPPLY.PLANENDDATE is
'拟结束日期';

comment on column T_RM_REQUIREAPPLY.PUBLISHERID is
'发布人ID';

comment on column T_RM_REQUIREAPPLY.PUBLISHPOSTID is
'发布人岗位ID';

comment on column T_RM_REQUIREAPPLY.PUBLISHDEPARTMENTID is
'发布人部门ID';

comment on column T_RM_REQUIREAPPLY.PUBLISHCOMPANYID is
'发布人公司ID';

comment on column T_RM_REQUIREAPPLY.CHECKSTATES is
'审核状态： CheckStates
///0 未提交 UnSubmit,
///1 审核中 Approving,
/// 2 审核通过 Approved,
///3 审核未通过 UnApproved
///4 待审核
///5 所有';

comment on column T_RM_REQUIREAPPLY.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

comment on column T_RM_REQUIREAPPLY.OWNERID is
'所属人ID';

comment on column T_RM_REQUIREAPPLY.OWNERPOSTID is
'所属岗位ID';

comment on column T_RM_REQUIREAPPLY.OWNERDEPARTMENTID is
'所属部门ID';

comment on column T_RM_REQUIREAPPLY.OWNERCOMPANYID is
'所属公司ID';

comment on column T_RM_REQUIREAPPLY.CREATEUSERID is
'创建人';

comment on column T_RM_REQUIREAPPLY.CREATEDATE is
'创建时间';

comment on column T_RM_REQUIREAPPLY.CREATECOMPANYID is
'创建人公司ID';

comment on column T_RM_REQUIREAPPLY.CREATEDEPARTMENTID is
'创建人部门ID';

comment on column T_RM_REQUIREAPPLY.CREATEPOSTID is
'创建人岗位ID';

comment on column T_RM_REQUIREAPPLY.UPDATEUSERID is
'修改人ID';

comment on column T_RM_REQUIREAPPLY.UPDATEDATE is
'修改时间';

/*==============================================================*/
/* Index: "idx_1_T_RM_REQUIREAPPLY"                             */
/*==============================================================*/
create index "idx_1_T_RM_REQUIREAPPLY" on T_RM_REQUIREAPPLY (
   REQUIREAPPLYCODE ASC,
   REQUIRECOMPANYNAME ASC,
   REQUIREDEPARTMENTNAME ASC,
   REQUIREPOSTNAME ASC
);

/*==============================================================*/
/* Index: "idx_2_T_RM_REQUIREAPPLY"                             */
/*==============================================================*/
create index "idx_2_T_RM_REQUIREAPPLY" on T_RM_REQUIREAPPLY (
   CREATEDATE DESC
);

/*==============================================================*/
/* Table: T_RM_RESUME                                           */
/*==============================================================*/
create table T_RM_RESUME 
(
   RESUMEID             VARCHAR2(50)         not null,
   NAME                 NVARCHAR2(50)        not null,
   SEX                  VARCHAR2(10)         not null,
   NATION               VARCHAR2(10)         not null,
   PROVINCE             NVARCHAR2(50),
   HEIGHT               NUMBER(3,0),
   MARRIAGE             VARCHAR2(10)         default '0',
   IDCARDNUMBER         NVARCHAR2(50)        not null,
   WORKYEAR             NUMBER(4,0),
   EDUCATIONLEVEL       VARCHAR2(10)         not null,
   MAJOR                NVARCHAR2(50),
   CERTIFICATEDLEVEL    VARCHAR2(10),
   ENGLISHLEVEL         VARCHAR2(10),
   OTHERLANGUAGE        VARCHAR2(10),
   OTHERLANGUAGELEVEL   VARCHAR2(10),
   PHOTOPATH            NVARCHAR2(200),
   EMAIL                NVARCHAR2(50)        not null,
   MOBILE               NVARCHAR2(50)        not null,
   PHONENUMBER          NVARCHAR2(50),
   REGRESIDENCE         NVARCHAR2(50),
   CURRENTADRESS        NVARCHAR2(50),
   CONTACTADRESS        NVARCHAR2(200),
   EXPECTATIONSALARY    NVARCHAR2(50),
   WISHCOMPANY          NVARCHAR2(50),
   WISHPOST             NVARCHAR2(50),
   WISHAREA             NVARCHAR2(50),
   HAVECOMRELATION      VARCHAR2(10),
   RELATIONNAME         NVARCHAR2(50),
   RELATIONCOMPANY      VARCHAR2(10),
   SELFAPPRAISE         NVARCHAR2(300),
   EDITSTATE            VARCHAR2(10)         default '2',
   REMARK               NVARCHAR2(2000),
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   RESUMESTATES         VARCHAR2(10),
   RESUMEFROM           NVARCHAR2(50),
   RELATIONRESUMEID     NVARCHAR2(50),
   OWNERID              VARCHAR2(50)         not null,
   OWNERPOSTID          VARCHAR2(50)         not null,
   OWNERDEPARTMENTID    VARCHAR2(50)         not null,
   OWNERCOMPANYID       VARCHAR2(50)         not null,
   CREATEDEPARTMENTID   NVARCHAR2(50),
   CREATECOMPANYIDID    NVARCHAR2(50),
   CREATEPOSTID         VARCHAR2(50),
   UPDATEUSERNAME       NVARCHAR2(50),
   OWNERNAME            NVARCHAR2(50),
   CREATEUSERNAME       NVARCHAR2(50),
   constraint PK_T_RM_RESUME primary key (RESUMEID)
);

comment on table T_RM_RESUME is
' T_RM_RESUME 应聘者简历';

comment on column T_RM_RESUME.RESUMEID is
'简历ID';

comment on column T_RM_RESUME.NAME is
'姓名';

comment on column T_RM_RESUME.SEX is
'性别 Sex
1男
0 女';

comment on column T_RM_RESUME.NATION is
'从字典中选择';

comment on column T_RM_RESUME.PROVINCE is
'籍贯';

comment on column T_RM_RESUME.HEIGHT is
'cm';

comment on column T_RM_RESUME.MARRIAGE is
'0 : 未婚, 1: 已婚';

comment on column T_RM_RESUME.IDCARDNUMBER is
'身份证号码';

comment on column T_RM_RESUME.WORKYEAR is
'工作年限';

comment on column T_RM_RESUME.EDUCATIONLEVEL is
'最高学历0:初中1:高中2:中技3: 中专4: 大专5: 本科6: 硕士7: 博士';

comment on column T_RM_RESUME.MAJOR is
'所学专业:从字典中选取';

comment on column T_RM_RESUME.CERTIFICATEDLEVEL is
'0: 无
1: 2 级
2: 4 级
3: 6 级
4: 8级';

comment on column T_RM_RESUME.ENGLISHLEVEL is
'1: 一般
2: 熟练
3: 精通';

comment on column T_RM_RESUME.OTHERLANGUAGE is
'0: 汉语
1: 英语
...';

comment on column T_RM_RESUME.OTHERLANGUAGELEVEL is
'1: 一般
2: 熟练
3: 精通';

comment on column T_RM_RESUME.PHOTOPATH is
'相片路径';

comment on column T_RM_RESUME.EMAIL is
'电子邮件';

comment on column T_RM_RESUME.MOBILE is
'手机号码';

comment on column T_RM_RESUME.PHONENUMBER is
'联系电话';

comment on column T_RM_RESUME.REGRESIDENCE is
'户口所在地';

comment on column T_RM_RESUME.CURRENTADRESS is
'目前居住地';

comment on column T_RM_RESUME.CONTACTADRESS is
'通讯地址';

comment on column T_RM_RESUME.EXPECTATIONSALARY is
'期望薪资';

comment on column T_RM_RESUME.WISHCOMPANY is
'意向公司';

comment on column T_RM_RESUME.WISHPOST is
'意向岗位';

comment on column T_RM_RESUME.WISHAREA is
'意向地区';

comment on column T_RM_RESUME.HAVECOMRELATION is
'是否有亲属0: 否1:是';

comment on column T_RM_RESUME.RELATIONNAME is
'亲属姓名';

comment on column T_RM_RESUME.RELATIONCOMPANY is
'1集团，2在线....从字段中读取';

comment on column T_RM_RESUME.SELFAPPRAISE is
'技能特长';

comment on column T_RM_RESUME.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

comment on column T_RM_RESUME.REMARK is
'备注';

comment on column T_RM_RESUME.UPDATEUSERID is
'修改人ID';

comment on column T_RM_RESUME.UPDATEDATE is
'修改时间';

comment on column T_RM_RESUME.RESUMESTATES is
'1: 应聘中, 2: 人才储备, 3:在职, 4离职 5.不合格简历';

comment on column T_RM_RESUME.RESUMEFROM is
'简历来源';

comment on column T_RM_RESUME.RELATIONRESUMEID is
'亲属简历';

comment on column T_RM_RESUME.OWNERID is
'所属人ID';

comment on column T_RM_RESUME.OWNERPOSTID is
'所属岗位ID';

comment on column T_RM_RESUME.OWNERDEPARTMENTID is
'所属部门ID';

comment on column T_RM_RESUME.OWNERNAME is
'所属人姓名';

/*==============================================================*/
/* Index: "idx_1_T_RM_RESUME"                                   */
/*==============================================================*/
create index "idx_1_T_RM_RESUME" on T_RM_RESUME (
   NAME ASC,
   IDCARDNUMBER ASC
);

/*==============================================================*/
/* Table: T_RM_RESUMEDELIVERY                                   */
/*==============================================================*/
create table T_RM_RESUMEDELIVERY 
(
   RESUMEDELIVERYID     VARCHAR2(50)         not null,
   RESUMEID             VARCHAR2(50),
   REQUIREAPPLYID       VARCHAR2(50),
   STAGE                VARCHAR2(10)         default '0',
   STAGENAME            NVARCHAR2(50),
   RESULT               VARCHAR2(10)         default '0',
   RESULTNAME           NVARCHAR2(50),
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   EDITSTATE            VARCHAR2(10)         default '2',
   constraint PK_T_RM_RESUMEDELIVERY primary key (RESUMEDELIVERYID)
);

comment on table T_RM_RESUMEDELIVERY is
'简历应聘';

comment on column T_RM_RESUMEDELIVERY.RESUMEDELIVERYID is
'简历应聘ID';

comment on column T_RM_RESUMEDELIVERY.RESUMEID is
'简历ID';

comment on column T_RM_RESUMEDELIVERY.REQUIREAPPLYID is
'需求ID';

comment on column T_RM_RESUMEDELIVERY.STAGE is
'面试阶段0.未分类;1.电话初始.2.复试.3.拟录用.4.背景调查.5.入职手续 5.在职';

comment on column T_RM_RESUMEDELIVERY.STAGENAME is
'面试阶段名';

comment on column T_RM_RESUMEDELIVERY.RESULT is
'0.未面试 .1未通知 2.合格.3.不合格.4.拒绝参加.5.人才储备6.推荐更高岗位';

comment on column T_RM_RESUMEDELIVERY.RESULTNAME is
'结果名';

comment on column T_RM_RESUMEDELIVERY.UPDATEUSERID is
'修改人ID';

comment on column T_RM_RESUMEDELIVERY.UPDATEDATE is
'修改时间';

comment on column T_RM_RESUMEDELIVERY.EDITSTATE is
'对象编辑状态///0 删除状态 Deleted
///1 已生效 Actived
///2 未生效 UnActived
///3 撤消中 PendingCancelled
///4 已撤消 Cancelled';

/*==============================================================*/
/* Index: "idx_1_T_RM_RESUMEDELIVERY"                           */
/*==============================================================*/
create index "idx_1_T_RM_RESUMEDELIVERY" on T_RM_RESUMEDELIVERY (
   RESUMEID ASC,
   REQUIREAPPLYID ASC
);

/*==============================================================*/
/* Index: "idx_2_T_RM_RESUMEDELIVERY"                           */
/*==============================================================*/
create index "idx_2_T_RM_RESUMEDELIVERY" on T_RM_RESUMEDELIVERY (
   CREATEDATE DESC
);

/*==============================================================*/
/* Table: T_RM_SURVEY                                           */
/*==============================================================*/
create table T_RM_SURVEY 
(
   SURVEYID             VARCHAR2(50)         not null,
   RESUMEDELIVERYID     VARCHAR2(50),
   IDCARDNUMBER         NVARCHAR2(50)        not null,
   IDCARDRESULT         VARCHAR2(10),
   SOCIALCARD           NVARCHAR2(50),
   RESUMELOCAL          NVARCHAR2(50),
   SOCIALLOCAL          NVARCHAR2(50),
   COMPARERESULT        VARCHAR2(10),
   REMARK               NVARCHAR2(2000),
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   OWNERID              VARCHAR2(50)         not null,
   OWNERPOSTID          VARCHAR2(50)         not null,
   OWNERDEPARTMENTID    VARCHAR2(50)         not null,
   OWNERCOMPANYID       VARCHAR2(50)         not null,
   constraint PK_T_RM_SURVEY primary key (SURVEYID)
);

comment on table T_RM_SURVEY is
'T_RM_SURVEY 背景调查';

comment on column T_RM_SURVEY.SURVEYID is
'背景调查ID';

comment on column T_RM_SURVEY.RESUMEDELIVERYID is
'简历应聘ID';

comment on column T_RM_SURVEY.IDCARDNUMBER is
'身份证号码';

comment on column T_RM_SURVEY.IDCARDRESULT is
'身份证调查结果 1.属实 2.基本属实 3.不属实';

comment on column T_RM_SURVEY.SOCIALCARD is
'社保卡';

comment on column T_RM_SURVEY.RESUMELOCAL is
'简历所在单位';

comment on column T_RM_SURVEY.SOCIALLOCAL is
'查询后的社保缴纳单位';

comment on column T_RM_SURVEY.COMPARERESULT is
'比较后的结果';

comment on column T_RM_SURVEY.REMARK is
'备注';

comment on column T_RM_SURVEY.UPDATEUSERID is
'修改人ID';

comment on column T_RM_SURVEY.UPDATEDATE is
'修改时间';

comment on column T_RM_SURVEY.OWNERID is
'所属人ID';

comment on column T_RM_SURVEY.OWNERPOSTID is
'所属岗位ID';

comment on column T_RM_SURVEY.OWNERDEPARTMENTID is
'所属部门ID';

comment on column T_RM_SURVEY.OWNERCOMPANYID is
'所属公司ID';

/*==============================================================*/
/* Index: "idx_1_T_RM_SURVEY"                                   */
/*==============================================================*/
create index "idx_1_T_RM_SURVEY" on T_RM_SURVEY (
   RESUMEDELIVERYID ASC
);

/*==============================================================*/
/* Index: "idx_2_T_RM_SURVEY"                                   */
/*==============================================================*/
create index "idx_2_T_RM_SURVEY" on T_RM_SURVEY (
   CREATEDATE DESC
);

/*==============================================================*/
/* Table: T_RM_SURVEYDETAIL                                     */
/*==============================================================*/
create table T_RM_SURVEYDETAIL 
(
   SURVEYITEMID         VARCHAR2(50)         not null,
   SURVEYID             VARCHAR2(50)         not null,
   QUESTIONID           VARCHAR2(50)         not null,
   ANSWERID             VARCHAR2(50),
   SUPERIORANSWERID     VARCHAR2(10),
   HRANSWERID           VARCHAR2(10),
   QUESTIONDATA         NVARCHAR2(2000),
   RULE                 VARCHAR2(10)         default '3',
   USEFUL               VARCHAR2(10)         default '1',
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   constraint PK_T_RM_SURVEYDETAIL primary key (SURVEYITEMID)
);

comment on table T_RM_SURVEYDETAIL is
'T_RM_SURVEYDETAIL  背景调查清单';

comment on column T_RM_SURVEYDETAIL.SURVEYITEMID is
'背景调查明细ID';

comment on column T_RM_SURVEYDETAIL.SURVEYID is
'背景调查ID';

comment on column T_RM_SURVEYDETAIL.QUESTIONID is
'问题ID';

comment on column T_RM_SURVEYDETAIL.ANSWERID is
'上级答案ID';

comment on column T_RM_SURVEYDETAIL.SUPERIORANSWERID is
'隔级上级答案ID';

comment on column T_RM_SURVEYDETAIL.HRANSWERID is
'行政答案ID';

comment on column T_RM_SURVEYDETAIL.QUESTIONDATA is
'资料';

comment on column T_RM_SURVEYDETAIL.RULE is
'否决原则:1.一票不利否决.2.3项中有一票不利否决.3.人力资源主管决定';

comment on column T_RM_SURVEYDETAIL.USEFUL is
'答案是否为有利项：1.有利项.2.为不利项';

/*==============================================================*/
/* Index: "idx_1_T_RM_SRUVEYDETAIL"                             */
/*==============================================================*/
create index "idx_1_T_RM_SRUVEYDETAIL" on T_RM_SURVEYDETAIL (
   SURVEYID ASC
);

/*==============================================================*/
/* Table: T_RM_SURVEYITEM                                       */
/*==============================================================*/
create table T_RM_SURVEYITEM 
(
   SURVEYVISITID        VARCHAR2(50)         not null,
   SURVEYID             VARCHAR2(50)         not null,
   SURVEYTYPE           VARCHAR2(10)         not null,
   BYVISITNAME          NVARCHAR2(50),
   BYVISITNDUTY         NVARCHAR2(50),
   BYVISITPHONE         VARCHAR2(50),
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   constraint PK_T_RM_SURVEYITEM primary key (SURVEYVISITID)
);

comment on table T_RM_SURVEYITEM is
'T_RM_SURVEYITEM 背景调查人信息';

comment on column T_RM_SURVEYITEM.SURVEYVISITID is
'背景调查访问者ID';

comment on column T_RM_SURVEYITEM.SURVEYID is
'背景调查ID';

comment on column T_RM_SURVEYITEM.SURVEYTYPE is
'背景调查类型:1.上级.2.隔级上级.3.人事';

comment on column T_RM_SURVEYITEM.BYVISITNAME is
'被访人姓名';

comment on column T_RM_SURVEYITEM.BYVISITNDUTY is
'被访人职务';

comment on column T_RM_SURVEYITEM.BYVISITPHONE is
'被访人电话';

/*==============================================================*/
/* Index: "idx_1_T_RM_SURVEYITEM"                               */
/*==============================================================*/
create index "idx_1_T_RM_SURVEYITEM" on T_RM_SURVEYITEM (
   SURVEYID ASC
);

/*==============================================================*/
/* Table: T_RM_TALENTEDRESUME                                   */
/*==============================================================*/
create table T_RM_TALENTEDRESUME 
(
   TALENTEDRESUMEID     VARCHAR2(50)         not null,
   RESUMEID             VARCHAR2(50)         not null,
   TALENTEDTYPE         VARCHAR2(10)         not null,
   TALENTEDTYPENAME     NVARCHAR2(50)        not null,
   CREATEUSERID         VARCHAR2(50),
   CREATEDATE           DATE,
   UPDATEUSERID         VARCHAR2(50),
   UPDATEDATE           DATE,
   CREATECOMPANYID      VARCHAR2(50),
   CREATEDEPARTMENTID   VARCHAR2(50),
   CREATEPOSTID         VARCHAR2(50),
   UPDATEUSERNAME       NVARCHAR2(50),
   constraint PK_T_RM_TALENTEDRESUME primary key (TALENTEDRESUMEID)
);

comment on table T_RM_TALENTEDRESUME is
'应聘者人才类型';

comment on column T_RM_TALENTEDRESUME.TALENTEDRESUMEID is
'人才简历ID';

comment on column T_RM_TALENTEDRESUME.RESUMEID is
'简历ID';

comment on column T_RM_TALENTEDRESUME.TALENTEDTYPE is
'来源于TALENTED_TYPE字典1.销售 2.财务';

comment on column T_RM_TALENTEDRESUME.TALENTEDTYPENAME is
'人才类型名';

comment on column T_RM_TALENTEDRESUME.UPDATEUSERID is
'修改人ID';

comment on column T_RM_TALENTEDRESUME.UPDATEDATE is
'修改时间';

/*==============================================================*/
/* Index: "Index_T_RM_TALENTEDRESUME"                           */
/*==============================================================*/
create index "Index_T_RM_TALENTEDRESUME" on T_RM_TALENTEDRESUME (
   RESUMEID ASC
);
