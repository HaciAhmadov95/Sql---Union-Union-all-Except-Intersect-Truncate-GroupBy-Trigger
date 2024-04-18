create database Course

use Course




create table Students(
[Id] int primary key identity(1,1),
[Name] nvarchar(100),
[Surname] nvarchar(100),
[Age] int,
[Email] nvarchar(100) unique,
[Address] nvarchar(100)
)





create table StudentsArchive(
  [Id] int,
  [Name] nvarchar(100),
  [Surname] nvarchar(100),
  [Age] int,
  [Email] nvarchar(100) unique,
  [Address] nvarchar(100),
  [Operation] nvarchar(100),
  [Date] datetime
)



insert into Students([Name],[Surname],[Age],[Email],[Address])
	values ('Murad','Ahmadov',21,'ahmadov086@gmail.com','Binagadi')






select * from Students
select * from StudentsArchive


create procedure usp_archiveStudents
@Id int
as
begin
insert into StudentsArchive([Id],[Name],[Surname],[Age],[Email],[Address],[Operation],[Date])
select [Id],[Name],[Surname],[Age],[Email],[Address], 'Delete', getDate() from Students where [Id] = @Id
delete from Students where [Id] = @Id
end


exec usp_archiveStudents @Id = 3



