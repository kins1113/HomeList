-- ��ǰ����Ʈ
CREATE TABLE HomeList (
		H_No INTEGER NOT NULL,
		H_Name VARCHAR(200) NOT NULL,
		H_Price INTEGER NULL,
		H_GetDate DATE NULL,
		maker VARCHAR(100) NULL,
		del_Ck VARCHAR(10) NULL,
		CATE_NO INTEGER NULL
);

-- ��ǰ����Ʈ
ALTER TABLE HomeList
	ADD CONSTRAINT PK_HomeList -- ��ǰ����Ʈ �⺻Ű
	PRIMARY KEY (
		H_No -- ��ǰ ��ȣ
	);

-- ī�װ�
CREATE TABLE Categorie (
		cate_No INTEGER NOT NULL,
		cate_Name VARCHAR (100) NOT NULL,
		cate_Info VARCHAR(400) NULL
);

-- ī�װ�
ALTER TABLE Categorie
	ADD CONSTRAINT PK_Categorie -- ī�װ� �⺻Ű
	PRIMARY KEY (
		CKTE_NO -- ī�װ� ��ȣ
	);
alter table Categorie add use_ck varchar(4); --��뿩�� üũ..
ALTER TABLE Categorie MODIFY (use_ck not null); --��뿩�� üũ �ʼ�

-- �߰� ����
CREATE TABLE addInfo (
		CKTE_NO INTEGER NOT NULL,
		add_Info_No INTEGER NOT NULL,
		add_Info_Name VARCHAR(30) NULL,
		add_Info_Info VARCHAR(500) NULL
);

-- �߰� ����
ALTER TABLE addInfo
	ADD CONSTRAINT PK_addInfo -- �߰� ���� �⺻Ű
	PRIMARY KEY (
		CKTENO,    -- ī�װ� ��ȣ
		add_Info_No  -- �߰����� ��ȣ
	);

-- �߰����� ����
CREATE TABLE addContent (
		H_No INTEGER NOT NULL,
		add_Con_No INTEGER NOT NULL,
		add_Con_Info VARCHAR(500) NULL,
		CKTE_NO INTEGER NULL,
		add_Info_No INTEGER NULL
);

-- �߰����� ����
ALTER TABLE addContent
	ADD CONSTRAINT PK_addContent -- �߰����� ���� �⺻Ű
	PRIMARY KEY (
		H_No,      -- ��ǰ ��ȣ
		add_Con_No  -- ���� ��ȣ
	);

-- �����
CREATE TABLE userInfo (
		no INTEGER NOT NULL,
		name VARCHAR(20) NOT NULL,
		birthday VARCHAR(12) NULL,
		tel VARCHAR(30) NULL,
		location VARCHAR(30) NULL,
		gender VARCHAR(10) NULL
);

-- �����
ALTER TABLE user
	ADD CONSTRAINT PK_user -- ����� �⺻Ű
	PRIMARY KEY (
		no -- ��ȣ
	);

-- ��ǰ����Ʈ
ALTER TABLE HomeList
	ADD CONSTRAINT FK_Categorie_TO_HomeList -- ī�װ� -> ��ǰ����Ʈ
	FOREIGN KEY (
		CKTE_NO -- ī�װ� ��ȣ
	)
	REFERENCES Categorie ( -- ī�װ�
		CKTE_NO -- ī�װ� ��ȣ
	);

-- �߰� ����
ALTER TABLE addInfo
	ADD CONSTRAINT FK_Categorie_TO_addInfo -- ī�װ� -> �߰� ����
	FOREIGN KEY (
		CKTE_NO -- ī�װ� ��ȣ
	)
	REFERENCES Categorie ( -- ī�װ�
		CKTE_NO -- ī�װ� ��ȣ
	);

-- �߰����� ����
ALTER TABLE addContent
	ADD CONSTRAINT FK_HomeList_TO_addContent -- ��ǰ����Ʈ -> �߰����� ����
	FOREIGN KEY (
		H_No -- ��ǰ ��ȣ
	)
	REFERENCES HomeList ( -- ��ǰ����Ʈ
		H_No -- ��ǰ ��ȣ
	);

-- �߰����� ����
ALTER TABLE addContent
	ADD CONSTRAINT FK_addInfo_TO_addContent -- �߰� ���� -> �߰����� ����
	FOREIGN KEY (
		CKTE_NO,    -- ī�װ� ��ȣ
		add_Info_No  -- �߰����� ��ȣ
	)
	REFERENCES addInfo ( -- �߰� ����
		CKTE_NO,    -- ī�װ� ��ȣ
		add_Info_No  -- �߰����� ��ȣ
	);