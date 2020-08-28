package cn.codeaper.service;

import cn.codeaper.dao.BlogDao;
import cn.codeaper.dao.BlogDaoImpl;
import cn.codeaper.entity.Blog;
import cn.codeaper.entity.Page;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public void reading(String art_id,String ip,String date,String addr) {
        //调用dao的reading
        dao.reading(art_id,ip,date,addr);
    }

    @Override
    public void website_visitor(String ip, String date, String OS, String browser, String browser_ver) {
        dao.website_visitor(ip,date,OS,browser,browser_ver);
    }

    //统计访问量和访客数
    @Override
    public void add_visitor(String ip) {
        //访问+1
        dao.add_visitor();

        //如果ip访问过，不做任何事
        Boolean t = dao.find_ip(ip);
        System.out.println("t="+t);
        if(t == true){
            System.out.println("老访客"+ip);
        }
        else {
            //新访客，访客+1
            System.out.println("新访客"+ip);
            dao.add_count();
        };
    }

    //查询访客量和访问量
    @Override
    public Map<String,Integer> find_visitor() {
        Map<String,Integer> map = new HashMap<>();
        map.put("num",dao.find_num());
        map.put("counts",dao.find_count());
        return map;
    }


    @Override
    public List<Blog> FindBlogList() {
        //调用 BlogDao的FindBlogList方法
        return dao.FindBlogList(""+0,""+5);
    }
}
