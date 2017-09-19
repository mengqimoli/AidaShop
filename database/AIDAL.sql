wCREATE DATABASE AidaL

CREATE TABLE ad_customer(								--会员表
	u_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL ,		--系统自动编号
	u_name VARCHAR(50) NOT NULL,						--会员名称
	u_nickName VARCHAR(50),								--用户昵称
	u_password VARCHAR(50) NOT NULL,					--密码
	u_relaname VARCHAR(50),								--真实姓名
	u_sex VARCHAR(10) NOT NULL,							--性别
	u_birthday DATE,									--出生日期
	u_address VARCHAR(200),								--地址
	u_cardID VARCHAR(50),								--身份证号
	u_email VARCHAR(50),								--电子邮件
	u_mobile VARCHAR(11),								--电话号码
	u_stylingDesigner INT DEFAULT (0),					--造型师水平
	u_state INT DEFAULT(0) NOT NULL,					--用户状态
)
--添加管理员类别,所属店铺
ALTER TABLE ad_customer ADD u_admin INT;
ALTER TABLE ad_customer ADD st_id INT;
ALTER TABLE ad_customer ADD u_activecode varchar(20);
ALTER TABLE ad_customer ALTER COLUMN u_sex VARCHAR(10) NULL;

CREATE TABLE ad_order(									--订单信息表	
	co_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--订单ID
	co_name VARCHAR(50),								--订单名称
	co_address VARCHAR(200) NOT NULL,					--送货地址
	co_mobile VARCHAR(11) NOT NULL,						--电话
	co_totalPrice FLOAT,								--商品总价格
	co_discountPrice FLOAT,								--优惠券价格
	co_freightCharge FLOAT,								--运费
	co_realPrice FLOAT,									--实际价格
	co_createTime DATETIME,								--创建时间	
	co_paymentWay VARCHAR(15),							--支付方式
	co_orderState VARCHAR(10),							--订单状态
	u_id INT,											--会员ID
)

ALTER TABLE ad_order
	ADD CONSTRAINT FK_order_customer FOREIGN KEY (u_id)
		REFERENCES ad_customer(u_id)
			ON UPDATE CASCADE
			 ON DELETE CASCADE;

CREATE TABLE ad_orderitem(								--订单条目信息表
	o_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--条目ID	
	o_productId INT NOT NULL,							--商品ID
	o_productName VARCHAR(200) NOT NULL,				--商品名称
	o_productPrice FLOAT NOT NULL,						--商品价格
	o_amount INT,										--商品数量
	co_id INT,											--订单ID
)
--添加店铺ID


ALTER TABLE ad_orderitem
	ADD CONSTRAINT FK_orderitem_productInfo FOREIGN KEY (o_productId)
		REFERENCES ad_productInfo (p_id)
			ON UPDATE CASCADE;
ALTER TABLE ad_orderitem 
	ADD CONSTRAINT FK_orderitem_order FOREIGN KEY (co_id)
		REFERENCES ad_order (co_id)
			ON UPDATE CASCADE
				ON DELETE CASCADE;

CREATE TABLE ad_productInfo(							--商品信息表
	p_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--商品ID
	p_name VARCHAR(200) NOT NULL,						--商品名称
	br_id INT,											--品牌ID
	p_description TEXT,									--商品描述
	p_createTime DATETIME,								--创建时间
	p_baseprice FLOAT,									--采购价格
	p_marketprice FLOAT,								--市场价格
	p_sellprice FLOAT,									--销售价格
	p_sexrequest VARCHAR(10),							--所属性别
	p_place VARCHAR(50),								--所属销售区
	p_count INT	DEFAULT(0),								--库存
	p_commend INT,										--推荐等级
	p_clickcount INT DEFAULT(0),						--浏览量
	p_sellCount INT DEFAULT(0),							--销售量
	p_categoryId INT,									--商品类别ID
	p_uploadFile INT,									--上传文件ID
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
				
CREATE TABLE ad_productcategory(						--商品类别信息表
	cg_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--类别编号
	cg_name VARCHAR(50) NOT NULL,						--类别名称
	cg_level INT,										--类别级别
	cg_pid INT,											--父节点类别ID
)  

CREATE TABLE ad_brand(									--品牌表
	br_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--品牌ID
	br_name VARCHAR(20) NOT NULL,						--品牌名称
	br_state INT DEFAULT(0),							--品牌冻结状态
)
--添加英文名称，品牌描述
ALTER TABLE ad_brand ADD br_engName VARCHAR(50);
ALTER TABLE ad_brand ADD br_discription TEXT;
--添加申请时间，入驻时间
ALTER TABLE ad_brand ADD br_applyTime DATETIME;
ALTER TABLE ad_brand ADD br_enterTime DATETIME;
--添加品牌评级分数
ALTER TABLE ad_brand ADD br_levelGrand INT DEFAULT(0);

CREATE TABLE ad_admin(									--管理员信息表
	a_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--管理员ID
	a_username VARCHAR(50) NOT NULL,					--用户名
	a_password VARCHAR(50) NOT NULL,					--密码
	a_category INT NOT NULL,							--管理员类别
)
--删除管理员信息表


CREATE TABLE ad_admincategory(							--管理员类别信息表
	acg_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--类别编号
	acg_name VARCHAR(50) NOT NULL,						--类别名称		
	acg_level INT,										--类别等级
	acg_pid INT,										--父节点类别ID
)
--删除管理员类别信息表

CREATE TABLE ad_uploadfile(								--上传文件信息表
	uf_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--上传文件ID
	uf_path VARCHAR(255) NOT NULL,						--上传文件路径
)

CREATE TABLE ad_comment(								--评论表
	com_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--评论ID
	u_id INT NOT NULL,									--用户ID
	p_id INT NOT NULL,									--商品ID
	com_content TEXT NOT NULL,							--评论内容
	com_time DATETIME,									--发表时间
	com_pstate INT,										--商品购买状态
	com_love INT,										--点赞数量
	com_pid INT,										--父节点评论ID
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

CREATE TABLE ad_consult(								--咨询表
	con_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--咨询信息ID
	u_id INT NOT NULL,									--用户ID
    p_id INT NOT NULL,									--商品ID
    ct_themeid INT NOT NULL,							--咨询主题ID
    con_content TEXT NOT NULL,							--咨询内容
    con_time DATETIME,									--创建时间
    con_state INT DEFAULT(0),							--咨询状态
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

CREATE TABLE ad_consulttheme(							--咨询主题表
	ct_themeid INT IDENTITY(1,1) PRIMARY KEY NOT NULL,	--咨询主题ID
	ct_name VARCHAR(100) NOT NULL,						--主题名称
	cg_id INT,											--所属商品类别
)

ALTER TABLE ad_consulttheme
	ADD CONSTRAINT FK_consulttheme_productcategory FOREIGN KEY (cg_id)
		REFERENCES ad_productcategory (cg_id);

CREATE TABLE ad_reply(									--管理员回复表
	re_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--回复内容ID
	con_id INT,											--咨询ID
	re_content TEXT,									--回复内容
	re_time DATETIME,									--回复时间
	re_state INT DEFAULT(0),							--回复反馈状态
)

ALTER TABLE ad_reply
	ADD CONSTRAINT FK_reply_consult FOREIGN KEY (con_id)
		REFERENCES ad_consult (con_id)
			ON UPDATE CASCADE
				ON DELETE CASCADE;

CREATE TABLE ad_wishlist(								--商品收藏表
	w_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,		--商品收藏列表ID
	u_id INT NOT NULL,									--用户ID
	p_id INT NOT NULL,									--商品ID
	w_time DATETIME,									--收藏时间
	w_state INT DEFAULT(0),								--收藏状态
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

--添加店铺信息表
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


--添加登录日志信息表
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

--添加店铺申请表
CREATE TABLE ad_storeAuth (
	sa_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,	--申请表ID
	u_id INT NOT NULL,								--关联用户ID
	sa_IDCard_front VARCHAR(50) NOT NULL,			--身份证正面路径
	sa_IDCard_back VARCHAR(50) NOT NULL,			--身份证反面路径	
	sa_name VARCHAR(100),							--对应店铺信息名称
	sa_tag VARCHAR(200),							--对应店铺信息标签
	sa_statu INT NOT NULL DEFAULT(1),				--申请表状态
)