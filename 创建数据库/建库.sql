--如果数据库已经存在,则不创建,不存在则创建
if not exists(select * from sys.databases where name = 'BookManage')
begin
create database bookmanage
on primary(
	name = 'BookManage_mdf',
	filename = 'D:\test\BookManage.mdf',
	size = 5mb,
	maxsize = unlimited,
	filegrowth=1mb
) 
log on(
	name = 'BookManage_ldf',
	filename = 'D:\test\BookManage.ldf',
	size = 2mb,
	maxsize = unlimited,
	filegrowth= 10%
) 
end
            
