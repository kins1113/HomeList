--insert ���� ����� sql�� 
select * from HomeList;
select * from Categorie order by use_ck desc;
select * from addInfo;  
select * from addContent;
select * from userInfo;

insert into Categorie (CATE_NO,CATE_NAME,CATE_INFO, USE_ck)
values(Categorie_seq.nextval,'����','�����ִ� å���Դϴ�.','n');

insert into HomeList(H_NO,H_NAME,H_PRICE,H_GETDATE,MAKER,DEL_CK,CATE_NO)
values (HomeList_seq.nextval,'������',17000,sysdate,'�̿���','x',9);
insert into HomeList(H_NO,H_NAME,H_PRICE,H_GETDATE,MAKER,DEL_CK,CATE_NO)
values (HomeList_seq.nextval,'�Ǹ���',20000,sysdate,'�̿���','x',9);

commit;

update Categorie
set use_ck = 'y';
delete from Categorie;