package cn.codeaper.web;

import cn.codeaper.entity.Page;
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
@WebServlet("/FindBlogByPage")
public class FindBlogByPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("utf-8");
        //接收参数
        //获取参数
        String current = req.getParameter("currentPage");
        String rows = req.getParameter("rows");

        if(current == null || "".equals(current)){
            current = 1+"";
        }

        if(rows == null || "".equals(rows)){
            rows = 5+"";
        }

//        //调用BlogService的FindBlogList()方法
        BlogService blogService = new BlogServiceImpl();
//        List<Blog> blogs = blogService.FindBlogList();

        //分页查询
        Page page = blogService.FindBlogsByPage(current,rows);

        //调用其他方法，查询其他参数

        req.setAttribute("pages",page);
        System.out.println(page);
        //req.setAttribute("blogList",blogs);
        //转发到index.jsp
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
