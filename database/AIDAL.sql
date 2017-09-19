wCREATE DATABASE AidaL

CREATE TABLE ad_customer(								--��Ա��
	u_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL ,		--ϵͳ�Զ����
	u_name VARCHAR(50) NOT NULL,						--��Ա����
	u_nickName VARCHAR(50),								--�û��ǳ�
	u_password VARCHAR(50) NOT NULL,					--����
	u_relaname VARCHAR(50),								--��ʵ����
	u_sex VARCHAR(10) NOT NULL,							--�Ա�
	u_birthday DATE,									--��������
	u_address VARCHAR(200),								--��ַ
	u_cardID VARCHAR(50),								--���֤��
	u_email VARCHAR(50),								--�����ʼ�
	u_mobile VARCHAR(11),								--�绰����
	u_stylingDesigner INT DEFAULT (0),					--����ʦˮƽ
	u_state INT DEFAULT(0) NOT NULL,					--�û�״̬
)
--��ӹ���Ա���,��������
ALTER TABLE ad_customer ADD u_admin INT;
ALTER TABLE ad_customer ADD st_id INT;
ALTER TABLE ad_customer ADD u_activecode varchar(20);
ALTER TABLE ad_customer ALTER COLUMN u_sex VARCHAR(10) NULL;

CREATE TABLE ad_order(									--������Ϣ��	
	co_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--����ID
	co_name VARCHAR(50),								--��������
	co_address VARCHAR(200) NOT NULL,					--�ͻ���ַ
	co_mobile VARCHAR(11) NOT NULL,						--�绰
	co_totalPrice FLOAT,								--��Ʒ�ܼ۸�
	co_discountPrice FLOAT,								--�Ż�ȯ�۸�
	co_freightCharge FLOAT,								--�˷�
	co_realPrice FLOAT,									--ʵ�ʼ۸�
	co_createTime DATETIME,								--����ʱ��	
	co_paymentWay VARCHAR(15),							--֧����ʽ
	co_orderState VARCHAR(10),							--����״̬
	u_id INT,											--��ԱID
)

ALTER TABLE ad_order
	ADD CONSTRAINT FK_order_customer FOREIGN KEY (u_id)
		REFERENCES ad_customer(u_id)
			ON UPDATE CASCADE
			 ON DELETE CASCADE;

CREATE TABLE ad_orderitem(								--������Ŀ��Ϣ��
	o_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--��ĿID	
	o_productId INT NOT NULL,							--��ƷID
	o_productName VARCHAR(200) NOT NULL,				--��Ʒ����
	o_productPrice FLOAT NOT NULL,						--��Ʒ�۸�
	o_amount INT,										--��Ʒ����
	co_id INT,											--����ID
)
--��ӵ���ID


ALTER TABLE ad_orderitem
	ADD CONSTRAINT FK_orderitem_productInfo FOREIGN KEY (o_productId)
		REFERENCES ad_productInfo (p_id)
			ON UPDATE CASCADE;
ALTER TABLE ad_orderitem 
	ADD CONSTRAINT FK_orderitem_order FOREIGN KEY (co_id)
		REFERENCES ad_order (co_id)
			ON UPDATE CASCADE
				ON DELETE CASCADE;

CREATE TABLE ad_productInfo(							--��Ʒ��Ϣ��
	p_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--��ƷID
	p_name VARCHAR(200) NOT NULL,						--��Ʒ����
	br_id INT,											--Ʒ��ID
	p_description TEXT,									--��Ʒ����
	p_createTime DATETIME,								--����ʱ��
	p_baseprice FLOAT,									--�ɹ��۸�
	p_marketprice FLOAT,								--�г��۸�
	p_sellprice FLOAT,									--���ۼ۸�
	p_sexrequest VARCHAR(10),							--�����Ա�
	p_place VARCHAR(50),								--����������
	p_count INT	DEFAULT(0),								--���
	p_commend INT,										--�Ƽ��ȼ�
	p_clickcount INT DEFAULT(0),						--�����
	p_sellCount INT DEFAULT(0),							--������
	p_categoryId INT,									--��Ʒ���ID
	p_uploadFile INT,									--�ϴ��ļ�ID
)

ALTER TABLE ad_productInfo
	ADD CONSTRAINT FK_productInfo_brand FOREIGN KEY (br_id)
		REFERENCES ad_brand (br_id)
			ON UPDATE CASCADE
				ON DELETE CASCADE;
ALTER TABLE ad_productInfo
	ADD CONSTRAINT FK_productInfo_productcategory FOREIGN KEY (p_categoryId)
		REFERENCES ad_productcategory (cg_id)
			ON UPDATE CASCADE
				ON DELETE CASCADE;
ALTER TABLE ad_productInfo
	ADD CONSTRAINT FK_productInfo_uploadfile FOREIGN KEY (p_uploadFile)
		REFERENCES ad_uploadfile (uf_id)
			ON UPDATE CASCADE
				ON DELETE CASCADE;
				
CREATE TABLE ad_productcategory(						--��Ʒ�����Ϣ��
	cg_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--�����
	cg_name VARCHAR(50) NOT NULL,						--�������
	cg_level INT,										--��𼶱�
	cg_pid INT,											--���ڵ����ID
)  

CREATE TABLE ad_brand(									--Ʒ�Ʊ�
	br_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--Ʒ��ID
	br_name VARCHAR(20) NOT NULL,						--Ʒ������
	br_state INT DEFAULT(0),							--Ʒ�ƶ���״̬
)
--���Ӣ�����ƣ�Ʒ������
ALTER TABLE ad_brand ADD br_engName VARCHAR(50);
ALTER TABLE ad_brand ADD br_discription TEXT;
--�������ʱ�䣬��פʱ��
ALTER TABLE ad_brand ADD br_applyTime DATETIME;
ALTER TABLE ad_brand ADD br_enterTime DATETIME;
--���Ʒ����������
ALTER TABLE ad_brand ADD br_levelGrand INT DEFAULT(0);

CREATE TABLE ad_admin(									--����Ա��Ϣ��
	a_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--����ԱID
	a_username VARCHAR(50) NOT NULL,					--�û���
	a_password VARCHAR(50) NOT NULL,					--����
	a_category INT NOT NULL,							--����Ա���
)
--ɾ������Ա��Ϣ��


CREATE TABLE ad_admincategory(							--����Ա�����Ϣ��
	acg_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--�����
	acg_name VARCHAR(50) NOT NULL,						--�������		
	acg_level INT,										--���ȼ�
	acg_pid INT,										--���ڵ����ID
)
--ɾ������Ա�����Ϣ��

CREATE TABLE ad_uploadfile(								--�ϴ��ļ���Ϣ��
	uf_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--�ϴ��ļ�ID
	uf_path VARCHAR(255) NOT NULL,						--�ϴ��ļ�·��
)

CREATE TABLE ad_comment(								--���۱�
	com_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--����ID
	u_id INT NOT NULL,									--�û�ID
	p_id INT NOT NULL,									--��ƷID
	com_content TEXT NOT NULL,							--��������
	com_time DATETIME,									--����ʱ��
	com_pstate INT,										--��Ʒ����״̬
	com_love INT,										--��������
	com_pid INT,										--���ڵ�����ID
)

ALTER TABLE ad_comment
	ADD CONSTRAINT FK_customer_comment FOREIGN KEY (u_id)
		REFERENCES ad_customer (u_id)
			ON UPDATE CASCADE 
				ON DELETE CASCADE;
ALTER TABLE ad_comment
	ADD CONSTRAINT FK_comment_productInfo FOREIGN KEY (p_id)
		REFERENCES ad_productInfo (p_id)
			ON DELETE CASCADE
				ON UPDATE CASCADE;

CREATE TABLE ad_consult(								--��ѯ��
	con_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--��ѯ��ϢID
	u_id INT NOT NULL,									--�û�ID
    p_id INT NOT NULL,									--��ƷID
    ct_themeid INT NOT NULL,							--��ѯ����ID
    con_content TEXT NOT NULL,							--��ѯ����
    con_time DATETIME,									--����ʱ��
    con_state INT DEFAULT(0),							--��ѯ״̬
)		

ALTER TABLE ad_consult
	ADD CONSTRAINT FK_consult_customer FOREIGN KEY (u_id)
		REFERENCES ad_customer (u_id)
			ON UPDATE CASCADE 
				ON DELETE CASCADE;
ALTER TABLE ad_consult
	ADD CONSTRAINT FK_consult_productInfo FOREIGN KEY (p_id)
		REFERENCES ad_productInfo (p_id)
			ON DELETE CASCADE
				ON UPDATE CASCADE;
ALTER TABLE ad_consult
	ADD CONSTRAINT FK_consult_consulttheme FOREIGN KEY (ct_themeid)
		REFERENCES ad_consulttheme (ct_themeid)
			ON UPDATE CASCADE
				ON DELETE CASCADE;

CREATE TABLE ad_consulttheme(							--��ѯ�����
	ct_themeid INT IDENTITY(1,1) PRIMARY KEY NOT NULL,	--��ѯ����ID
	ct_name VARCHAR(100) NOT NULL,						--��������
	cg_id INT,											--������Ʒ���
)

ALTER TABLE ad_consulttheme
	ADD CONSTRAINT FK_consulttheme_productcategory FOREIGN KEY (cg_id)
		REFERENCES ad_productcategory (cg_id);

CREATE TABLE ad_reply(									--����Ա�ظ���
	re_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--�ظ�����ID
	con_id INT,											--��ѯID
	re_content TEXT,									--�ظ�����
	re_time DATETIME,									--�ظ�ʱ��
	re_state INT DEFAULT(0),							--�ظ�����״̬
)

ALTER TABLE ad_reply
	ADD CONSTRAINT FK_reply_consult FOREIGN KEY (con_id)
		REFERENCES ad_consult (con_id)
			ON UPDATE CASCADE
				ON DELETE CASCADE;

CREATE TABLE ad_wishlist(								--��Ʒ�ղر�
	w_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--��Ʒ�ղ��б�ID
	u_id INT NOT NULL,									--�û�ID
	p_id INT NOT NULL,									--��ƷID
	w_time DATETIME,									--�ղ�ʱ��
	w_state INT DEFAULT(0),								--�ղ�״̬
)

ALTER TABLE ad_wishlist
	ADD CONSTRAINT FK_wishlist_customer FOREIGN KEY (u_id)
		REFERENCES ad_customer (u_id)
			ON UPDATE CASCADE 
				ON DELETE CASCADE;
ALTER TABLE ad_wishlist
	ADD CONSTRAINT FK_wishlis_productInfo FOREIGN KEY (p_id)
		REFERENCES ad_productInfo (p_id)
			ON DELETE CASCADE
				ON UPDATE CASCADE;

--��ӵ�����Ϣ��
CREATE TABLE ad_store (
	st_id INT  IDENTITY(1,1) PRIMARY KEY NOT NULL,
	st_name VARCHAR(100) NOT NULL,
	st_tag VARCHAR(200),
	st_createTime DATE,
	st_endTime DATE,
	st_serviceManner FLOAT,
	st_serviceQuality FLOAT,
	st_speed FLOAT,
	st_level INT NOT NULL,
	st_state INT NOT NULL DEFAULT(0),
)
ALTER TABLE ad_store ADD st_favorablerate FLOAT


--��ӵ�¼��־��Ϣ��
CREATE TABLE ad_log (
	log_id INT  IDENTITY(1,1) PRIMARY KEY NOT NULL,
	st_id INT NOT NULL,
	u_id INT NOT NULL,
	log_time DATE,
	log_IP VARCHAR(20),
	log_adress VARCHAR(20),
)
ALTER TABLE ad_log ALTER COLUMN st_id INT NULL
ALTER TABLE ad_log ALTER COLUMN log_time DATETIME

--��ӵ��������
CREATE TABLE ad_storeAuth (
	sa_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,	--�����ID
	u_id INT NOT NULL,								--�����û�ID
	sa_IDCard_front VARCHAR(50) NOT NULL,			--���֤����·��
	sa_IDCard_back VARCHAR(50) NOT NULL,			--���֤����·��	
	sa_name VARCHAR(100),							--��Ӧ������Ϣ����
	sa_tag VARCHAR(200),							--��Ӧ������Ϣ��ǩ
	sa_statu INT NOT NULL DEFAULT(1),				--�����״̬
)