--�������ݿ�
create database SuperMarket 
on(
name='SuperMarket',
filename='C:\SuperMarket.mdf',
size=3MB,
maxsize=50MB,
filegrowth=1MB
)
--�������ݿ���־
log on(
name ='SuperMarket_log',
filename='C:\SuperMarket_log.ldf',
size=3MB,
maxsize=50MB,
filegrowth=10%
)
--ɾ�����ݿ�
drop database SuperMarket