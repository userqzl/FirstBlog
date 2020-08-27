package cn.codeaper.service;

import cn.codeaper.dao.BlogDao;
import cn.codeaper.dao.BlogDaoImpl;
import cn.codeaper.entity.Blog;
import cn.codeaper.entity.Page;

import java.util.List;

/**
 * @description:
 * @author: qzl
 * @created: 2020/08/17 12:13
 */

public class BlogServiceImpl implements BlogService {
    private BlogDao dao = new BlogDaoImpl();

    @Override
    public boolean WriteBlog(Blog blog) {
        return dao.WriteBlog(blog);
    }

    @Override
    public Blog FindBlogById(String id) {
        return dao.FindBlogById(id);
    }

    /**
     * 根据页码查询博客列表
     * @param currentPage
     * @param totalCounts
     * @param pageNum
     * @return
     */
    @Override
    public Page FindBlogsByPage(String currentPage,String pageNum) {
        Page page = new Page();
        page.setCurrentPage(currentPage);
        page.setPageNum(pageNum);
        //调用dao的FindBlogTotalCounts,查询博客总数
        int TotalCounts = Integer.parseInt(dao.FindBlogTotalCounts());      //总条数
        page.setTotalCounts(TotalCounts+"");

        //计算总页码
        int rows = Integer.parseInt(pageNum);   //每页条数
        int totalPages = TotalCounts % rows == 0 ? TotalCounts/rows : TotalCounts/rows + 1;

        page.setTotalPages(totalPages+"");

        //调用dao的List<Blog> FindBlogList(String startPage,String pageNum)查询博客列表
        int startPage = (Integer.parseInt(currentPage)-1)*rows;       //开始页码

        page.setBlogs(dao.FindBlogList(startPage+"",pageNum));

        return page;
    }

    @Override
    public List<Blog> FindBlogList() {
        //调用 BlogDao的FindBlogList方法
        return dao.FindBlogList(""+0,""+5);
    }
}
