--
--�����Ʒ��
insert into Category values('ʳƷ��','Ʒ�ֶ��� �óԲ���')
insert into Category values('������Ʒ��','Ʒ�ֶ��� ֻҪ9.99���ܴ��ؼ�')
insert into Category values('������','Ʒ�ʿɿ�,�������')
insert into Category values('������','���˻�����')
insert into Category values('������','�������������')



--�����Ʒ��Ϣ
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('˫�����','1','20','500','120')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('��¶������','2','15','260','700')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('����ţ��','1','40','750','100')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('������','3','12','195','80')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('32G U��','3','15','350','350')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('�Իƽ�','4','85','888','220')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('�Ϳ��˶�Ь','5','400','120','450')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('һ����','4','5','555','520')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('����','2','50','210','150')
insert into Ware (Wname,cid,PurchasePrice,SalesPrice,Amount)values('�������̲�','4','18','1','3500')



--���Ա����Ϣ
insert into Employee(Ename ,Epassword,Remark)values('���Ʒ�','12134567','���ƾ���')
insert into Employee(Ename ,Epassword,Remark)values('������','7654321','����Ա��')
insert into Employee(Ename ,Epassword,Remark)values('����','5556663','����Ա��')
insert into Employee(Ename ,Epassword,Remark)values('���Ƿ�','6665553','����Ա��')
insert into Employee(Ename ,Epassword,Remark)values('������','1111111','����Ա��')
insert into Employee(Ename ,Epassword,Remark)values('������','1111112','��ͨԱ��')
insert into Employee(Ename ,Epassword,Remark)values('�����','1111113','�����ʦ')
insert into Employee(Ename ,Epassword,Remark)values('����','1111111','��ͨ��ʦ')


--������ۼ�¼��Ϣ
insert into Saleslnfo(Wid, Eid, SalesDate, SalesAmount)values(1,1001,'2017-12-19',260)
insert into Saleslnfo(Wid, Eid, SalesDate, SalesAmount)values(2,1002,'2017-12-19',150)
insert into Saleslnfo(Wid, Eid, SalesDate, SalesAmount)values(3,1003,'2017-12-19',260)
insert into Saleslnfo(Wid, Eid, SalesDate, SalesAmount)values(4,1004,'2017-12-19',100)
insert into Saleslnfo(Wid, Eid, SalesDate, SalesAmount)values(5,1005,'2017-12-19',170)
insert into Saleslnfo(Wid, Eid, SalesDate, SalesAmount)values(6,1006,'2017-12-19',240)


update Ware set Amount=Amount-400 where wname='�������̲�'
update Ware set Amount=Amount-70 where wname='����ţ��'
update Ware set Amount=Amount-100 where wname='����'
update Ware set Amount=Amount-60 where wname='������'
update Ware set Amount=Amount-180 where wname='�Իƽ�'
update Ware set Amount=Amount-210 where wname='32G U��'

--�޸���Ϣ
update Employee set Ename='' where Ename='���Ʒ�'and Eid='1001'
--ɾ������
delete from Ware where Wname='����ţ��' 


--���ݲ�ѯ
select*from Category
select*from Ware
select*from Employee
select*from Saleslnfo