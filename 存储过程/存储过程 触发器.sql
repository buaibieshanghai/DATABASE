CREATE TRIGGER trigger_book1
 ON book
 AFTER INSERT
 AS 
 begin
	declare @duzheid int
	declare @shuhao varchar(15)
	
	select @duzheid = jieyue_kahao 
	from jieyue
	group by jieyue_kahao
	 having count(*) = 2;

	select @duzheid= jieyue_kahao from shitu
	where 借阅次数=(
		select max(借阅次数)
		from shitu
	)


	select @shuhao=book_id from inserted
	 print '插入书本信息完成!'
	 print '借阅表中借阅书籍最多的人将自动借阅此书!'
insert  into jieyue(jieyue_kahao,jieyue_shuhao,jieyue_jieyueshiqi)
 values 
(@duzheid,@shuhao,'2020-11-01 00:00:00')

select * from jieyue;


 end;

   

   create procedure cunchuguocheng
   @book_shuhao varchar(20) 
    
  
   as
    declare @book_jieyuecishu int 
   declare @bookprice int
   print '显示书号为' +@book_shuhao+'的图书借阅信息'
   select *
   from book
   where book_id =@book_shuhao
   
  
   
    
    select @book_jieyuecishu=count(*)
   from jieyue
   where jieyue_shuhao =@book_shuhao
   group by jieyue_shuhao 
   
    if(@book_jieyuecishu = 0)
    
     print '该书没人借,则删除该条记录'
   delete from book
   where book_id = @book_shuhao





   select @bookprice = book_price
   from book
   where book_id = @book_shuhao
    
    
    
   if(@bookprice < 5)
    print '价格低于5,涨价至5元'
   update book
   set book_price = 5
   where book_id = @book_shuhao
    
   
  
   
   exec cunchuguocheng 'tp0108';
   
 
   
   
   
   insert  into book(book_id,book_name,book_chubanshe,book_price) 
values 
('tp5103','数据库系统概论','高等教育出版社',1)
  exec cunchuguocheng 'tp5103';
   select *from book;
   