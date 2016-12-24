create database forum
Board
 create table Board(
    ID int primary key,
    name varchar(16) not null,
    date  varchar(),
    description  varchar(64)
 );

insert into Board values
  (001,'经济','2016-12-24 11:06:11','三句话');

insert into Board values
  (002,'抗菌素','2016-12-24 11:06:11','教科书都会');

  Forum
 create table Forum(
   FID int primary key,
   Forum_name  varchar(16) not null,
   Forum_description  varchar(64) not null,
   ID  int
 );

insert  into Forum values(001,'青春论坛'，'xxxx'，01),
  values(002,'百度论坛'，'江户时代'，02);


 Article
 create table Article(
   AID int primary key,
   theme varchar(16) not null,
   Rosting_time  varchar(16),
   FID  int,
   viewed  varchar(32),
   content  varchar(128),
   UID  int,
   LastReplyDate varchar(16),
   LastReplyUID  varchar(16)
 );

insert into Article values();




  Reply
  create table Reply(
    content varchar(128),
    title  varchar(16),
    UID int,
    ReplyDate  varchar(32),
    AID int
  );


   版主
   create table moderator(
     FID int primary key,
     UID int primary key,
     OperUID int,
     OperDare varchar(16),
     foreign key(FID,UID)
   );


   UserDesc
  create table UserDesc(
    UID int primary key,
    Desci  varchar(16) not null,
    Name  varchar(16),
    Sex varchar(8),
    Birthday  varchar(16)
    foreign key(UID)
  );

    User
   create table User(
     UID int primary key,
     UserName varchar(16) not null,
     Password  varchar(32) not null,
   );


   Entity7
   create table Entity7(
     UID int,
    RoleID int,
    primary key(UID,RoleID),
    foreign key(UID,RoleID)
   );


    Entity9
    create table Entity9(
      RID int,
      RoleID int,
      primary key(RID,RoleID),
      foreign key(RID,RoleID)
    );


    Role
    create table Role(
      RoleID int  primary key,
      RoleName varchar(16)
    );


     Permissions
     create table Permissions(
       RID int primary key,
       RightName varchar(16)
     );
