--��ѯÿ����Ʒ�ı�ţ����ƣ���Ʒ���󣬲����յ�Ʒ��������
select Wid,Wname,SalesPrice-PurchasePrice as ���� from Ware order by ���� desc

--ͳ��ÿ����Ʒ������������ʾ��Ʒ���ƺ������������������Ӹߵ�������
select Wname ��Ʒ����,SalesAmount ������ 
from Ware inner join Saleslnfo on Ware.Wid=Saleslnfo.wid order by SalesAmount desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ����������
select  name ��Ʒ���,SalesAmount  ������ 
from Category inner join Ware on Category.cid =Ware.cid inner join Saleslnfo on 
Ware.Wid=Saleslnfo.wid order by SalesAmount desc
--ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select Wname ��Ʒ����, PurchasePrice ��Ʒ����, SalesPrice ��Ʒ�ۼ� , SalesAmount ������, 
(SalesPrice-PurchasePrice)*(SalesAmount)  ������ from Ware inner join  Saleslnfo on
Ware.Wid=Saleslnfo.Wid order by Wname desc
 --����Ա2������5��1����Ʒ 
update Ware set Amount=Amount-5 where Wid =1
insert into Saleslnfo(Wid, Eid, SalesDate, SalesAmount)values(1,1002,'2017-12-19',5)

--���������ܶ������Ա����
select  Ename Ա��, PurchasePrice ��Ʒ����, SalesPrice ��Ʒ�ۼ� , SalesAmount ������, 
(SalesPrice-PurchasePrice)*(SalesAmount)  ������ from  Saleslnfo inner join Ware on Ware.Wid=Saleslnfo.Wid inner join 
   Employee on  Saleslnfo.Eid=Employee.Eid order by ������ desc

--��ѯ��Ʒ����������ǰ��������Ʒ���Ƽ�����

select top 5 Wname ��Ʒ����,SalesAmount ������ from Ware inner join  Saleslnfo on
Ware.Wid=Saleslnfo.Wid order by ������ desc
--ͳ��2010�����Ʒ����������ǰ��������Ʒ���Ƽ�����
select  top 5 Wname ��Ʒ����,sum(SalesAmount) ������ from Ware inner join  Saleslnfo on
Saleslnfo.Wid=Ware.Wid where SalesDate between '2017-01-19' and '2017-12-19' group by Wname  order by ������ desc
--ͳ��ÿ��Ա����2010�������������ʾԱ�����Ƽ�������
select Ename Ա������, SalesAmount ������ from Employee inner join Saleslnfo on Employee.Eid=Saleslnfo.Eid  
where  SalesDate between '2017-01-19' and '2017-12-19'  order by  ������ desc

--ͳ��2010���������
select sum((SalesPrice-PurchasePrice)*SalesAmount) ������ from Ware inner join Saleslnfo on  Saleslnfo.Wid=Ware.Wid 
where SalesDate between '2017-01-19' and '2017-12-19'   
