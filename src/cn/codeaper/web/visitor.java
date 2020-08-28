package cn.codeaper.web;

import cn.codeaper.entity.Page;
import cn.codeaper.service.BlogService;
import cn.codeaper.service.BlogServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @description: 初始化
 * @author: qzl
 * @created: 2020/08/17 21:29
 */
@WebServlet("/visitor")
public class visitor extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("utf-8");

        //获取参数
        String ip = req.getRemoteAddr();
        String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        String OS = req.getParameter("os");
        String browser = req.getParameter("browser");
        String browser_ver = req.getParameter("browser_ver");

        BlogService service = new BlogServiceImpl();

        //查找数据库，修改访问量
        service.add_visitor(ip);

        //调用website_visitor写入数据库
        service.website_visitor(ip,date,OS,browser,browser_ver);

        //查询访问量
        Map<String,Integer>map = service.find_visitor();

        //设置响应编码
        resp.setContentType("application/json;charset=utf-8");
        //响应客户端
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getWriter(),map);
    }
}
