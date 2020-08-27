package cn.codeaper.web;

import cn.codeaper.entity.Blog;
import cn.codeaper.service.BlogService;
import cn.codeaper.service.BlogServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @description: 主页查询博客列表
 * @author: qzl
 * @created: 2020/08/25 09:55
 */
@WebServlet("/FindBlogList")
public class FindBlogList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //调用service的FindBlogList方法
        BlogService service = new BlogServiceImpl();
        List<Blog> blogs = service.FindBlogList();
        //数据写入json
        ObjectMapper mapper = new ObjectMapper();
        //String json = mapper.writeValueAsString(blogs);
        //System.out.println(json);
        //传给主页
        resp.setContentType("application/json;charset=utf-8");
        mapper.writeValue(resp.getWriter(),blogs);
    }
}
