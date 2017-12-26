--�������ݱ�
--������Ʒ����
create table Category
(
--cid ���� �Զ����� �� 1 ��ʼ ��Ʒ���
cid int primary key identity(1,1),
--�������Ʋ���Ϊ�գ��Ҳ����ظ�
name nvarchar(20) not null unique,
--
description nvarchar(200) 
)
--�½���Ʒ��Ϣ��
create table Ware
(
--��Ʒ��� -���� �Զ����� �� 1 ��ʼ
Wid int primary key identity(1,1),
--��Ʒ����
Wname nvarchar(20) not null unique,
--������
cid int not null foreign key references Category (Cid),
--��Ʒ���۱������0
PurchasePrice int not null check (PurchasePrice>0),
--��Ʒ�ۼ۱������0
SalesPrice int not null check (SalesPrice>0),
--��Ʒ���������0
Amount int not null check (Amount>0)
)
--�½�Ա����
create table Employee
(
--Ա����ţ����� �Զ����� ��1001��ʼ
Eid int primary key identity(1001,1),
--Ա������
Ename  nvarchar(20)not null,
--Ա������ ��������λ
Epassword nvarchar(10)not null check(len(Epassword)>6),
--��ע
Remark nvarchar(100) 
) 
--�½��������ݱ�
create table Saleslnfo
(
--����
Sid int primary key identity(1,1),
--�����۵���Ʒ��� ��� ����
Wid int not null foreign key references Ware (Wid),
--��Ʒ�����۵�ʱ�� ����
SalesDate nvarchar(10) not null,
--��Ʒ��������
SalesAmount int not null check (SalesAmount>0),
--����Ա�ı�� ��� ����
Eid int not null foreign key references Employee (Eid)

)
--ɾ�����ݱ�
drop table Saleslnfo
drop table Employee
drop table Ware
drop table Category