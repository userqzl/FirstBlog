package cn.codeaper.service;

import cn.codeaper.entity.Blog;
import cn.codeaper.entity.Page;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

public interface BlogService {

    public boolean WriteBlog(Blog blog);
    public Blog FindBlogById(String id);
    public List<Blog> FindBlogList();

    public Page FindBlogsByPage(String currentPage,     //当前页码
                                String pageNum);        //每页条数
    public void reading(String art_id,String ip,String date,String addr);  //阅读量统计
    public void website_visitor(String ip, String date, String OS, String browser, String browser_ver);  //统计网站访客信息

    public void add_visitor(String ip);

    public Map<String,Integer> find_visitor();
}
