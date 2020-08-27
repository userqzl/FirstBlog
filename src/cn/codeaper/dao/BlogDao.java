package cn.codeaper.dao;

import cn.codeaper.entity.Blog;

import java.util.List;

public interface BlogDao {
    public boolean WriteBlog(Blog blog);
    public Blog FindBlogById(String id);
    public List<Blog>FindBlogList(String startPage,String pageNum);
    public String FindBlogTotalCounts();
}
