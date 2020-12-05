use bookmanage;

CREATE TABLE book (
  book_id varchar(11) NOT NULL,
  book_name varchar(100) NOT NULL,
  book_chubanshe varchar(40) NOT NULL,
  book_price int DEFAULT NULL,
  PRIMARY KEY (book_id)
)

CREATE TABLE duzhe (
  duzhe_kahao int NOT NULL ,
  duzhe_name varchar(100) NOT NULL,
  duzhe_nianling int NOT NULL,
  duzhe_shuoshudanwei varchar(40) NOT NULL,
  PRIMARY KEY (duzhe_kahao)
) 

CREATE TABLE jieyue (
  jieyue_kahao int NOT NULL,
  jieyue_shuhao varchar(11) NOT NULL,
  jieyue_jieyueshiqi datetime NOT NULL,
  PRIMARY KEY (jieyue_shuhao)
)




alter table book    
add constraint C_K_PRICE check(book_price>=0 and book_price<=600);



alter table duzhe    
add constraint C_K_AGE check(duzhe_nianling>=0 and duzhe_nianling<=600);










   



insert  into book(book_id,book_name,book_chubanshe,book_price) 
values 
('tp0103','数据库系统概论','高等教育出版社',100),
('tp0104','数据库系统概论1','高等教育出版社1',200),
('tp0105','数据库系统概论2','高等教育出版社2',300),
('tp0106','数据库系统概论3','高等教育出版社3',400),
('tp0107','数据库系统概论4','高等教育出版社4',500),
('tp0108','数据库系统概论5','高等教育出版社5',600),
('tp0109','数据结构','高等教育出版社',299);




insert  into duzhe(duzhe_kahao,duzhe_name,duzhe_nianling,duzhe_shuoshudanwei)
 values 
(1,'张三',20,'计算机系'),
(2,'李四',21,'计算机系'),
(3,'王五',21,'计算机系'),
(4,'李白',55,'文学系'),
(5,'张飞',66,'软件系'),
(6,'赵云',21,'电子系'),
(7,'朱元璋',21,'哲学系'),
(8,'时迁',21,'网络系');

insert  into jieyue(jieyue_kahao,jieyue_shuhao,jieyue_jieyueshiqi)
 values 
(1,'tp0103','2020-11-01 00:00:00'),
(1,'tp0104','2020-12-01 00:00:00'),
(2,'tp0105','2021-01-01 00:00:00'),
(3,'tp0106','2021-02-02 00:00:00');





SELECT  book.book_name AS 书名,COUNT(*) AS 借阅次数
FROM  book,jieyue
WHERE book.book_id = jieyue.jieyue_shuhao
GROUP BY book.book_name
HAVING book.book_name LIKE '数据库系统概论' ;

SELECT duzhe_name , COUNT(*),duzhe_shuoshudanwei
FROM duzhe,jieyue
WHERE jieyue.jieyue_kahao = duzhe.duzhe_kahao
GROUP BY `jieyue_kahao`
HAVING `duzhe_shuoshudanwei` = '计算机系';

SELECT duzhe_name,duzhe_nianling ,duzhe_shuoshudanwei
FROM duzhe , jieyue
GROUP BY jieyue_kahao,jieyue_name
HAVING duzhe_nianling > 10;
SELECT book_name,book_id
FROM jieyue,book
WHERE jieyue.jieyue_shuhao  = book.book_id
GROUP BY book_id
HAVING COUNT(*)=0;


   
