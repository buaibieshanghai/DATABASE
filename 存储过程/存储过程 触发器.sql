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
	where ���Ĵ���=(
		select max(���Ĵ���)
		from shitu
	)


	select @shuhao=book_id from inserted
	 print '�����鱾��Ϣ���!'
	 print '���ı��н����鼮�����˽��Զ����Ĵ���!'
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
   print '��ʾ���Ϊ' +@book_shuhao+'��ͼ�������Ϣ'
   select *
   from book
   where book_id =@book_shuhao
   
  
   
    
    select @book_jieyuecishu=count(*)
   from jieyue
   where jieyue_shuhao =@book_shuhao
   group by jieyue_shuhao 
   
    if(@book_jieyuecishu = 0)
    
     print '����û�˽�,��ɾ��������¼'
   delete from book
   where book_id = @book_shuhao





   select @bookprice = book_price
   from book
   where book_id = @book_shuhao
    
    
    
   if(@bookprice < 5)
    print '�۸����5,�Ǽ���5Ԫ'
   update book
   set book_price = 5
   where book_id = @book_shuhao
    
   
  
   
   exec cunchuguocheng 'tp0108';
   
 
   
   
   
   insert  into book(book_id,book_name,book_chubanshe,book_price) 
values 
('tp5103','���ݿ�ϵͳ����','�ߵȽ���������',1)
  exec cunchuguocheng 'tp5103';
   select *from book;
   