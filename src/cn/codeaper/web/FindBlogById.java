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

/**
 * @description: 根据博客id查找博客
 * @author: qzl
 * @created: 2020/08/17 11:32
 */
@WebServlet("/FindBlogById")
public class FindBlogById extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("utf-8");
        //接收要查询的id
        String id = req.getParameter("id");
        //调用BlogService的
        BlogService blogService = new BlogServiceImpl();
        Blog blog = blogService.FindBlogById(id);

        //数据转发到博客详情页
        req.setAttribute("blog",blog);
        System.out.println(blog);
        req.getRequestDispatcher("details.jsp").forward(req,resp);
    }
}
