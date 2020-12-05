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

	select @shuhao=book_id from inserted
	 print '插入书本信息完成!'
	 print '借阅表中借阅书籍最多的人将自动借阅此书!'
insert  into jieyue(jieyue_kahao,jieyue_shuhao,jieyue_jieyueshiqi)
 values 
(@duzheid,@shuhao,'2020-11-01 00:00:00')

select * from jieyue;


 end;

--with encryption 表示加密触发器定义的sql文本
--delete,insert,update指定触发器的类型

   
