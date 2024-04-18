create database Course


use Course


create table Countries(
[Id] int primary key identity(1,1),
[Name] nvarchar(255),
)


insert into Countries([Name])
values('Germany'),
	  ('Netherland'),
	  ('Norway'),
	  ('South Korea')

	  select * from Countries


create table Cities(
[Id] int primary key identity(1,1),
[Name] nvarchar(255),
[CountryId] int,
foreign key (CountryId) references Countries(Id)
)


insert into Cities([Name],[CountryId])
	values('Oslo',3),
		  ('Seoul',4),
		  ('Dresden',1),
		  ('Amsterdam',2),
		  ('Rosenborg',3),
		  ('Dortmund',1)


		  select * from Cities 



		  create table Teacherss(
		  [Id] int primary key identity(1,1),
		  [Name] nvarchar(255),
		  [Surname] nvarchar(255),
		  [Age] int,
		  [Address] nvarchar(255),
		  [Email] nvarchar(255),
		  [Salary] float,
		  [CityId] int,
		  foreign key (CityId) references Cities(Id)
		  )



		  insert into Teacherss([Name],[Surname],[Age],[Address],[Email],[Salary],[CityId])
		  values('Cavid','Bashirov',30,'Ehmedli','cavid@gmail.com',2800,1),
		        ('Emil','Abdullayev',22,'Azadlig','emil@gmail.com',800,4),
		        ('Mahir','Hasanzade',44,'Bilajar','mahir@gmail.com',3400,2)



				select * from Teacherss




				create table Studentss(
		  [Id] int primary key identity(1,1),
		  [Name] nvarchar(255),
		  [Surname] nvarchar(255),
		  [Age] int,
		  [Address] nvarchar(255),
		  [Email] nvarchar(255),
		  [CityId] int,
		  foreign key (CityId) references Cities(Id)
		  )


		  insert into Studentss([Name],[Surname],[Age],[Address],[Email],[CityId])
		  values('Haci','Ahmadov',29,'Bilajar','ahmadov@gmail.com',1),
		        ('Tofig','Nasibli',19,'Hazi','tofig@gmail.com',4),
		        ('Mariam','Aliyeva',24,'Darnagul','mariam@gmail.com',2)



				select * from Studentss



				create table Rooms(
				[Id] int primary key identity(1,1),
				[Name] nvarchar(255),
				[Capacity] int
				)


				insert into Rooms([Name],[Capacity])
				values('Beta',20),
				      ('Alpha',22),
					  ('Saturn',21),
					  ('Mercury',22)


					  select * from Rooms



					  create table Groupss(
					  [Id] int primary key identity(1,1),
					  [Name] nvarchar(255),
					  [MembersCount] int,
					  [RoomId] int,
					  foreign key (RoomId) references Rooms(Id)
					  )


					  insert into Groupss([Name],[MembersCount],[RoomId])
					  values('P418',18,1),
					        ('P139',16,2)


							select * from Groupss



							create table TeacherGroups(
							[Id] int primary key identity(1,1),
							[TeacherId] int,
							[GroupId] int,
							foreign key (TeacherId) references Teacherss(Id),
							foreign key (GroupId) references Groupss(Id),
							)


							select * from TeacherGroups


							create table StudentsGroups(
							[Id] int primary key identity(1,1),
							[StudentId] int,
							[GroupId] int,
							foreign key (StudentId) references Studentss(Id),
							foreign key (GroupId) references Groupss(Id)
							)


							select * from StudentsGroups



			    select * from Countries
			    select * from Cities 
				select * from Teacherss
				select * from Studentss
				select * from Rooms
				select * from Groupss
				select * from TeacherGroups
				select * from StudentsGroups






				create table Roles(
				[Id] int primary key identity(1,1),
				[Name] nvarchar(255),
				)



				insert into Roles([Name])
				values('Cleaner'),
				      ('Technic'),
					  ('Bartender')








				create table StaffMembers(
				[Id] int primary key identity(1,1),
				[Fullname] nvarchar(255),
				[Age] int,
				[Address] nvarchar(255),
				[Email] nvarchar(255),
				[Salary] float,
				[CityId] int,
				[RoleId] int,
				[RoomId] int,
				foreign key (CityId) references Cities(Id),
				foreign key (RoleId) references Roles(Id),
				foreign key (RoomId) references Rooms(Id)
				)


				select * from StaffMembers


				insert into StaffMembers([Fullname],[Age],[Address],[Email],[Salary],[CityId],[RoleId],[RoomId])
				values('Mahmud Camalov',59,'Nizami rayonu','m.c@mail.ru',1200,1,2,2),
				      ('Sahibe Muradova',38,'Sulutepe','sahibe92@mail.ru',800,1,1,2),
					  ('Xamis Mammadov',36,'Bilgeh','xamis@mail.ru',600,1,3,2)





