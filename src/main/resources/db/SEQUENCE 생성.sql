--������ ����
--CREATE SEQUENCE [��������]
--INCREMENT BY [��������] --�������ڰ� ����� ���� ������ ���� ����Ʈ�� 1
--START WITH [���ۼ���] -- ���ۼ����� ����Ʈ���� �����϶� MINVALUE �����϶� MAXVALUE
--NOMINVALUE OR MINVALUE [�ּڰ�] -- NOMINVALUE : ����Ʈ�� ����, �����϶� 1, �����϶� -1028 
                                 -- MINVALUE : �ּҰ� ����, ���ۼ��ڿ� �۰ų� ���ƾ��ϰ� MAXVALUE���� �۾ƾ���
--NOMAXVALUE OR MAXVALUE [�ִ밪] -- NOMAXVALUE : ����Ʈ�� ����, �����϶� 1027, �����϶� -1
                                 -- MAXVALUE : �ִ밪 ����, ���ۼ��ڿ� ���ų� Ŀ���ϰ� MINVALUE���� Ŀ����
--CYCLE OR NOCYCLE --CYCLE ������ �ִ밪�� �����ϸ� �ּҰ����� �ٽ� ���� NOCYCLE ������ �ִ밪 ���� �� ������ ��������
--CACHE OR NOCACHE --CACHE ������ �޸𸮿� ������ ���� �̸� �Ҵ��ϰ� NOCACHE ������ ���������� �޷θ��� �Ҵ����� ����

SELECT EX_SEQ.CURRVAL FROM DUAL; --�ش� ������ �� ��ȸ

SELECT * FROM USER_SEQUENCES ;

CREATE SEQUENCE HomeList_seq
INCREMENT BY 1
START WITH 1
NOCACHE;

CREATE SEQUENCE Categorie_seq
INCREMENT BY 1
START WITH 1
NOCACHE;

CREATE SEQUENCE addInfo_seq
INCREMENT BY 1
START WITH 1
NOCACHE;

CREATE SEQUENCE addContent_seq
INCREMENT BY 1
START WITH 1
NOCACHE;

CREATE SEQUENCE userInfo_seq
INCREMENT BY 1
START WITH 1
NOCACHE;