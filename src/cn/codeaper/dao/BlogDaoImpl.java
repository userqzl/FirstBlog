package cn.codeaper.dao;

import cn.codeaper.entity.Blog;
import cn.codeaper.utils.JDBCUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.util.List;

/**
 * @description:
 * @author: qzl
 * @created: 2020/08/17 12:14
 */

public class BlogDaoImpl implements BlogDao {
    JdbcTemplate template = new JdbcTemplate(JDBCUtil.getDataSource());

    @Override
    public boolean WriteBlog(Blog blog) {
        try {
            //System.out.println(blog);
            //写入文章信息表
            String sql = "insert into article_info (" +
                    "id," +
                    "create_date," +
                    "is_delete," +
                    "title," +
                    "type," +
                    "author," +
                    "original_link," +
                    "is_original," +
                    "brief) values (?,?,?,?,?,?,?,?,?)";

            int sql_num1 = template.update(sql,
                    blog.getID(),
                    blog.getCreate_date(),
                    blog.getIs_delete(),
                    blog.getTitle(),
                    blog.getType(),
                    blog.getAuthor(),
                    blog.getOriginal(),
                    blog.getIs_original(),
                    blog.getBrief()
                    );

            //写入内容表
            String sql1 = "insert into article_conetnt (" +
                    "b_id," +
                    "author," +
                    "create_date," +
                    "is_delete," +
                    "content) values (?,?,?,?,?)";
            int sql_num2 = template.update(sql1,
                    blog.getID(),
                    blog.getAuthor(),
                    blog.getCreate_date(),
                    blog.getIs_delete(),
                    blog.getContent()
                    );
            return sql_num1 > 0 && sql_num2 > 0;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public Blog FindBlogById(String id) {
//        private String ID;  //博客id
//        private LocalDate create_date;  //创建日期
//        private String is_delete;      //是否删除
//        private String title;   //文章标题
//        private String type;    //文章分类
//        private String author;  //作者
//        private String original;    //原文链接
//        private String is_original;    //是否原创
//        private String content;     //文章内容
//        brief


//        -- 文章信息表
//        CREATE TABLE article_info(
//                id VARCHAR(80) PRIMARY KEY,	-- 文章id
//                create_date DATE,		-- 创建日期 YYYY-MM-DD
//                is_delete INT,			-- 是否删除
//                title VARCHAR(50),		-- 文章标题
//                TYPE VARCHAR(20),		-- 文章分类
//                author VARCHAR(12),		-- 作者
//                original_link VARCHAR(120),	-- 原文链接
//                is_original INT                 -- 是否原创
//        );


//        -- 文章内容表
//        CREATE TABLE article_conetnt(
//                id VARCHAR(80) PRIMARY KEY,	-- 文章id
//                author VARCHAR(12),		-- 作者
//                create_date DATE,		-- 创建日期 YYYY-MM-DD
//                is_delete INT,			-- 是否删除
//                context TEXT			-- 文章内容
//        );
//
        //根据id查询数据库(多表查询)
        String sql = "SELECT " +
        "                t1.id, " +
                "                t1.create_date," +
                "                t1.is_delete," +
                "                t1.title," +
                "                t1.type," +
                "                t1.author," +
                "                t1.original_link," +
                "                t1.is_original," +
                "                t2.content" +
                "                FROM" +
                "  article_info t1 " +
                "  INNER JOIN article_conetnt t2 " +
                "    ON t1.id = t2.b_id  AND id = ?";

        //执行sql，返回结果

        Blog blog = template.queryForObject(sql,new BeanPropertyRowMapper<Blog>(Blog.class),id);
        return blog;
    }


    /**
     * 分页查询博客列表
     * @param startPage
     * @param pageNum
     * @return
     */
    @Override
    public List<Blog> FindBlogList(String startPage,String pageNum) {

        //查询数据库(多表查询)
        String sql = "SELECT t1.id, " +
                "            t1.create_date," +
        "                    t1.is_delete," +
                "            t1.title," +
                "            t1.type," +
                "            t1.author," +
                "            t1.original_link," +
                "            t1.is_original," +
                "            t1.brief," +
                "            t2.content " +
                "FROM article_info t1 LEFT  JOIN article_conetnt t2 " +
                "ON t1.id=t2.b_id " +
                "ORDER BY t1.create_date DESC " +
                "LIMIT ?,? ";
//        limit 0,5
        List<Blog> query = template.query(sql, new BeanPropertyRowMapper<Blog>(Blog.class),Integer.parseInt(startPage),Integer.parseInt(pageNum));
        //System.out.println("FindBlogList--"+query);
        return query;
    }

    /**
     * 查询博客总数
     * @return
     */
    @Override
    public String FindBlogTotalCounts() {

        String sql = "select count(*) from article_info";
        return template.queryForObject(sql,String.class);
    }
}
