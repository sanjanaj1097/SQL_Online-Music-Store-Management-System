create database online_music_store; 
use online_music_store; 

create table Artist (
	ArtistId INT primary key,
	Name VARCHAR(50)
);
insert into Artist (ArtistId, Name) values (1, 'AC/DC');
insert into Artist (ArtistId, Name) values (2, 'Aerosmith');
insert into Artist (ArtistId, Name) values (3, 'Led Zeppelin');
insert into Artist (ArtistId, Name) values (4, 'Maroon 5');
insert into Artist (ArtistId, Name) values (5, 'Taylor Swift');
insert into Artist (ArtistId, Name) values (6, 'Christina Aguilera');
insert into Artist (ArtistId, Name) values (7, 'BTS');
insert into Artist (ArtistId, Name) values (8, 'Blackpink');
insert into Artist (ArtistId, Name) values (9, 'Queen');
insert into Artist (ArtistId, Name) values (10, 'Sam Smith');

Select * from Artist;

create table Album (
	AlbumId INT PRIMARY KEY,
	Title VARCHAR(50),
	ArtistId INT
);

insert into Album (AlbumId, Title, ArtistId) values (156, 'Hands All Over', 4);
insert into Album (AlbumId, Title, ArtistId) values (208, 'The Tortured Poets', 5);
insert into Album (AlbumId, Title, ArtistId) values (257, 'HighWay to Hell', 1);
insert into Album (AlbumId, Title, ArtistId) values (296, 'Get a Grip', 2);
insert into Album (AlbumId, Title, ArtistId) values (94, 'Prescence', 3);
insert into Album (AlbumId, Title, ArtistId) values (95, 'Born Pink', 8);
insert into Album (AlbumId, Title, ArtistId) values (96, 'Face Yourself', 7);
insert into Album (AlbumId, Title, ArtistId) values (285, 'Love Goes',10);
insert into Album (AlbumId, Title, ArtistId) values (139, 'Liberation', 6);
insert into Album (AlbumId, Title, ArtistId) values (224, 'A Night at the Opera', 9);

Select * from Album;

create table Media_Type (
	Media_Type_Id INT PRIMARY KEY,
	Media_Name VARCHAR(20)
);


insert into Media_Type (Media_Type_Id,Media_Name) values (1, 'MPEG audio file');
insert into Media_Type (Media_Type_Id,Media_Name) values (2, 'Protected AAC Audio file');
insert into Media_Type (Media_Type_Id,Media_Name) values (3, 'Protected MPEG-4 video file');
insert into Media_Type (Media_Type_Id,Media_Name) values (4, 'Purchased AAC audio file');
insert into Media_Type (Media_Type_Id, Media_Name) values (5, 'AAC audio file');

Select * from Media_Type;

create table Genre (
	GenreId INT PRIMARY KEY,
	GenreName VARCHAR(50)
);

insert into Genre (GenreId, GenreName) values (1, 'Rock');
insert into Genre (GenreId, GenreName) values (2, 'Jazz');
insert into Genre (GenreId, GenreName) values (3, 'Metal');
insert into Genre (GenreId, GenreName) values (4, 'Alternative & Punk');
insert into Genre (GenreId, GenreName) values (5, 'Rock And Roll');
insert into Genre (GenreId, GenreName) values (6, 'Blues');
insert into Genre (GenreId, GenreName) values (7, 'Latin');
insert into Genre (GenreId, GenreName) values (8, 'Reggae');
insert into Genre (GenreId, GenreName) values (9, 'Pop');
insert into Genre (GenreId, GenreName) values (10, 'Soundtrack');
insert into Genre (GenreId, GenreName) values (11, 'Comedy');
insert into Genre (GenreId, GenreName) values (12, 'Bossa Nova');
insert into Genre (GenreId, GenreName) values (13, 'Easy Listening');
insert into Genre (GenreId, GenreName) values (14, 'Heavy Metal');
insert into Genre (GenreId, GenreName) values (15, 'R&B/Soul');
insert into Genre (GenreId, GenreName) values (16, 'Electronica/Dance');
insert into Genre (GenreId, GenreName) values (17, 'World');
insert into Genre (GenreId,GenreName) values (18, 'Hip Hop/Rap');
insert into Genre (GenreId, GenreName) values (19, 'Science Fiction');
insert into Genre (GenreId, GenreName) values (20, 'TV Shows');
insert into Genre (GenreId, GenreName) values (21, 'Sci Fi & Fantasy');
insert into Genre (GenreId, GenreName) values (22, 'Drama');
insert into Genre (GenreId,GenreName) values (23, 'Alternative');
insert into Genre (GenreId, GenreName) values (24, 'Classical');
insert into Genre (GenreId,GenreName) values (25, 'Opera');


create table Tracks (
	TrackId INT PRIMARY KEY,
	Name VARCHAR(50),
    AlbumId INT,
    Media_Type_Id INT,
    GenreId INT,
    Composer VARCHAR(50),
    Milliseconds INT,
    Bytes INT,
    Price float
);

insert into Tracks (TrackId, Name,AlbumId,Media_Type_Id,GenreId,Composer,Milliseconds,Bytes,Price) values (1,'Misery',156,1,6,'Adam Levine,James Valentine',200000,124000000,10.50);
insert into Tracks (TrackId, Name,AlbumId,Media_Type_Id,GenreId,Composer,Milliseconds,Bytes,Price) values (2,'Walk All Over You', 256,1,2 ,'AC/DC',1900000, 23450000,5.00);
insert into Tracks (TrackId, Name,AlbumId,Media_Type_Id,GenreId,Composer,Milliseconds,Bytes,Price) values (3,'Pink Venom', 95,3,9 ,'Jennie, Lisa, Rose, Jisoo',2360000, 12450000,13.00);
insert into Tracks (TrackId, Name,AlbumId,Media_Type_Id,GenreId,Composer,Milliseconds,Bytes,Price) values (4,'Dancing with A Stranger', 285,4 ,10, 'Sam Smith',1940000, 2349999,17.50);
insert into Tracks (TrackId, Name,AlbumId,Media_Type_Id,GenreId,Composer,Milliseconds,Bytes,Price) values (5, 'DNA', 96, 9,5, 'BTS', 10000000,2500000,20.99);
insert into Tracks (TrackId, Name,AlbumId,Media_Type_Id,GenreId,Composer,Milliseconds,Bytes,Price) values (6,'Fortnight',208,3,13,'Taylore Swift',1950000,2450000,50.00);
insert into Tracks (TrackId, Name,AlbumId,Media_Type_Id,GenreId,Composer,Milliseconds,Bytes,Price) values (7, 'Crazy',296,2,8,'Steve Tyler', 1760000,5439000,7.00);
insert into Tracks (TrackId, Name,AlbumId,Media_Type_Id,GenreId,Composer,Milliseconds,Bytes,Price) values (8, 'For your Life', 94, 1,15, 'Led Zepplin',54320000,12340000,5.00);
insert into Tracks (TrackId, Name,AlbumId,Media_Type_Id,GenreId,Composer,Milliseconds,Bytes,Price) values (9, 'Bohemian Rhapsody',224,4,25,'Freddy Mercury, Roger Taylor',32123400, 56430000,12.50);
insert into Tracks (TrackId, Name,AlbumId,Media_Type_Id,GenreId,Composer,Milliseconds,Bytes,Price) values (10,'Dreamers',139,5,12,'Christina Aguilera',3456000,1230000,10.00);
insert into Tracks (TrackId, Name,AlbumId,Media_Type_Id,GenreId,Composer,Milliseconds,Bytes,Price) values (11,'Hard to Love',95,1,9,'Blackpink',124500,987000,15.00);
insert into Tracks (TrackId, Name,AlbumId,Media_Type_Id,GenreId,Composer,Milliseconds,Bytes,Price) values (12,'Mic Drop',96,3,15,'BTS',45678,1234355,25.00);
insert into Tracks (TrackId, Name,AlbumId,Media_Type_Id,GenreId,Composer,Milliseconds,Bytes,Price) values (13,'Give a little more',156,4,17,'Adam Levine',657763,45667657,18.00);
insert into Tracks (TrackId, Name,AlbumId,Media_Type_Id,GenreId,Composer,Milliseconds,Bytes,Price) values (14,'Go Go',96,4,9,'BTS',124500,987000,23.50);
insert into Tracks (TrackId, Name,AlbumId,Media_Type_Id,GenreId,Composer,Milliseconds,Bytes,Price) values (15,'Shut Down',95,3,15,'Blackpink',345768,7867456,21.50);


create table Invoice(
	InvoiceId INT Primary key,
    CustomerId INT,
    InvoiceDate Date,
    Billing_Address varchar(50),
    Billing_Country varchar(20),
    Billing_Contact bigint,
    Total float
);

insert into Invoice (InvoiceId,CustomerId,InvoiceDate,Billing_Address, Billing_Country, Billing_Contact,Total) values (1,1,'2024-02-04','203, GE Gardens,Kanjur Marg,Mumbai,Maharashtra','India',2454985888,35.00);
insert into Invoice (InvoiceId,CustomerId,InvoiceDate,Billing_Address, Billing_Country, Billing_Contact,Total) values (2,15,'2024-01-03','904, Onyx, Nirmal LifeStyle Complex,Mumbai,Maharashtra','India',1234567891,15.00);
insert into Invoice (InvoiceId,CustomerId,InvoiceDate,Billing_Address, Billing_Country, Billing_Contact,Total) values (3,2,'2024-02-17','106, New Al Safiya,Dubai','UAE',4561235601,20.99);
insert into Invoice (InvoiceId,CustomerId,InvoiceDate,Billing_Address, Billing_Country, Billing_Contact,Total) values (4,3,'2024-04-20','9099, Hansen Drive, Pleasonton','USA',9834672874,50.00);
insert into Invoice (InvoiceId,CustomerId,InvoiceDate,Billing_Address, Billing_Country, Billing_Contact,Total) values (5,4,'2024-05-01','7, Century Apartments, Ghatkopar, Mumbai, Maharashtra','India',6736422123,21.00);
insert into Invoice (InvoiceId,CustomerId,InvoiceDate,Billing_Address, Billing_Country, Billing_Contact,Total) values (6,14,'2024-03-05','5, Privy Drive, San Jose','USA',4322235567,13.00);
insert into Invoice(InvoiceId,CustomerId,InvoiceDate,Billing_Address, Billing_Country, Billing_Contact,Total) values (7,7,'2024-04-20','301, Kalpataru, Sion, Mumbai, Maharashtra','India',34534456223,10.00);
insert into Invoice(InvoiceId,CustomerId,InvoiceDate,Billing_Address, Billing_Country, Billing_Contact,Total) values (8,5,'2024-04-21','7, Diamond Street, near Harrods, London','UK',8293748919,10.00);
insert into Invoice(InvoiceId,CustomerId,InvoiceDate,Billing_Address, Billing_Country, Billing_Contact,Total) values (9,8,'2024-01-20','194A Chain Lake Drive, Halifax','Canada',4656675673,83.96);
insert into Invoice(InvoiceId,CustomerId,InvoiceDate,Billing_Address, Billing_Country, Billing_Contact,Total) values (10,6,'2024-05-05','8, Rue Hanovre, Paris','France',7686575678,41.98);
insert into Invoice(InvoiceId,CustomerId,InvoiceDate,Billing_Address, Billing_Country, Billing_Contact,Total) values (11,9,'2024-02-10','Ordynacka 10, Warsaw','Poland',1234512345,50.00);
insert into Invoice(InvoiceId,CustomerId,InvoiceDate,Billing_Address, Billing_Country, Billing_Contact,Total) values (12,13,'2024-04-17','3,Raj Bhavan Road, Bangalore','India',2323232323,37.50);
insert into Invoice(InvoiceId,CustomerId,InvoiceDate,Billing_Address, Billing_Country, Billing_Contact,Total) values (13,10,'2024-04-18','627 Broadway, New York','USA',6543534556,28.00);
insert into Invoice(InvoiceId,CustomerId,InvoiceDate,Billing_Address, Billing_Country, Billing_Contact,Total) values (14,12,'2024-02-22','Rua Dr. Falcão Filho, 155,Sao Paolo','Brazil',6567433434,10.5);
insert into Invoice(InvoiceId,CustomerId,InvoiceDate,Billing_Address, Billing_Country, Billing_Contact,Total) values (15,11,'2024-01-15','421 Bourke Street,Sydney','Australia',7165456789,12.50);


create table InvoiceLine(
	InvoiceLineId INT Primary key,
    InvoiceId INT,
    TrackId INT,
    Quantity INT
);

insert into InvoiceLine (InvoiceLineId,InvoiceId,TrackId,Quantity) values (1,15,9,1);
insert into InvoiceLine (InvoiceLineId,InvoiceId,TrackId,Quantity) values (2,10,5,2);
insert into InvoiceLine (InvoiceLineId,InvoiceId,TrackId, Quantity) values (3,1,4,2);
insert into InvoiceLine (InvoiceLineId,InvoiceId,TrackId, Quantity) values (4,2,2,3);
insert into InvoiceLine (InvoiceLineId,InvoiceId,TrackId, Quantity) values (5,14,1,1);
insert into InvoiceLine (InvoiceLineId,InvoiceId,TrackId, Quantity) values (6,4,10,5);
insert into InvoiceLine (InvoiceLineId,InvoiceId,TrackId, Quantity) values (7,8,8,2);
insert into InvoiceLine (InvoiceLineId,InvoiceId,TrackId, Quantity) values (8,11,6,1);
insert into InvoiceLine (InvoiceLineId,InvoiceId,TrackId, Quantity) values (9,13,7,4);
insert into InvoiceLine (InvoiceLineId,InvoiceId,TrackId, Quantity) values (10,3,5,1);
insert into InvoiceLine (InvoiceLineId,InvoiceId,TrackId, Quantity) values (11,12,9,3);
insert into InvoiceLine (InvoiceLineId,InvoiceId,TrackId, Quantity) values (12,6,3,1);
insert into InvoiceLine (InvoiceLineId,InvoiceId,TrackId, Quantity) values (13,9,5,4);
insert into InvoiceLine (InvoiceLineId,InvoiceId,TrackId, Quantity) values (14,5,7,3);
insert into InvoiceLine (InvoiceLineId,InvoiceId,TrackId, Quantity) values (15,7,10,1);


create table Customer
(
customer_id int primary key,
first_name varchar(20),
last_name varchar(20), 
address varchar(50), 
city varchar(20), 
country varchar(20), 
pincode int, 
contact bigint, 
email varchar(50)
);

insert into Customer(customer_id, first_name, last_name, address, city, country, pincode, contact, email)values(1,'Sanjana','Joshi','203, GE Gardens,Kanjur Marg','Mumbai','India',400089,2454985888,'ssjoshi@gmail.com');
insert into Customer(customer_id, first_name, last_name, address, city, country, pincode, contact, email)values(2,'Ehtesham','Ali','106, New Al Safiya','Dubai','UAE',100023,4561235601,'jssampat@gmail.com');
insert into Customer(customer_id, first_name, last_name, address, city, country, pincode, contact, email)values(3,'Ranjit','Adhikary','9099, Hansen Drive, Pleasonton','California','USA',329991,9834672874,'radhikary@gmail.com');
insert into Customer(customer_id, first_name, last_name, address, city, country, pincode, contact, email)values(4,'Malati','Rao','7, Century Apartments, Ghatkopar','Mumbai','India',400078,6736422123,'mrao@gmail.com');
insert into Customer(customer_id, first_name, last_name, address, city, country, pincode, contact, email)values(5,'John','Smith','7, Diamond Street, near Harrods', 'London','UK',10001,8293748919,'johnsmith@gmail.com');
insert into Customer(customer_id, first_name, last_name, address, city, country, pincode, contact, email)values(6,'Dominique','Lefebvre','8, Rue Hanovre','Paris','France',75002,7686575678,'domlef@gmail.com');
insert into Customer(customer_id, first_name, last_name, address, city, country, pincode, contact, email)values(7,'Rhea','Lokeshwar','301, Kalpataru, Sion','Mumbai','India',400070,34534456223,'rhealok@gmail.com');
insert into Customer(customer_id, first_name, last_name, address, city, country, pincode, contact, email)values(8,'Martha','Silk','194A Chain Lake Drive','Halifax','Canada',700010,4656675673,'marthasilk@gmail.com');
insert into Customer(customer_id, first_name, last_name, address, city, country, pincode, contact, email)values(9,'Mateusz','Galecki','Ordynacka 10','Warsaw','Poland',210001,1234512345,'mgalecki@gmail.com');
insert into Customer(customer_id, first_name, last_name, address, city, country, pincode, contact, email)values(10,'Michelle','Brooks','627 Broadway','New York','USA',10005,6543534556,'michellebrooks@gmail.com');
insert into Customer(customer_id, first_name, last_name, address, city, country, pincode, contact, email)values(11,'Rose','Fisher','421 Bourke Street','Sydney','Australia',10004,7165456789,'rosefisher@gmail.com');
insert into Customer(customer_id, first_name, last_name, address, city, country, pincode, contact, email)values(12,'Eduardo','Martins','Rua Dr. Falcão Filho, 155','Sao Paolo','Brazil',560001,6567433434,'ssjoshi@gmail.com');
insert into Customer(customer_id, first_name, last_name, address, city, country, pincode, contact, email)values(13,'Benita','Matthews','3,Raj Bhavan Road','Bangalore','India',400021,2323232323,'bmatthews@gmail.com');
insert into Customer(customer_id, first_name, last_name, address, city, country, pincode, contact, email)values(14,'Pheobe','Dynevor','5, Privy Drive','San Jose','USA',329992,4322235567,'pheobedynevor@gmail.com');
insert into Customer(customer_id, first_name, last_name, address, city, country, pincode, contact, email)values(15,'Sarita','Chandran','904, Onyx, Nirmal LifeStyle Complex, Mulund','Mumbai','India',400090,1234567891,'saritachandran@gmail.com');



/*JOINS*/

/*1.	List all the Albums belonging to the respective Artists.*/
Select al.Title as Album_Title, ar.Name as Artist_Name 
from Album al JOIN Artist ar 
ON al.ArtistId=ar.ArtistId;

/*2.	Display Customers with their fullname(firstname and lastname merged) who have spent more than $50 in the store.*/
Select Customer.customer_id,CONCAT(Customer.first_name,' ',Customer.last_name) AS Customer_Name,Invoice.total As Total 
from Customer Inner join Invoice
ON Customer.customer_id = Invoice.CustomerId  
Group By Customer.customer_id
having Invoice.total >= 50.00;

/*3.	List the number of tracks belonging to each album and calculate the total price of each album.*/
SELECT album.Title As Album_Name, COUNT(Tracks.TrackId) AS Number_Of_Tracks,SUM(Tracks.Price) AS Total_Price_Of_Album 
FROM album LEFT JOIN tracks ON album.AlbumId=Tracks.AlbumId
group by Album.Title; 

/*4.	Which Tracks have Genre as ‘R&B/Soul’? */
Select Tracks.Name AS Track_Name from Tracks
join Genre ON Tracks.GenreId = Genre.GenreId
where Genre.GenreName = 'R&B/Soul';


/*5.	Which is BTS’s best selling track? */
SELECT invoiceline.TrackId, Tracks.Name, album.Title,SUM(invoiceline.Quantity) AS number_sold
FROM invoiceline 
INNER JOIN Tracks ON invoiceline.TrackId=Tracks.TrackId
INNER JOIN album ON Tracks.AlbumId=album.AlbumId
INNER JOIN artist ON album.ArtistId=artist.ArtistId
WHERE artist.Name='BTS'
GROUP BY invoiceline.TrackId;




/*Subqueries*/
/*1.	Which track made the highest sale? */
Select Name As Track_Name 
from Tracks t join InvoiceLine il 
on t.TrackId=il.TrackId
join Invoice i
on il.InvoiceId=i.InvoiceId
where total = (Select max(Total) from Invoice);


/*2.	Display all Tracks having price greater than average price of songs belonging to genre = ‘Pop’ */
Select Name As Track_Name,price
from Tracks 
where price > (Select avg(price) from Tracks join Genre ON Tracks.GenreId = Genre.GenreId where Genre.GenreName = 'Pop');



/*3.    Which track has the maximum quantity bought? */
Select Tracks.Name as Track_Name from Tracks 
join invoiceline ON invoiceline.TrackId = Tracks.TrackId 
where quantity = (Select max(quantity) from invoiceline);



/*4.	Find all tracks which were purchased in the USA. */
Select Tracks.Name As Track_Name from Tracks
where TrackId IN (Select TrackId from Invoiceline 
where InvoiceId IN (Select InvoiceId from Invoice where Billing_Country = 'USA'));




/*5.	Display the invoice dates of Customers whose first name starts with the letter ‘M’. */
Select Customer.First_Name As FirstName,Invoice.InvoiceDate
from Invoice join Customer
On Invoice.CustomerId = Customer.customer_id
where CustomerId IN (Select Customer.customer_id from Customer where first_name LIKE 'M%');


/*Other Queries*/
/*1.	List all albums having more than 1 track. */
Select AlbumId as Album_Id,Name as Album_Name,COUNT(*) as Number_Of_Tracks
from Tracks 
Group By AlbumId
Having Count(*)>1 ;


/*2.	List tracks in descending order of Time limit(i.e Millibytes) */
Select TrackId as Track_Id,Name as Track_Name,Milliseconds as Time_Limit_in_MS
from Tracks 
Group By Milliseconds
Order By Milliseconds DESC ;

/*3.	Find sum of total amount earned on 20-04-2024. */
Select sum(Total) from Invoice where InvoiceDate = '2024-04-20';

/*4.	Display invoice details having billing country as ‘India’,’USA’ or ‘UK’. */
Select * from Invoice where Billing_Country IN ('India','USA','UK');

/*5.	Display top 5 Customer details whose Country is not India . */
 SELECT * FROM Customer where NOT Country='India' LIMIT 5;

