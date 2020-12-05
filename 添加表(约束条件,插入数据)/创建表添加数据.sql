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
('tp0103','���ݿ�ϵͳ����','�ߵȽ���������',100),
('tp0104','���ݿ�ϵͳ����1','�ߵȽ���������1',200),
('tp0105','���ݿ�ϵͳ����2','�ߵȽ���������2',300),
('tp0106','���ݿ�ϵͳ����3','�ߵȽ���������3',400),
('tp0107','���ݿ�ϵͳ����4','�ߵȽ���������4',500),
('tp0108','���ݿ�ϵͳ����5','�ߵȽ���������5',600),
('tp0109','���ݽṹ','�ߵȽ���������',299);




insert  into duzhe(duzhe_kahao,duzhe_name,duzhe_nianling,duzhe_shuoshudanwei)
 values 
(1,'����',20,'�����ϵ'),
(2,'����',21,'�����ϵ'),
(3,'����',21,'�����ϵ'),
(4,'���',55,'��ѧϵ'),
(5,'�ŷ�',66,'���ϵ'),
(6,'����',21,'����ϵ'),
(7,'��Ԫ�',21,'��ѧϵ'),
(8,'ʱǨ',21,'����ϵ');

insert  into jieyue(jieyue_kahao,jieyue_shuhao,jieyue_jieyueshiqi)
 values 
(1,'tp0103','2020-11-01 00:00:00'),
(1,'tp0104','2020-12-01 00:00:00'),
(2,'tp0105','2021-01-01 00:00:00'),
(3,'tp0106','2021-02-02 00:00:00');





SELECT  book.book_name AS ����,COUNT(*) AS ���Ĵ���
FROM  book,jieyue
WHERE book.book_id = jieyue.jieyue_shuhao
GROUP BY book.book_name
HAVING book.book_name LIKE '���ݿ�ϵͳ����' ;

SELECT duzhe_name , COUNT(*),duzhe_shuoshudanwei
FROM duzhe,jieyue
WHERE jieyue.jieyue_kahao = duzhe.duzhe_kahao
GROUP BY `jieyue_kahao`
HAVING `duzhe_shuoshudanwei` = '�����ϵ';

SELECT duzhe_name,duzhe_nianling ,duzhe_shuoshudanwei
FROM duzhe , jieyue
GROUP BY jieyue_kahao,jieyue_name
HAVING duzhe_nianling > 10;
SELECT book_name,book_id
FROM jieyue,book
WHERE jieyue.jieyue_shuhao  = book.book_id
GROUP BY book_id
HAVING COUNT(*)=0;


   
