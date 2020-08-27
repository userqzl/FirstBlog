package cn.codeaper.service;

import cn.codeaper.entity.Blog;
import cn.codeaper.entity.Page;

import java.util.List;

public interface BlogService {

    public boolean WriteBlog(Blog blog);
    public Blog FindBlogById(String id);
    public List<Blog> FindBlogList();

    public Page FindBlogsByPage(String currentPage,     //当前页码
                                String pageNum);        //每页条数
}
