package cn.codeaper.web;

import cn.codeaper.entity.Blog;
import cn.codeaper.service.BlogService;
import cn.codeaper.service.BlogServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.UUID;

/**
 * @description: 写博客
 * @author: qzl
 * @created: 2020/08/17 11:36
 */
@WebServlet("/WriteBlog")
public class WriteBlog extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("utf-8");
        //获取参数
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        String type = req.getParameter("type");
        String content = req.getParameter("content");
        String is_original = req.getParameter("is_original");
        String brief = req.getParameter("brief");
        //获取当前时间 YYYY-MM-DD
        LocalDate create_date = LocalDate.now();

        //生成文章id
        UUID id = UUID.randomUUID();

        //封装成对象
//        String ID, LocalDate create_date, String is_delete, String title, String type, String author, String original, String is_original, String content
        Blog blog = new Blog(id.toString(),create_date,"1",title,type,author," ",is_original,content,brief);
        //调用BlogService的WriteBlog方法
        BlogService blogService = new BlogServiceImpl();
        if(blogService.WriteBlog(blog)){
            req.setAttribute("is_write","文章发布成功！");
            req.setAttribute("blog",blog);
        }else {
            req.setAttribute("is_write","文章发布失败！");
        }
        //转发到主页
        req.getRequestDispatcher("write_succsful.jsp").forward(req,resp);
    }
}
