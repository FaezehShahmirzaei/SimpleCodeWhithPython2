create database Publishers
use Publishers
create table Book (
BookId int identity primary key,
BookName varchar(200)
);
create table Writer(
WriterId int identity primary key ,
WriterName varchar(200),
niknme varchar(100)
);

create table WriterOfBook(
WriterOfBookId int identity primary key,
BookId int,
WiterId  int,
FOREIGN KEY (BookId) REFERENCES Book(BookId),
FOREIGN KEY (WiterId) REFERENCES Witer(WiterId)
);

create table  Publisher(
PublisherId int identity primary key,
Publishername varchar(200),
ExebitionDate char(10) DEFAULT NULL
);

create table BookPublishing (
BookpublishingId int identity primary key,
PublisherId int ,
WriterOfBookId int ,
Publishdate char(10),
Price int,
FOREIGN KEY (BookId) REFERENCES Book (BookId),
FOREIGN KEY (PublisherId) REFERENCES Publisher(PublisherId)
);



--insert into Book (BookName) values ('b1')
--insert into Book (BookName) values ('b2')
--insert into Book (BookName) values ('b3')

--insert into Writer (WriterName) values ('hanane')
--insert into Writer (WriterName) values ('maryam')
--insert into Writer (WriterName) values ('atefeh')
--insert into Writer (WriterName) values ('faezeh')

--insert into WriterOfBook (BookId , WiterId ) values  (1,3)  
--insert into WriterOfBook (BookId , WiterId ) values  (1,4)
--insert into WriterOfBook (BookId , WiterId ) values  (1,5)
--insert into WriterOfBook (BookId , WiterId ) values  (2,6)

--insert into Publisher (Publishername ) values ('roshd')
--insert into Publisher (Publishername ) values ('ketabkhane')
--insert into Publisher (Publishername ) values ('rah e roshan')
 
--insert into BookPublishing (PublisherId,WriterOfBookId , Publishdate) values (1,1,'1398/10/13')
--insert into BookPublishing (PublisherId,WriterOfBookId , Publishdate) values (1,2,'1400/12/23')
--insert into BookPublishing (PublisherId,WriterOfBookId , Publishdate) values (2,3,'1388/08/08')
--insert into BookPublishing (PublisherId,WriterOfBookId , Publishdate) values (1,3,'1399/09/09')
--insert into BookPublishing (PublisherId,WriterOfBookId , Publishdate) values (2,4,'1399/09/09')
--insert into BookPublishing (PublisherId,WriterOfBookId , Publishdate) values (2,8,'1399/09/09')

   
--  select writername from  WriterOfBook wb inner join book b on wb.BookId=b.BookId 
--					inner join Writer  w on w.writerid = wb.WiterId 
--					where b.BookName = 'b1'


select  (select  writername from writer  w  where w.writerid =wb.WiterId  )   from WriterOfBook wb  where  BookId= 1 

select  (select bookname from book where BookId = bp.BookId )  from BookPublishing bp where PublisherId = 2

select  * from  BookPublishing where publisherid =1

select max(Price) from BookPublishing  bp inner join  WriterOfBook wb on wb.BookId=bp.BookId where  wb.WiterId=3

