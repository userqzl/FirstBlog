-- 文章信息表
CREATE TABLE article_info(
	id VARCHAR(80) PRIMARY KEY,	-- 文章id
	create_by VARCHAR(12),		-- 创建人
	create_date DATE,		-- 创建日期 YYYY-MM-DD
	update_by VARCHAR(12),		-- 更新人
	update_date DATETIME,		-- 更新时间
	VERSION INT,			-- 更新次数（版本）
	is_delete INT,			-- 是否删除
	title VARCHAR(50),		-- 文章标题
	TYPE VARCHAR(20),		-- 文章分类
	author VARCHAR(12),		-- 作者
	original_link VARCHAR(120),	-- 原文链接
	is_original INT                 -- 是否原创
);

-- 文章内容表
CREATE TABLE article_conetnt(
	id VARCHAR(80) PRIMARY KEY,	-- 文章id
	create_by VARCHAR(12),		-- 创建人
	create_date DATE,		-- 创建日期 YYYY-MM-DD
	update_by VARCHAR(12),		-- 更新人
	update_date DATETIME,		-- 更新时间
	is_delete INT,			-- 是否删除
	context TEXT			-- 文章内容
);