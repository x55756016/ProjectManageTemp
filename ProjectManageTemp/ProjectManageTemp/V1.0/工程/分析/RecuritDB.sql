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
'T_RM_CRPLAN �ƶ���Ƹ�ƻ��ӱ�';

comment on column T_RM_CRPLAN.CRPLANID is
'�ƻ�������ID';

comment on column T_RM_CRPLAN.PLANID is
'�ƻ�ID';

comment on column T_RM_CRPLAN.REQUIREAPPLYID is
'����ID';

comment on column T_RM_CRPLAN.PUBLISHID is
'����ID';

comment on column T_RM_CRPLAN.PUBLISHNAME is
'������';

comment on column T_RM_CRPLAN.REQQTY is
'��������������';

comment on column T_RM_CRPLAN.EXPECTCOST is
'Ԥ�Ʒ���';

comment on column T_RM_CRPLAN.REMARK is
'˵��';

comment on column T_RM_CRPLAN.CREATEUSERID is
'������';

comment on column T_RM_CRPLAN.CREATEDATE is
'����ʱ��';

comment on column T_RM_CRPLAN.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_CRPLAN.UPDATEDATE is
'�޸�ʱ��';

comment on column T_RM_CRPLAN.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

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
'T_RM_CRPLANEXE ��Ƹ�ƻ�ִ��';

comment on column T_RM_CRPLANEXE.PLANID is
'�ƻ�ID';

comment on column T_RM_CRPLANEXE.REQUIREAPPLYID is
'����ID';

comment on column T_RM_CRPLANEXE.REQUIREAPPLYCODE is
'������';

comment on column T_RM_CRPLANEXE.PUBLISHID is
'����ID';

comment on column T_RM_CRPLANEXE.PUBLISHNAME is
'������';

comment on column T_RM_CRPLANEXE.RESUMEID is
'����ID';

comment on column T_RM_CRPLANEXE.NAME is
'����';

comment on column T_RM_CRPLANEXE.CREATEUSERID is
'������';

comment on column T_RM_CRPLANEXE.CREATEDATE is
'����ʱ��';

comment on column T_RM_CRPLANEXE.CREATECOMPANYID is
'�����˹�˾ID';

comment on column T_RM_CRPLANEXE.CREATEDEPARTMENTID is
'�����˲���ID';

comment on column T_RM_CRPLANEXE.CREATEPOSTID is
'�����˸�λID';

comment on column T_RM_CRPLANEXE.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

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
'T_RM_CRPLANMASTER ��Ƹ�ƻ�����';

comment on column T_RM_CRPLANMASTER.PLANID is
'�ƻ�ID';

comment on column T_RM_CRPLANMASTER.REQUIREAPPLYID is
'����ID';

comment on column T_RM_CRPLANMASTER.REQUIREAPPLYCODE is
'������';

comment on column T_RM_CRPLANMASTER.INTENDDATE is
'Ԥ�Ƶ�������';

comment on column T_RM_CRPLANMASTER.ISEXE is
'��Ƹ�ƻ�ִ�� 0.δ�ύ 1.���ύ��ѡ3.ִ�н���';

comment on column T_RM_CRPLANMASTER.CHECKSTATES is
'���״̬�� CheckStates
///0 δ�ύ UnSubmit,
///1 ����� Approving,
/// 2 ���ͨ�� Approved,
///3 ���δͨ�� UnApproved
///4 �����
///5 ����';

comment on column T_RM_CRPLANMASTER.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

comment on column T_RM_CRPLANMASTER.OWNERID is
'������ID';

comment on column T_RM_CRPLANMASTER.OWNERPOSTID is
'������λID';

comment on column T_RM_CRPLANMASTER.OWNERDEPARTMENTID is
'��������ID';

comment on column T_RM_CRPLANMASTER.OWNERCOMPANYID is
'������˾ID';

comment on column T_RM_CRPLANMASTER.CREATEUSERID is
'������';

comment on column T_RM_CRPLANMASTER.CREATEDATE is
'����ʱ��';

comment on column T_RM_CRPLANMASTER.CREATECOMPANYID is
'�����˹�˾ID';

comment on column T_RM_CRPLANMASTER.CREATEDEPARTMENTID is
'�����˲���ID';

comment on column T_RM_CRPLANMASTER.CREATEPOSTID is
'�����˸�λID';

comment on column T_RM_CRPLANMASTER.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_CRPLANMASTER.UPDATEDATE is
'�޸�ʱ��';

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
'����������������趨';

comment on column T_RM_CRUANSWER.ANSWERID is
'����ID';

comment on column T_RM_CRUANSWER.QUESTIONID is
'����ID';

comment on column T_RM_CRUANSWER.ANSWERNAME is
'����';

comment on column T_RM_CRUANSWER.USEFUL is
'���Ƿ�Ϊ�����1.������.2.Ϊ������';

comment on column T_RM_CRUANSWER.SORTNO is
'�����';

comment on column T_RM_CRUANSWER.REMARK is
'��ע';

comment on column T_RM_CRUANSWER.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

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
'���������������趨';

comment on column T_RM_CRUQUESTION.QUESTIONID is
'����ID';

comment on column T_RM_CRUQUESTION.QUESTIONNAME is
'������';

comment on column T_RM_CRUQUESTION.QUESTIONVALUE is
'����ֵ';

comment on column T_RM_CRUQUESTION.SORTNO is
'�������';

comment on column T_RM_CRUQUESTION.QUESTIONTYPE is
'��������:1ѡ���� 2.�ʴ���.';

comment on column T_RM_CRUQUESTION.RULE is
'���ԭ��:1.һƱ�������.2.3������һƱ�������.3.������Դ���پ���';

comment on column T_RM_CRUQUESTION.DISABLE is
'�Ƿ���ʹ����.0.ʹ����.1.δʹ��';

comment on column T_RM_CRUQUESTION.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_CRUQUESTION.UPDATEDATE is
'�޸�ʱ��';

comment on column T_RM_CRUQUESTION.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

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
'��ְ֤��';

comment on column T_RM_DISMISSPAPER.RESUMEDELIVERYID is
'����ӦƸID';

comment on column T_RM_DISMISSPAPER.RESUMENAME is
'ӦƸ������';

comment on column T_RM_DISMISSPAPER.COMPANYCONFIRM is
'������λȷ��1.��.2,��';

comment on column T_RM_DISMISSPAPER.DISMISSCONFIRM is
'�Ƿ��ѿ���ְ֤��1.��.2,��';

comment on column T_RM_DISMISSPAPER.WORKYEAECONFIRM is
'������������Ƿ񳬹�1.5������1.��.2,��';

comment on column T_RM_DISMISSPAPER.DISMISSREASONCONFIRM is
'��ְԭ���Ƿ���ʵ1.��.2,��.3δ�ش�';

comment on column T_RM_DISMISSPAPER.POSTCONFIMR is
'��λ�Ƿ����1.��ʵ,2.δ�ش�.3.����ʵ.4.δ�ش�';

comment on column T_RM_DISMISSPAPER.SALARYCONFIRM is
'н���Ƿ���ʵ1.��ʵ,2.δ�ش�.3.����ʵ.4.δ�ش�';

comment on column T_RM_DISMISSPAPER.RESULT is
'1.��ʵ.2.����ʵ';

comment on column T_RM_DISMISSPAPER.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

comment on column T_RM_DISMISSPAPER.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_DISMISSPAPER.UPDATEDATE is
'�޸�ʱ��';

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
'��������';

comment on column T_RM_EDUCATEHISTORY.EDUCATEHISTORYID is
'��������ID';

comment on column T_RM_EDUCATEHISTORY.RESUMEID is
'����ID';

comment on column T_RM_EDUCATEHISTORY.SCHOONAME is
'ѧУ����';

comment on column T_RM_EDUCATEHISTORY.MAJOR is
'רҵ';

comment on column T_RM_EDUCATEHISTORY.EDUCATIONLEVEL is
'���ѧ��0:����1:����2:�м�3: ��ר4: ��ר5: ����6: ˶ʿ7: ��ʿ';

comment on column T_RM_EDUCATEHISTORY.EDUCATIONNAME is
'ѧ������';

comment on column T_RM_EDUCATEHISTORY.STARTDATE is
'ѧ����ʼ����';

comment on column T_RM_EDUCATEHISTORY.ENDDATE is
'ѧ����������';

comment on column T_RM_EDUCATEHISTORY.REMARK is
'�����������';

comment on column T_RM_EDUCATEHISTORY.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_EDUCATEHISTORY.UPDATEDATE is
'�޸�ʱ��';

comment on column T_RM_EDUCATEHISTORY.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

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
'T_RM_EMPLOYAPPLY ��ְ����';

comment on column T_RM_EMPLOYAPPLY.EMPLOYAPPLYID is
'��ְID';

comment on column T_RM_EMPLOYAPPLY.RESUMEDELIVERYID is
'����ӦƸID';

comment on column T_RM_EMPLOYAPPLY.ENTERDATE is
'����ʱ��';

comment on column T_RM_EMPLOYAPPLY.PLANENTERDATE is
'Ԥ����ְ����';

comment on column T_RM_EMPLOYAPPLY.ISACCEPTEMPLOIED is
'ӦƸ���Ƿ��Ӧ��¼��
1: ��
2����';

comment on column T_RM_EMPLOYAPPLY.RESUMENAME is
'ӦƸ������';

comment on column T_RM_EMPLOYAPPLY.REQUIREPOSTNAME is
'ӦƸ��λ';

comment on column T_RM_EMPLOYAPPLY.REMARK is
'¼�ñ�ע';

comment on column T_RM_EMPLOYAPPLY.SALARY is
'н��Ҫ��';

comment on column T_RM_EMPLOYAPPLY.CLASS is
'��Ӧн�ʼ���';

comment on column T_RM_EMPLOYAPPLY.TRYOUTSALARY is
'��������н';

comment on column T_RM_EMPLOYAPPLY.FORMALSALARY is
'ת����н';

comment on column T_RM_EMPLOYAPPLY.INCOME is
'��������';

comment on column T_RM_EMPLOYAPPLY.PLANDATE is
'����ʱ��';

comment on column T_RM_EMPLOYAPPLY.SURVEYSTATUS is
'�Ƿ��ѱ�������1.δ����.2.�ѵ���';

comment on column T_RM_EMPLOYAPPLY.SURVEYRESULT is
'����������:1.�ϸ�.2.���ϸ�.3.δ����';

comment on column T_RM_EMPLOYAPPLY.ENTERLISTSTATUS is
'��ְ����״̬1.�Ѱ�����ְ����.2.δ������ְ����';

comment on column T_RM_EMPLOYAPPLY.ENTERLISTRESULT is
'��ְ�������:1.�ϸ�.2.���ϸ�';

comment on column T_RM_EMPLOYAPPLY.CHECKSTATES is
'���״̬�� CheckStates
///0 δ�ύ UnSubmit,
///1 ����� Approving,
/// 2 ���ͨ�� Approved,
///3 ���δͨ�� UnApproved
///4 �����
///5 ����';

comment on column T_RM_EMPLOYAPPLY.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

comment on column T_RM_EMPLOYAPPLY.OWNERID is
'������ID';

comment on column T_RM_EMPLOYAPPLY.OWNERPOSTID is
'������λID';

comment on column T_RM_EMPLOYAPPLY.OWNERDEPARTMENTID is
'��������ID';

comment on column T_RM_EMPLOYAPPLY.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_EMPLOYAPPLY.UPDATEDATE is
'�޸�ʱ��';

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
'��ְ����';

comment on column T_RM_ENTERLIST.ENTERLISTID is
'��ְ����ID';

comment on column T_RM_ENTERLIST.RESUMEDELIVERYID is
'����ӦƸID';

comment on column T_RM_ENTERLIST.RESUMENAME is
'ӦƸ������';

comment on column T_RM_ENTERLIST.IDCARDNUMBER is
'���֤����';

comment on column T_RM_ENTERLIST.IDCARDTYPE is
'���֤������1.���֤.2.ʿ��֤.3.����';

comment on column T_RM_ENTERLIST.CARDPHONE is
'֤���ϴ�';

comment on column T_RM_ENTERLIST.CARDRESULT is
'1.�ϸ�.2.��ʱ���֤.3.δ�ύ 4.���� 5.�޷�ʶ��.6.���';

comment on column T_RM_ENTERLIST.DIPLOMA is
'��ҵ֤';

comment on column T_RM_ENTERLIST.DIPLOMACHECK is
'1.95ǰ����Ϊ�жϺϸ�.2.95ǰ����Ϊ�жϲ��ϸ�.3.95ǰ�޷��ύ.4.95(��)�����֤���ϸ�.5.95(��)���޷�ʶ��.6.95(��)���޷��ύ.7.Ӧ���ҵ����ѧУ֤��.8.�ȴ��ύ.9.���';

comment on column T_RM_ENTERLIST.DIPLOMAPHONE is
'��ҵ֤�ϴ�';

comment on column T_RM_ENTERLIST.DEGREECARD is
'ѧλ֤';

comment on column T_RM_ENTERLIST.DEGREECARDCHECK is
'1.�ϸ� 2.���ϸ�';

comment on column T_RM_ENTERLIST.DEGREECARDAPHOTO is
'ѧλ֤�ϴ�';

comment on column T_RM_ENTERLIST.HEALTHTEST is
'��ְ����';

comment on column T_RM_ENTERLIST.HEALTHTESTCHECK is
'1.�ϸ� 2.���ϸ�';

comment on column T_RM_ENTERLIST.HEALTHTESTPHOTO is
'��ְ�����ϴ�';

comment on column T_RM_ENTERLIST.DISMISSPAPER is
'��ְ֤��';

comment on column T_RM_ENTERLIST.DISMISSPAPERCHECK is
'1.��ʵ���� 2.���ύ,���ϸ�.3.�ȴ�15�����ṩ.4.�޷��ṩ.5.ԭ��λ���棬�޷��ṩ.6.����ְҵ���޷��ṩ';

comment on column T_RM_ENTERLIST.DISMISSPAPERPHOTO is
'��ְ֤���ϴ�';

comment on column T_RM_ENTERLIST.DISCLAIMER is
'��������';

comment on column T_RM_ENTERLIST.DISCLAIMERCHECK is
'1.�ϸ� 2.���ϸ�';

comment on column T_RM_ENTERLIST.DISCLAIMERPHOTO is
'���������ϴ�';

comment on column T_RM_ENTERLIST.SURETY is
'��������';

comment on column T_RM_ENTERLIST.SURETYCHECK is
'1.�ϸ� 2.���ϸ�.3.�ȴ��ύ';

comment on column T_RM_ENTERLIST.SURETYPATH is
'���������ϴ�';

comment on column T_RM_ENTERLIST.APPOINTCARD is
'�ϸ�֤';

comment on column T_RM_ENTERLIST.APPOINTCHECK is
'1.�ϸ� 2.���ϸ�.3.�ȴ��ύ';

comment on column T_RM_ENTERLIST.APPOINTPHOTO is
'�ϸ�֤�ϴ�';

comment on column T_RM_ENTERLIST.JQUALIFY is
'��λ�ʸ�֤��';

comment on column T_RM_ENTERLIST.JQUALIFYCHECK is
'1.�ϸ� 2.���ϸ�.3.�ȴ��ύ15����';

comment on column T_RM_ENTERLIST.JQUALIFYPHOTO is
'��λ�ʸ�֤���ϴ�';

comment on column T_RM_ENTERLIST.BANKCARD is
'���п�';

comment on column T_RM_ENTERLIST.BANKCARDCHECK is
'1.���ύ.2.�ȴ��ύ';

comment on column T_RM_ENTERLIST.BANKCARDPHOTO is
'���п��ϴ�';

comment on column T_RM_ENTERLIST.SOCIALCARD is
'�籣��';

comment on column T_RM_ENTERLIST.SOCIALCARDCHECK is
'1.���ύ.2.�ȴ��ύ.3,��˾�°�';

comment on column T_RM_ENTERLIST.SOCIALCARDPHOTO is
'�籣���ϴ�';

comment on column T_RM_ENTERLIST.HOUSEFCARD is
'ס��������';

comment on column T_RM_ENTERLIST.HOUSEFCARDCHECK is
'1.���ύ.2.�ȴ��ύ.3,��˾�°�';

comment on column T_RM_ENTERLIST.HOUSEFCARDPHONE is
'ס���������ϴ�';

comment on column T_RM_ENTERLIST.COLORPHOTO is
'��ɫ��Ƭ';

comment on column T_RM_ENTERLIST.COLORPHOTOCHECK is
'1.���ύ.2.�ȴ��ύ';

comment on column T_RM_ENTERLIST."COLORPHOTOPic" is
'��ɫ��Ƭ�ϴ�';

comment on column T_RM_ENTERLIST.LABORCON is
'�Ͷ���ͬ';

comment on column T_RM_ENTERLIST.LABORCONPHOTO is
'�Ͷ���ͬ�ϴ�';

comment on column T_RM_ENTERLIST.LABORCONCHECK is
'�Ͷ���ͬ�����0.δ�ύ 1.���ύ';

comment on column T_RM_ENTERLIST.ANOTHER is
'����';

comment on column T_RM_ENTERLIST.ANOTHERPHOTO is
'���������ϴ�';

comment on column T_RM_ENTERLIST.ANOTHERCHECK is
'�������ϼ����0.δ�ύ 1.���ύ';

comment on column T_RM_ENTERLIST.RESULT is
'1.�ϸ� 2.���ϸ�';

comment on column T_RM_ENTERLIST.CHECKSTATES is
'���״̬�� CheckStates
///0 δ�ύ UnSubmit,
///1 ����� Approving,
/// 2 ���ͨ�� Approved,
///3 ���δͨ�� UnApproved
///4 �����
///5 ����';

comment on column T_RM_ENTERLIST.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

comment on column T_RM_ENTERLIST.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_ENTERLIST.UPDATEDATE is
'�޸�ʱ��';

comment on column T_RM_ENTERLIST.OWNERID is
'������ID';

comment on column T_RM_ENTERLIST.OWNERPOSTID is
'������λID';

comment on column T_RM_ENTERLIST.OWNERDEPARTMENTID is
'��������ID';

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
'���Թٶ�ӦƸ�ߵ�����';

comment on column T_RM_ESTFORNEWER.NEWERESTID is
'��ӦƸ�ߵ�����ID';

comment on column T_RM_ESTFORNEWER.RESUMEDELIVERYID is
'����ӦƸID';

comment on column T_RM_ESTFORNEWER.INTERVIEWERID is
'���Թ�ID';

comment on column T_RM_ESTFORNEWER.INTERVIEWERDEPARTMENTID is
'���Թٵ�λ����ID';

comment on column T_RM_ESTFORNEWER.INTERVIEWERPOSTID is
'���Թٸ�λID';

comment on column T_RM_ESTFORNEWER.INTERVIEWERCOMPANYID is
'���Թٹ�˾ID';

comment on column T_RM_ESTFORNEWER.SURFACE is
'�Ǳ���1.����.2.����.3.һ��.4.�ϲ�';

comment on column T_RM_ESTFORNEWER.COMMU is
'��ͨ����1.����.2.����.3.һ��.4.�ϲ�';

comment on column T_RM_ESTFORNEWER.INNOV is
'��������1.����.2.����.3.һ��.4.�ϲ�';

comment on column T_RM_ESTFORNEWER.COOPT is
'Э������1.����.2.����.3.һ��.4.�ϲ�';

comment on column T_RM_ESTFORNEWER.ANALYSIS is
'��������1.����.2.����.3.һ��.4.�ϲ�';

comment on column T_RM_ESTFORNEWER.PROFESSIONAL is
'רҵ����1.����.2.����.3.һ��.4.�ϲ�';

comment on column T_RM_ESTFORNEWER.POTENTIAL is
'��չǱ��1.����.2.����.3.һ��.4.�ϲ�';

comment on column T_RM_ESTFORNEWER.ENVIR is
'���������빫˾����ƥ���1.����.2.����.3.һ��.4.�ϲ�';

comment on column T_RM_ESTFORNEWER.CULT is
'�빫˾�Ļ�ƥ���1.����.2.����.3.һ��.4.�ϲ�';

comment on column T_RM_ESTFORNEWER.DETAILEST is
'��������';

comment on column T_RM_ESTFORNEWER.ESTRESULT is
'��������:1.����¼��.2.��¼��.3.�Ƽ�����';

comment on column T_RM_ESTFORNEWER.RECPOSTID is
'�Ƽ���λID';

comment on column T_RM_ESTFORNEWER.SALARY is
'н��Ҫ��';

comment on column T_RM_ESTFORNEWER.CLASS is
'��Ӧн�ʼ���';

comment on column T_RM_ESTFORNEWER.TRYOUTSALARY is
'��������н';

comment on column T_RM_ESTFORNEWER.FORMALSALARY is
'ת����н';

comment on column T_RM_ESTFORNEWER.INCOME is
'��������';

comment on column T_RM_ESTFORNEWER.PLANDATE is
'����ʱ��';

comment on column T_RM_ESTFORNEWER.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_ESTFORNEWER.UPDATEDATE is
'�޸�ʱ��';

comment on column T_RM_ESTFORNEWER.OWNERID is
'������ID';

comment on column T_RM_ESTFORNEWER.OWNERPOSTID is
'������λID';

comment on column T_RM_ESTFORNEWER.OWNERDEPARTMENTID is
'��������ID';

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
'���Թٶ���Ƹ���������';

comment on column T_RM_ESTFORRECM.MANAGERESTID is
'����Ƹ��������ID';

comment on column T_RM_ESTFORRECM.ESTERID is
'������ID';

comment on column T_RM_ESTFORRECM.ESTER is
'������';

comment on column T_RM_ESTFORRECM.ESTERDEPARTMENTID is
'�����˵�λ����';

comment on column T_RM_ESTFORRECM.ESTERPOSTID is
'�����˸�λ';

comment on column T_RM_ESTFORRECM.ESTERCOMPANYID is
'�����˹�˾ID';

comment on column T_RM_ESTFORRECM.BYESTER is
'��������';

comment on column T_RM_ESTFORRECM.BYESTDEPARTMENTID is
'�����˲���';

comment on column T_RM_ESTFORRECM.BYESTCOMPANYID is
'�����˹�˾ID';

comment on column T_RM_ESTFORRECM.DARACOMPLETE is
'�����Ƿ���ȫ0.δ����.1.��.2.��';

comment on column T_RM_ESTFORRECM.SERVICEONTIME is
'�����Ƿ�׼ʱ0.δ����.1.׼ʱ.2.��׼ʱ';

comment on column T_RM_ESTFORRECM.CHARACTER is
'��Ա����';

comment on column T_RM_ESTFORRECM.RESUMEID is
'����ID';

comment on column T_RM_ESTFORRECM.REMARK is
'��ע';

comment on column T_RM_ESTFORRECM.EDITSTATES is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

comment on column T_RM_ESTFORRECM.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_ESTFORRECM.UPDATEDATE is
'�޸�ʱ��';

comment on column T_RM_ESTFORRECM.OWNERID is
'������ID';

comment on column T_RM_ESTFORRECM.OWNERPOSTID is
'������λID';

comment on column T_RM_ESTFORRECM.OWNERDEPARTMENTID is
'��������ID';

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
'��Ƹ�����ǰ̨�Ӵ������۱�';

comment on column T_RM_ESTFORRECP.RECPESTID is
'��ǰ̨������ID';

comment on column T_RM_ESTFORRECP.ESTERID is
'������ID';

comment on column T_RM_ESTFORRECP.ESTER is
'������';

comment on column T_RM_ESTFORRECP.ESTERDEPARTMENTID is
'�����˵�λ����';

comment on column T_RM_ESTFORRECP.ESTERPOSTID is
'�����˸�λ';

comment on column T_RM_ESTFORRECP.ESTERCOMPANYID is
'�����˹�˾ID';

comment on column T_RM_ESTFORRECP.BYESTDEPARTMENTID is
'�����˲���';

comment on column T_RM_ESTFORRECP.BYESTCOMPANYID is
'�����˹�˾ID';

comment on column T_RM_ESTFORRECP.BYESTERID is
'������ID';

comment on column T_RM_ESTFORRECP.BYESTER is
'��������';

comment on column T_RM_ESTFORRECP.VISITORID is
'������ID';

comment on column T_RM_ESTFORRECP.REMARK is
'��ע';

comment on column T_RM_ESTFORRECP.RECEPTIONITEM is
'�Ӵ�����:1.2.��ʾ�Ӵ������1.2�ǽӴ������ֵ.1��ˮ��2.��˾�ڿ�.���Ӵ������';

comment on column T_RM_ESTFORRECP.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

comment on column T_RM_ESTFORRECP.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_ESTFORRECP.UPDATEDATE is
'�޸�ʱ��';

comment on column T_RM_ESTFORRECP.OWNERID is
'������ID';

comment on column T_RM_ESTFORRECP.OWNERPOSTID is
'������λID';

comment on column T_RM_ESTFORRECP.OWNERDEPARTMENTID is
'��������ID';

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
'��Ƹ��������Թ�����';

comment on column T_RM_ESTFORVIEWER.VIEWERESTID is
'�����Թ�����ID';

comment on column T_RM_ESTFORVIEWER.ESTER is
'������';

comment on column T_RM_ESTFORVIEWER.ESTERID is
'������ID';

comment on column T_RM_ESTFORVIEWER.ESTERDEPARTMENTID is
'�����˵�λ����ID';

comment on column T_RM_ESTFORVIEWER.ESTPOSTID is
'�����˸�λID';

comment on column T_RM_ESTFORVIEWER.ESTCOMPANYID is
'�����˹�˾ID';

comment on column T_RM_ESTFORVIEWER.BYESTDEPARTMENTID is
'�����˲���';

comment on column T_RM_ESTFORVIEWER.BYESTCOMPANYID is
'�����˹�˾ID';

comment on column T_RM_ESTFORVIEWER.BYESTERID is
'��������ID';

comment on column T_RM_ESTFORVIEWER.RESUMEID is
'����ID';

comment on column T_RM_ESTFORVIEWER.REMARK is
'��ע';

comment on column T_RM_ESTFORVIEWER.ATTENDSTATUS is
'����״��:1.����.2.ȱϯ.3�ٵ�.4.����';

comment on column T_RM_ESTFORVIEWER.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

comment on column T_RM_ESTFORVIEWER.OWNERID is
'������ID';

comment on column T_RM_ESTFORVIEWER.OWNERPOSTID is
'������λID';

comment on column T_RM_ESTFORVIEWER.OWNERDEPARTMENTID is
'��������ID';

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
'T_RM_EXAMRESULT �绰����������';

comment on column T_RM_EXAMRESULT.REQEXAMID is
'������ID';

comment on column T_RM_EXAMRESULT.REQUIREAPPLYID is
'����ID';

comment on column T_RM_EXAMRESULT.EXAMID is
'����ID';

comment on column T_RM_EXAMRESULT.EXAMTYPE is
'�Ծ�����.1.�绰���� .2.���Ա���';

comment on column T_RM_EXAMRESULT.EXAMPAPERID is
'�Ծ�ID';

comment on column T_RM_EXAMRESULT.EXAMPAPERNAME is
'�Ծ�����';

comment on column T_RM_EXAMRESULT.REQUIRECOMPANYID is
'����˾ID';

comment on column T_RM_EXAMRESULT.REQUIREDEPARTMENTID is
'������ID';

comment on column T_RM_EXAMRESULT.REQUIREPOSTID is
'�����λID';

comment on column T_RM_EXAMRESULT.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_EXAMRESULT.UPDATEDATE is
'�޸�ʱ��';

comment on column T_RM_EXAMRESULT.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

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
'����';

comment on column T_RM_EXAMTEM.EXAMID is
'����ID';

comment on column T_RM_EXAMTEM.EXAMNAME is
'��������';

comment on column T_RM_EXAMTEM.SCORE is
'���Գɼ�';

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
'��������';

comment on column T_RM_EXPERIENCE.EXPERIENCEID is
'��������ID';

comment on column T_RM_EXPERIENCE.RESUMEID is
'����ID';

comment on column T_RM_EXPERIENCE.COMPANYNAME is
'��������˾';

comment on column T_RM_EXPERIENCE.POST is
'������λ';

comment on column T_RM_EXPERIENCE.SALARY is
'��н';

comment on column T_RM_EXPERIENCE.STARTDATE is
'������ʼ����';

comment on column T_RM_EXPERIENCE.ENDDATE is
'������������';

comment on column T_RM_EXPERIENCE.JOBDESCRIPTION is
'��������';

comment on column T_RM_EXPERIENCE.VOUCHER is
'֤����';

comment on column T_RM_EXPERIENCE.VOUCHERPHONE is
'֤������ϵ�绰';

comment on column T_RM_EXPERIENCE.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_EXPERIENCE.UPDATEDATE is
'�޸�ʱ��';

comment on column T_RM_EXPERIENCE.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

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
'�����ϸ';

comment on column T_RM_HEALTHDATA.HEALTHID is
'����ID';

comment on column T_RM_HEALTHDATA.RESUMENAME is
'ӦƸ������';

comment on column T_RM_HEALTHDATA.YEARMONTH is
'���';

comment on column T_RM_HEALTHDATA.SEX is
'�Ա�1.��.2.Ů';

comment on column T_RM_HEALTHDATA.AGE is
'����';

comment on column T_RM_HEALTHDATA.MARRIAGE is
'����״��1.�ѻ�.2.δ��';

comment on column T_RM_HEALTHDATA.CURRENTADDRESS is
'סַ';

comment on column T_RM_HEALTHDATA.HEIGHT is
'���cm';

comment on column T_RM_HEALTHDATA.WEIGHT is
'����kg';

comment on column T_RM_HEALTHDATA.POST is
'ӦƸְλ';

comment on column T_RM_HEALTHDATA.LSIGHT is
'����������.1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.LSIGHTP is
'�������������';

comment on column T_RM_HEALTHDATA.RSIGHT is
'����������1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.RSIGHTP is
'���������Ҳ���';

comment on column T_RM_HEALTHDATA.LEAR is
'������1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.LEARP is
'���������';

comment on column T_RM_HEALTHDATA.REAR is
'������1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.REARP is
'�����Ҳ���';

comment on column T_RM_HEALTHDATA.EARDISEASE is
'����1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.EARDISEASEP is
'��������';

comment on column T_RM_HEALTHDATA.NOSEDISEASE is
'�Ǽ�1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.NOSEDISEASEP is
'�Ǽ�����';

comment on column T_RM_HEALTHDATA.COLORVISION is
'ɫ��1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.COLORVISIONP is
'ɫ������';

comment on column T_RM_HEALTHDATA.BLOODPRESSURE is
'Ѫѹ 1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.BLOODPRESSUREP is
'Ѫѹ����';

comment on column T_RM_HEALTHDATA.FAUCE is
'�ʺ� 1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.FAUCEP is
'�ʺ����';

comment on column T_RM_HEALTHDATA.CHUNE is
'����1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.CHUNEP is
'�������';

comment on column T_RM_HEALTHDATA.DENTALCARIES is
'ȣ��1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.DENTALCARIESP is
'ȣ�ݲ���';

comment on column T_RM_HEALTHDATA.MISSTOOTH is
'ȱ��1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.MISSTOOTHP is
'ȱ�ݲ���';

comment on column T_RM_HEALTHDATA.PERIODONTAL is
'���ܼ���1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.PERIODONTALP is
'���ܼ�������';

comment on column T_RM_HEALTHDATA.STUTTER is
'�ڳ�1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.STUTTERP is
'�ڳԲ���';

comment on column T_RM_HEALTHDATA.BUST is
'��Χ1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.BUSTP is
'��Χ����';

comment on column T_RM_HEALTHDATA.BRESTHDIFF is
'������1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.BRESTHDIFFP is
'���������';

comment on column T_RM_HEALTHDATA.THYROID is
'��״��1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.THYROIDP is
'��״�ٲ���';

comment on column T_RM_HEALTHDATA.SKIN is
'Ƥ��1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.SKINP is
'Ƥ������';

comment on column T_RM_HEALTHDATA.SPINE is
'����1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.SPINEP is
'��������';

comment on column T_RM_HEALTHDATA.LIMB is
'��֫1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.LIMBP is
'��֫����';

comment on column T_RM_HEALTHDATA.JOINT is
'�ؽ�1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.JOINTP is
'�ؽڲ���';

comment on column T_RM_HEALTHDATA.LYMPH is
'�ܰ�1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.LYMPHP is
'�ܰͲ���';

comment on column T_RM_HEALTHDATA.COLIC is
'����1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.COLICP is
'��������';

comment on column T_RM_HEALTHDATA.BELLY is
'����1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.BELLYP is
'��������';

comment on column T_RM_HEALTHDATA.NEURAL is
'��ϵͳ1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.NEURALP is
'��ϵͳ����';

comment on column T_RM_HEALTHDATA.PSYCHIATRICHIST is
'����ʷ1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.PSYCHIATRICHISTP is
'����ʷ����';

comment on column T_RM_HEALTHDATA.LUNGRES is
'�μ�������1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.LUNGRESP is
'�μ�����������';

comment on column T_RM_HEALTHDATA.HEARTBLOOD is
'���༰Ѫ��1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.HEARTBLOODP is
'���༰Ѫ�ܲ���';

comment on column T_RM_HEALTHDATA.LIVER is
'����1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.LIVERP is
'�������';

comment on column T_RM_HEALTHDATA.SPLEEN is
'Ƣ��1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.SPLEENP is
'Ƣ�����';

comment on column T_RM_HEALTHDATA.CHESTXRAY is
'�ز�X��1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.CHESTXRAYP is
'�ز�X��';

comment on column T_RM_HEALTHDATA.ANTHOR is
'����1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.ANTHORP is
'��������';

comment on column T_RM_HEALTHDATA.BLOOD is
'Ѫ����1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.BLOODP is
'Ѫ�������';

comment on column T_RM_HEALTHDATA.HBSAG is
'HBSAg1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.HBSAGP is
'HBSAg����';

comment on column T_RM_HEALTHDATA.HBSAB is
'HBSAb1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.HBSABP is
'HBSAb����';

comment on column T_RM_HEALTHDATA.HBEAG is
'HBEAG1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.HBEAGP is
'HBEAG����';

comment on column T_RM_HEALTHDATA.HBEAB is
'hBeAb1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.HBEABP is
'hBeAb����';

comment on column T_RM_HEALTHDATA.HBCAB is
'hBcAb1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.HBCABP is
'hBcAb����';

comment on column T_RM_HEALTHDATA.RESULT is
'�����:1�ϸ�.2���ϸ�';

comment on column T_RM_HEALTHDATA.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

comment on column T_RM_HEALTHDATA.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_HEALTHDATA.UPDATEDATE is
'�޸�ʱ��';

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
'�Բ�ͬ����ĸ�λ�趨������Ƹ������';

comment on column T_RM_HRPRINC.CLASSID is
'����';

comment on column T_RM_HRPRINC.PRINCPOSTID is
'���θ�λID';

comment on column T_RM_HRPRINC.PRINCCOMPANYID is
'�����˹�˾ID';

comment on column T_RM_HRPRINC.PRINCDEPARTMENTID is
'�����˲���ID';

comment on column T_RM_HRPRINC.CHECKSTATES is
'���״̬�� CheckStates
///0 δ�ύ UnSubmit,
///1 ����� Approving,
/// 2 ���ͨ�� Approved,
///3 ���δͨ�� UnApproved
///4 �����
///5 ����';

comment on column T_RM_HRPRINC.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

comment on column T_RM_HRPRINC.ISSENDBUMF is
'�Ƿ���Ҫ������0.����Ҫ.1.��Ҫ';

comment on column T_RM_HRPRINC.BUMFSCOPE is
'�����ĵķ�Χ0.����Ҫ.1.����˾.2.����';

comment on column T_RM_HRPRINC.OWNERID is
'������ID';

comment on column T_RM_HRPRINC.OWNERPOSTID is
'������λID';

comment on column T_RM_HRPRINC.OWNERDEPARTMENTID is
'��������ID';

comment on column T_RM_HRPRINC.OWNERCOMPANYID is
'������˾ID';

comment on column T_RM_HRPRINC.CREATEUSERID is
'������';

comment on column T_RM_HRPRINC.CREATEDATE is
'����ʱ��';

comment on column T_RM_HRPRINC.CREATECOMPANYID is
'�����˹�˾ID';

comment on column T_RM_HRPRINC.CREATEDEPARTMENTID is
'�����˲���ID';

comment on column T_RM_HRPRINC.CREATEPOSTID is
'�����˸�λID';

comment on column T_RM_HRPRINC.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_HRPRINC.UPDATEDATE is
'�޸�ʱ��';

/*==============================================================*/
/* Table: T_RM_INTERVIEW                                        */
/*==============================================================*/
create table T_RM_INTERVIEW 
(
   INTERVIEWID          VARCHAR2(50)         not null,
   RESUMEDELIVERYID     VARCHAR2(50)         not null,
   NOTIFYID             VARCHAR2(50)         not null,
   STAGE                VARCHAR2(10)         default '��0��',
   STAGENAME            NVARCHAR2(50),
   INTERVIEWRESULT      VARCHAR2(10)         default '��0��',
   INTERVIEWRESULTNAME  NVARCHAR2(50),
   REJECTTYPE           VARCHAR2(10)         default '��0��',
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
'����,�绰���Ժ͸��Ե�����ID��һ��.���Եļ�¼���ڷ����Թ�����ԤԼ֪ͨʱ.�绰����';

comment on column T_RM_INTERVIEW.INTERVIEWID is
'����ID';

comment on column T_RM_INTERVIEW.RESUMEDELIVERYID is
'����ӦƸID';

comment on column T_RM_INTERVIEW.NOTIFYID is
'֪ͨID';

comment on column T_RM_INTERVIEW.STAGE is
'���Խ׶�0.δ����;1.�绰��ʼ.2.����.3.��ְ';

comment on column T_RM_INTERVIEW.STAGENAME is
'���Խ׶���';

comment on column T_RM_INTERVIEW.INTERVIEWRESULT is
'0.δ���� .1δ֪ͨ 2.�ϸ�.3.���ϸ�.4.�ܾ��μ�..5.�˲Ŵ���6.�Ƽ����߸�λ';

comment on column T_RM_INTERVIEW.INTERVIEWRESULTNAME is
'���Խ����';

comment on column T_RM_INTERVIEW.REJECTTYPE is
'0.δ����1.�ݲ��뻻����.2.�뿪����.3.����';

comment on column T_RM_INTERVIEW.REJECTTYPENAME is
'�ܾ�������';

comment on column T_RM_INTERVIEW.REJECTREASON is
'�ܾ�ԭ��';

comment on column T_RM_INTERVIEW.EXAMID is
'����ID';

comment on column T_RM_INTERVIEW.EXAMTYPE is
'��������.1.�绰���� .2.���Ա���';

comment on column T_RM_INTERVIEW.SCORE is
'����';

comment on column T_RM_INTERVIEW.PLANVIEWSTART is
'�ƻ����Կ�ʼʱ��';

comment on column T_RM_INTERVIEW.PLANVIEWEND is
'�ƻ����Խ���ʱ��';

comment on column T_RM_INTERVIEW.ISEXAM is
'�Ƿ��ѿ���0.δ����1.δ���� 2.�ѿ���';

comment on column T_RM_INTERVIEW.ISINTERVIEW is
'�Ƿ�����̸0.δ����1.δ��̸ 2.����̸';

comment on column T_RM_INTERVIEW.INTERVIEWTIMESTART is
'���Կ�ʼʱ��';

comment on column T_RM_INTERVIEW.INTERVIEWTIMEEND is
'���Խ���ʱ��';

comment on column T_RM_INTERVIEW.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

comment on column T_RM_INTERVIEW.OWNERID is
'������ID';

comment on column T_RM_INTERVIEW.OWNERPOSTID is
'������λID';

comment on column T_RM_INTERVIEW.OWNERDEPARTMENTID is
'��������ID';

comment on column T_RM_INTERVIEW.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_INTERVIEW.UPDATEDATE is
'�޸�ʱ��';

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
'T_RM_INTERVIEWER ���Թ�';

comment on column T_RM_INTERVIEWER.INTERVIEWERUID is
'�������Թ�ID';

comment on column T_RM_INTERVIEWER.INTERVIEWERID is
'���Թ�ID';

comment on column T_RM_INTERVIEWER.REQUIREAPPLYID is
'����ID';

comment on column T_RM_INTERVIEWER.REQUIRECOMPANYID is
'����˾ID';

comment on column T_RM_INTERVIEWER.REQUIREDEPARTMENTID is
'������ID';

comment on column T_RM_INTERVIEWER.REQUIREPOSTID is
'�����λID';

comment on column T_RM_INTERVIEWER.SORTNO is
'���Թ����';

comment on column T_RM_INTERVIEWER.INTERVIEWERNAME is
'���Թ�����';

comment on column T_RM_INTERVIEWER.INTERVIEWERCOMPANYID is
'���Թٹ�˾ID';

comment on column T_RM_INTERVIEWER.INTERVIEWERCOMPANYNAME is
'���Թٹ�˾��';

comment on column T_RM_INTERVIEWER.INTERVIEWERDEPARTMENTID is
'���Թٲ���ID';

comment on column T_RM_INTERVIEWER.INTERVIEWERDEPARTMENTNAME is
'���Թٲ�����';

comment on column T_RM_INTERVIEWER.INTERVIEWERPOSTID is
'���Թٸ�λID';

comment on column T_RM_INTERVIEWER.INTERVIEWERPOSTNAME is
'���Թٸ�λ��';

comment on column T_RM_INTERVIEWER.CREATEUSERID is
'������';

comment on column T_RM_INTERVIEWER.CREATEDATE is
'����ʱ��';

comment on column T_RM_INTERVIEWER.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

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
'��Ϣģ��';

comment on column T_RM_MESSAGETEMPLATE.MESSAGETEMPLATENAME is
'ģ������';

comment on column T_RM_MESSAGETEMPLATE.CLASSNAME is
'����';

comment on column T_RM_MESSAGETEMPLATE.MESSAGE is
'ģ������';

comment on column T_RM_MESSAGETEMPLATE.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_MESSAGETEMPLATE.UPDATEDATE is
'�޸�ʱ��';

comment on column T_RM_MESSAGETEMPLATE.MESSAGETEMPLATETYPE is
'ģ������  1:���ԡ���:����,��:��ְ';

comment on column T_RM_MESSAGETEMPLATE.CHECKSTATES is
'���״̬�� CheckStates
///0 δ�ύ UnSubmit,
///1 ����� Approving,
/// 2 ���ͨ�� Approved,
///3 ���δͨ�� UnApproved
///4 �����
///5 ����';

comment on column T_RM_MESSAGETEMPLATE.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

comment on column T_RM_MESSAGETEMPLATE.OWNERID is
'������ID';

comment on column T_RM_MESSAGETEMPLATE.OWNERPOSTID is
'������λID';

comment on column T_RM_MESSAGETEMPLATE.OWNERDEPARTMENTID is
'��������ID';

comment on column T_RM_MESSAGETEMPLATE.OWNERNAME is
'������ID';

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
' ֪ͨ,��Դ��Grid������';

comment on column T_RM_NOTIFY.NOTIFYID is
'֪ͨID';

comment on column T_RM_NOTIFY.RESUMEDELIVERYID is
'����ӦƸID';

comment on column T_RM_NOTIFY.ISNOTIFIED is
'0:δ֪ͨ, 1:��֪ͨ';

comment on column T_RM_NOTIFY.NOTIFIEDMETHOD is
'1. �ʼ�,2.�绰,3.�ֻ�����,4.����';

comment on column T_RM_NOTIFY.NOTIFIEDRESULT is
'1 :��ʱ��,2.����.3.����.4.��ϵ����';

comment on column T_RM_NOTIFY.INTERVIEWDATEPLAN is
'�ƻ�����ʱ�䣬��ӦƸ�ߵļƻ�����ʱ���';

comment on column T_RM_NOTIFY.AHEADPROMPT is
'�Ƿ���ǰ����0.����ǰ���� 1.��ǰ����';

comment on column T_RM_NOTIFY.AHEADTIME is
'��ǰʱ��(Сʱ)';

comment on column T_RM_NOTIFY.INTERVIEWDATEDUE is
'ԤԼ����ʱ��';

comment on column T_RM_NOTIFY.INTERVIEWADDRESS is
'���Ե�ַ';

comment on column T_RM_NOTIFY.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_NOTIFY.UPDATEDATE is
'�޸�ʱ��';

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
'T_RM_NOTIFYSTANDARD  ֪ͨ��׼';

comment on column T_RM_NOTIFYSTANDARD.STANDARDID is
'֪ͨ��׼ID';

comment on column T_RM_NOTIFYSTANDARD.ITEMVALUE is
'֪ͨ��׼��';

comment on column T_RM_NOTIFYSTANDARD.SORTNO is
'���';

comment on column T_RM_NOTIFYSTANDARD.FATHERSTANDARDID is
'��֪ͨ��׼ID';

comment on column T_RM_NOTIFYSTANDARD.CREATEUSERID is
'������';

comment on column T_RM_NOTIFYSTANDARD.CREATEDATE is
'����ʱ��';

comment on column T_RM_NOTIFYSTANDARD.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_NOTIFYSTANDARD.UPDATEDATE is
'�޸�ʱ��';

comment on column T_RM_NOTIFYSTANDARD.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

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
'���巢�������༰����';

comment on column T_RM_PUBLISHTYPE.PUBLISHID is
'��������ID';

comment on column T_RM_PUBLISHTYPE.PUBLISHNAME is
'������';

comment on column T_RM_PUBLISHTYPE.COST is
'����';

comment on column T_RM_PUBLISHTYPE.REMARK is
'��ע';

comment on column T_RM_PUBLISHTYPE.CHECKSTATES is
'���״̬�� CheckStates
///0 δ�ύ UnSubmit,
///1 ����� Approving,
/// 2 ���ͨ�� Approved,
///3 ���δͨ�� UnApproved
///4 �����
///5 ����';

comment on column T_RM_PUBLISHTYPE.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

comment on column T_RM_PUBLISHTYPE.OWNERID is
'������ID';

comment on column T_RM_PUBLISHTYPE.OWNERPOSTID is
'������λID';

comment on column T_RM_PUBLISHTYPE.OWNERDEPARTMENTID is
'��������ID';

comment on column T_RM_PUBLISHTYPE.OWNERCOMPANYID is
'������˾ID';

comment on column T_RM_PUBLISHTYPE.CREATEUSERID is
'������';

comment on column T_RM_PUBLISHTYPE.CREATEDATE is
'����ʱ��';

comment on column T_RM_PUBLISHTYPE.CREATECOMPANYID is
'�����˹�˾ID';

comment on column T_RM_PUBLISHTYPE.CREATEDEPARTMENTID is
'�����˲���ID';

comment on column T_RM_PUBLISHTYPE.CREATEPOSTID is
'�����˸�λID';

comment on column T_RM_PUBLISHTYPE.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_PUBLISHTYPE.UPDATEDATE is
'�޸�ʱ��';

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
'T_RM_QUALIFICATION ��ְ�ʸ�
';

comment on column T_RM_QUALIFICATION.REQUIREAPPLYID is
'����ID';

comment on column T_RM_QUALIFICATION.EXPERIENCEREQ is
'��������Ҫ��1.�޹�������Ҫ��.2. >2�깤������Ҫ��.3.>5�깤������Ҫ��.4.>10�깤������Ҫ��.5.>15�깤������Ҫ��';

comment on column T_RM_QUALIFICATION.SEXREQ is
'�ձ�Ҫ��';

comment on column T_RM_QUALIFICATION.EDUCATEDREQ is
'ѧ��Ҫ�� 0:����
1:����
2:�м�
3: ��ר
4: ��ר
5: ����
6: ˶ʿ
7: ��ʿ';

comment on column T_RM_QUALIFICATION.CERTIFICATEREQ is
'֤��Ҫ��';

comment on column T_RM_QUALIFICATION.REMARK is
'��ע';

comment on column T_RM_QUALIFICATION.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

comment on column T_RM_QUALIFICATION.CREATEUSERID is
'������';

comment on column T_RM_QUALIFICATION.CREATEDATE is
'����ʱ��';

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
'ǰ̨�Ӵ�';

comment on column T_RM_RECEIPTION.VISITORID is
'������ID';

comment on column T_RM_RECEIPTION.VISITOR is
'����������';

comment on column T_RM_RECEIPTION.RESUMEDELIVERYID is
'����ӦƸID';

comment on column T_RM_RECEIPTION.IDCARDNUMBER is
'���֤����';

comment on column T_RM_RECEIPTION.SEX is
'�Ա�';

comment on column T_RM_RECEIPTION.COMPANY is
'�����˵�λ';

comment on column T_RM_RECEIPTION.CELLPHONE is
'�ֻ�����';

comment on column T_RM_RECEIPTION.DUTY is
'������ְ��';

comment on column T_RM_RECEIPTION.VISITORREASON is
'��������:1.ӦƸ 2.ҵ��Ǣ̸ 3.˽������ 4.���˱���.5.ά��ʩ��.6.��������';

comment on column T_RM_RECEIPTION.ISVISITED is
'�Ƿ�������1.δ���� 2.δ����.3.������';

comment on column T_RM_RECEIPTION.PLANDATE is
'�ƻ�����ʱ��';

comment on column T_RM_RECEIPTION.STATUS is
'�Ӵ�״̬1.�����Ӵ�.2.��ʱ�Ӵ�.3.�Ӵ�����ϵ����';

comment on column T_RM_RECEIPTION.COUNTDOWN is
'����ʱʱ��(����)';

comment on column T_RM_RECEIPTION.FRECEPTERID is
'��1�Ӵ���';

comment on column T_RM_RECEIPTION.SRECEPTERID is
'��2�Ӵ���';

comment on column T_RM_RECEIPTION.NOTIFYREMARK is
'֪ͨ״̬';

comment on column T_RM_RECEIPTION.RECEPTIONITEM is
'�Ӵ�����:1.2.��ʾ�Ӵ������1.2�ǽӴ������ֵ.1��ˮ��2.��˾�ڿ�.���Ӵ������';

comment on column T_RM_RECEIPTION.CHECKSTATES is
'���״̬�� CheckStates
///0 δ�ύ UnSubmit,
///1 ����� Approving,
/// 2 ���ͨ�� Approved,
///3 ���δͨ�� UnApproved
///4 �����
///5 ����';

comment on column T_RM_RECEIPTION.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

comment on column T_RM_RECEIPTION.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_RECEIPTION.UPDATEDATE is
'�޸�ʱ��';

comment on column T_RM_RECEIPTION.OWNERID is
'������ID';

comment on column T_RM_RECEIPTION.OWNERPOSTID is
'������λID';

comment on column T_RM_RECEIPTION.OWNERDEPARTMENTID is
'��������ID';

comment on column T_RM_RECEIPTION.OWNERCOMPANYID is
'������˾ID';

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
'T_RM_REQUIREAPPLY ��Ƹ��������';

comment on column T_RM_REQUIREAPPLY.REQUIREAPPLYID is
'����ID';

comment on column T_RM_REQUIREAPPLY.REQUIREAPPLYCODE is
'������';

comment on column T_RM_REQUIREAPPLY.REQUIRECOMPANYID is
'����˾ID';

comment on column T_RM_REQUIREAPPLY.REQUIREDEPARTMENTID is
'������ID';

comment on column T_RM_REQUIREAPPLY.REQUIREPOSTID is
'�����λID';

comment on column T_RM_REQUIREAPPLY.REQUIRECOMPANYNAME is
'����˾��';

comment on column T_RM_REQUIREAPPLY.REQUIREDEPARTMENTNAME is
'��������';

comment on column T_RM_REQUIREAPPLY.REQUIREPOSTNAME is
'�����λ��';

comment on column T_RM_REQUIREAPPLY.REQUIREDNUMBER is
'��Ƹ����';

comment on column T_RM_REQUIREAPPLY.POSTDUTY is
'��λְ��';

comment on column T_RM_REQUIREAPPLY.POSTCLASS is
'��λְ��';

comment on column T_RM_REQUIREAPPLY.EXPECTDATE is
'������������';

comment on column T_RM_REQUIREAPPLY.LANGUAGETYPE is
'1';

comment on column T_RM_REQUIREAPPLY.LANGUAGEABLILITY is
'0: ����
1: һ��
2: ����
3: ��ͨ';

comment on column T_RM_REQUIREAPPLY.TRAVELFREQUENCY is
'����Ƶ��';

comment on column T_RM_REQUIREAPPLY.WORKPLACE is
'�����ص㣬���ֵ���ѡ';

comment on column T_RM_REQUIREAPPLY.WORKYEAR is
'��������';

comment on column T_RM_REQUIREAPPLY.STARTDATE is
'������ʼ����';

comment on column T_RM_REQUIREAPPLY.ENDDATE is
'������������';

comment on column T_RM_REQUIREAPPLY.ACTUALENDDATE is
'ʵ�ʽ�������';

comment on column T_RM_REQUIREAPPLY.ENTERNUMBER is
'��������';

comment on column T_RM_REQUIREAPPLY.REQUIRESTATES is
'0: δ��Ч, 1: δ����, 2: ������, 3:�����, 4:�ѹ���, 5: �ֶ��ر�';

comment on column T_RM_REQUIREAPPLY.PLANSTARTDATE is
'��������';

comment on column T_RM_REQUIREAPPLY.PLANENDDATE is
'���������';

comment on column T_RM_REQUIREAPPLY.PUBLISHERID is
'������ID';

comment on column T_RM_REQUIREAPPLY.PUBLISHPOSTID is
'�����˸�λID';

comment on column T_RM_REQUIREAPPLY.PUBLISHDEPARTMENTID is
'�����˲���ID';

comment on column T_RM_REQUIREAPPLY.PUBLISHCOMPANYID is
'�����˹�˾ID';

comment on column T_RM_REQUIREAPPLY.CHECKSTATES is
'���״̬�� CheckStates
///0 δ�ύ UnSubmit,
///1 ����� Approving,
/// 2 ���ͨ�� Approved,
///3 ���δͨ�� UnApproved
///4 �����
///5 ����';

comment on column T_RM_REQUIREAPPLY.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

comment on column T_RM_REQUIREAPPLY.OWNERID is
'������ID';

comment on column T_RM_REQUIREAPPLY.OWNERPOSTID is
'������λID';

comment on column T_RM_REQUIREAPPLY.OWNERDEPARTMENTID is
'��������ID';

comment on column T_RM_REQUIREAPPLY.OWNERCOMPANYID is
'������˾ID';

comment on column T_RM_REQUIREAPPLY.CREATEUSERID is
'������';

comment on column T_RM_REQUIREAPPLY.CREATEDATE is
'����ʱ��';

comment on column T_RM_REQUIREAPPLY.CREATECOMPANYID is
'�����˹�˾ID';

comment on column T_RM_REQUIREAPPLY.CREATEDEPARTMENTID is
'�����˲���ID';

comment on column T_RM_REQUIREAPPLY.CREATEPOSTID is
'�����˸�λID';

comment on column T_RM_REQUIREAPPLY.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_REQUIREAPPLY.UPDATEDATE is
'�޸�ʱ��';

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
' T_RM_RESUME ӦƸ�߼���';

comment on column T_RM_RESUME.RESUMEID is
'����ID';

comment on column T_RM_RESUME.NAME is
'����';

comment on column T_RM_RESUME.SEX is
'�Ա� Sex
1��
0 Ů';

comment on column T_RM_RESUME.NATION is
'���ֵ���ѡ��';

comment on column T_RM_RESUME.PROVINCE is
'����';

comment on column T_RM_RESUME.HEIGHT is
'cm';

comment on column T_RM_RESUME.MARRIAGE is
'0 : δ��, 1: �ѻ�';

comment on column T_RM_RESUME.IDCARDNUMBER is
'���֤����';

comment on column T_RM_RESUME.WORKYEAR is
'��������';

comment on column T_RM_RESUME.EDUCATIONLEVEL is
'���ѧ��0:����1:����2:�м�3: ��ר4: ��ר5: ����6: ˶ʿ7: ��ʿ';

comment on column T_RM_RESUME.MAJOR is
'��ѧרҵ:���ֵ���ѡȡ';

comment on column T_RM_RESUME.CERTIFICATEDLEVEL is
'0: ��
1: 2 ��
2: 4 ��
3: 6 ��
4: 8��';

comment on column T_RM_RESUME.ENGLISHLEVEL is
'1: һ��
2: ����
3: ��ͨ';

comment on column T_RM_RESUME.OTHERLANGUAGE is
'0: ����
1: Ӣ��
...';

comment on column T_RM_RESUME.OTHERLANGUAGELEVEL is
'1: һ��
2: ����
3: ��ͨ';

comment on column T_RM_RESUME.PHOTOPATH is
'��Ƭ·��';

comment on column T_RM_RESUME.EMAIL is
'�����ʼ�';

comment on column T_RM_RESUME.MOBILE is
'�ֻ�����';

comment on column T_RM_RESUME.PHONENUMBER is
'��ϵ�绰';

comment on column T_RM_RESUME.REGRESIDENCE is
'�������ڵ�';

comment on column T_RM_RESUME.CURRENTADRESS is
'Ŀǰ��ס��';

comment on column T_RM_RESUME.CONTACTADRESS is
'ͨѶ��ַ';

comment on column T_RM_RESUME.EXPECTATIONSALARY is
'����н��';

comment on column T_RM_RESUME.WISHCOMPANY is
'����˾';

comment on column T_RM_RESUME.WISHPOST is
'�����λ';

comment on column T_RM_RESUME.WISHAREA is
'�������';

comment on column T_RM_RESUME.HAVECOMRELATION is
'�Ƿ�������0: ��1:��';

comment on column T_RM_RESUME.RELATIONNAME is
'��������';

comment on column T_RM_RESUME.RELATIONCOMPANY is
'1���ţ�2����....���ֶ��ж�ȡ';

comment on column T_RM_RESUME.SELFAPPRAISE is
'�����س�';

comment on column T_RM_RESUME.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

comment on column T_RM_RESUME.REMARK is
'��ע';

comment on column T_RM_RESUME.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_RESUME.UPDATEDATE is
'�޸�ʱ��';

comment on column T_RM_RESUME.RESUMESTATES is
'1: ӦƸ��, 2: �˲Ŵ���, 3:��ְ, 4��ְ 5.���ϸ����';

comment on column T_RM_RESUME.RESUMEFROM is
'������Դ';

comment on column T_RM_RESUME.RELATIONRESUMEID is
'��������';

comment on column T_RM_RESUME.OWNERID is
'������ID';

comment on column T_RM_RESUME.OWNERPOSTID is
'������λID';

comment on column T_RM_RESUME.OWNERDEPARTMENTID is
'��������ID';

comment on column T_RM_RESUME.OWNERNAME is
'����������';

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
'����ӦƸ';

comment on column T_RM_RESUMEDELIVERY.RESUMEDELIVERYID is
'����ӦƸID';

comment on column T_RM_RESUMEDELIVERY.RESUMEID is
'����ID';

comment on column T_RM_RESUMEDELIVERY.REQUIREAPPLYID is
'����ID';

comment on column T_RM_RESUMEDELIVERY.STAGE is
'���Խ׶�0.δ����;1.�绰��ʼ.2.����.3.��¼��.4.��������.5.��ְ���� 5.��ְ';

comment on column T_RM_RESUMEDELIVERY.STAGENAME is
'���Խ׶���';

comment on column T_RM_RESUMEDELIVERY.RESULT is
'0.δ���� .1δ֪ͨ 2.�ϸ�.3.���ϸ�.4.�ܾ��μ�.5.�˲Ŵ���6.�Ƽ����߸�λ';

comment on column T_RM_RESUMEDELIVERY.RESULTNAME is
'�����';

comment on column T_RM_RESUMEDELIVERY.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_RESUMEDELIVERY.UPDATEDATE is
'�޸�ʱ��';

comment on column T_RM_RESUMEDELIVERY.EDITSTATE is
'����༭״̬///0 ɾ��״̬ Deleted
///1 ����Ч Actived
///2 δ��Ч UnActived
///3 ������ PendingCancelled
///4 �ѳ��� Cancelled';

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
'T_RM_SURVEY ��������';

comment on column T_RM_SURVEY.SURVEYID is
'��������ID';

comment on column T_RM_SURVEY.RESUMEDELIVERYID is
'����ӦƸID';

comment on column T_RM_SURVEY.IDCARDNUMBER is
'���֤����';

comment on column T_RM_SURVEY.IDCARDRESULT is
'���֤������ 1.��ʵ 2.������ʵ 3.����ʵ';

comment on column T_RM_SURVEY.SOCIALCARD is
'�籣��';

comment on column T_RM_SURVEY.RESUMELOCAL is
'�������ڵ�λ';

comment on column T_RM_SURVEY.SOCIALLOCAL is
'��ѯ����籣���ɵ�λ';

comment on column T_RM_SURVEY.COMPARERESULT is
'�ȽϺ�Ľ��';

comment on column T_RM_SURVEY.REMARK is
'��ע';

comment on column T_RM_SURVEY.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_SURVEY.UPDATEDATE is
'�޸�ʱ��';

comment on column T_RM_SURVEY.OWNERID is
'������ID';

comment on column T_RM_SURVEY.OWNERPOSTID is
'������λID';

comment on column T_RM_SURVEY.OWNERDEPARTMENTID is
'��������ID';

comment on column T_RM_SURVEY.OWNERCOMPANYID is
'������˾ID';

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
'T_RM_SURVEYDETAIL  ���������嵥';

comment on column T_RM_SURVEYDETAIL.SURVEYITEMID is
'����������ϸID';

comment on column T_RM_SURVEYDETAIL.SURVEYID is
'��������ID';

comment on column T_RM_SURVEYDETAIL.QUESTIONID is
'����ID';

comment on column T_RM_SURVEYDETAIL.ANSWERID is
'�ϼ���ID';

comment on column T_RM_SURVEYDETAIL.SUPERIORANSWERID is
'�����ϼ���ID';

comment on column T_RM_SURVEYDETAIL.HRANSWERID is
'������ID';

comment on column T_RM_SURVEYDETAIL.QUESTIONDATA is
'����';

comment on column T_RM_SURVEYDETAIL.RULE is
'���ԭ��:1.һƱ�������.2.3������һƱ�������.3.������Դ���ܾ���';

comment on column T_RM_SURVEYDETAIL.USEFUL is
'���Ƿ�Ϊ�����1.������.2.Ϊ������';

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
'T_RM_SURVEYITEM ������������Ϣ';

comment on column T_RM_SURVEYITEM.SURVEYVISITID is
'�������������ID';

comment on column T_RM_SURVEYITEM.SURVEYID is
'��������ID';

comment on column T_RM_SURVEYITEM.SURVEYTYPE is
'������������:1.�ϼ�.2.�����ϼ�.3.����';

comment on column T_RM_SURVEYITEM.BYVISITNAME is
'����������';

comment on column T_RM_SURVEYITEM.BYVISITNDUTY is
'������ְ��';

comment on column T_RM_SURVEYITEM.BYVISITPHONE is
'�����˵绰';

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
'ӦƸ���˲�����';

comment on column T_RM_TALENTEDRESUME.TALENTEDRESUMEID is
'�˲ż���ID';

comment on column T_RM_TALENTEDRESUME.RESUMEID is
'����ID';

comment on column T_RM_TALENTEDRESUME.TALENTEDTYPE is
'��Դ��TALENTED_TYPE�ֵ�1.���� 2.����';

comment on column T_RM_TALENTEDRESUME.TALENTEDTYPENAME is
'�˲�������';

comment on column T_RM_TALENTEDRESUME.UPDATEUSERID is
'�޸���ID';

comment on column T_RM_TALENTEDRESUME.UPDATEDATE is
'�޸�ʱ��';

/*==============================================================*/
/* Index: "Index_T_RM_TALENTEDRESUME"                           */
/*==============================================================*/
create index "Index_T_RM_TALENTEDRESUME" on T_RM_TALENTEDRESUME (
   RESUMEID ASC
);
