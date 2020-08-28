package cn.codeaper.dao;

import cn.codeaper.entity.Blog;

import java.util.List;

public interface BlogDao {
    public boolean WriteBlog(Blog blog);
    public Blog FindBlogById(String id);
    public List<Blog>FindBlogList(String startPage,String pageNum);
    public String FindBlogTotalCounts();
    public void reading(String art_id,String ip,String date,String addr);

    public void website_visitor(String ip, String date, String os, String browser, String browser_ver);

    public void add_visitor();

    public void add_count();
    public boolean find_ip(String ip);

    public int find_num();

    public int find_count();
}
