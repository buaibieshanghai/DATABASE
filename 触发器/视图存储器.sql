create view jieyue_num
as 
select book_name as 书名, COUNT(*) as 借阅次数
from book
join jieyue on book.book_id =  jieyue.jieyue_shuhao
group by book_name;


select * from jieyue_num;


update jieyue 
set jieyue_kahao = 2,jieyue_shuhao = 'tp0103',jieyue_jieyueshiqi = '2020-11-01 00:00:00'
where jieyue_kahao =2;  

select * from jieyue_num;


select  书名,借阅次数
from jieyue_num
where 借阅次数
in (select MAX(借阅次数)
from jieyue_num);

select *from book
 
  select *from duzhe
select *from jieyue
  
  
  
  
  
  
 create trigger insert_chufaqi on book
 after insert 
 as
 begin
 
 declare @book_id varchar(10)
 declare @jieyue_max int
select @book_id = book_id from inserted
select @jieyue_max =   max(count(*))
 from jieyue    
group by jieyue_kahao
)
insert  into jieyue(jieyue_kahao,jieyue_shuhao,jieyue_jieyueshiqi)
 values 
(5,@book_id,'2020-11-01 00:00:00')
print '插入成功,已自动在jieyue表中插入借阅信息'

end


insert into book(book_id,book_name,book_chubanshe,book_price)
values
('tp0110','数据库系统概论6','高等教育出版社6',600)

  