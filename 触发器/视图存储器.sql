create view jieyue_num
as 
select book_name as ����, COUNT(*) as ���Ĵ���
from book
join jieyue on book.book_id =  jieyue.jieyue_shuhao
group by book_name;


select * from jieyue_num;


update jieyue 
set jieyue_kahao = 2,jieyue_shuhao = 'tp0103',jieyue_jieyueshiqi = '2020-11-01 00:00:00'
where jieyue_kahao =2;  

select * from jieyue_num;


select  ����,���Ĵ���
from jieyue_num
where ���Ĵ���
in (select MAX(���Ĵ���)
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
print '����ɹ�,���Զ���jieyue���в��������Ϣ'

end


insert into book(book_id,book_name,book_chubanshe,book_price)
values
('tp0110','���ݿ�ϵͳ����6','�ߵȽ���������6',600)

  