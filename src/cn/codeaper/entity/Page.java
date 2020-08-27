package cn.codeaper.entity;

import java.util.List;

/**
 * @description: 博客列表实体类
 * @author: qzl
 * @created: 2020/08/26 11:16
 */

public class Page {
    private String currentPage;     //当前页码
    private String totalCounts;      //总条数
    private String totalPages;  //总页码数
    private String pageNum;     //每页条数
    private List<Blog> blogs;   //博客列表

    public Page() {
    }

    public Page(String currentPage, String totalCounts, String totalPages, String pageNum, List<Blog> blogs) {
        this.currentPage = currentPage;
        this.totalCounts = totalCounts;
        this.totalPages = totalPages;
        this.pageNum = pageNum;
        this.blogs = blogs;
    }

    public String getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(String currentPage) {
        this.currentPage = currentPage;
    }

    public String getTotalCounts() {
        return totalCounts;
    }

    public void setTotalCounts(String totalCounts) {
        this.totalCounts = totalCounts;
    }

    public String getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(String totalPages) {
        this.totalPages = totalPages;
    }

    public String getPageNum() {
        return pageNum;
    }

    public void setPageNum(String pageNum) {
        this.pageNum = pageNum;
    }

    public List<Blog> getBlogs() {
        return blogs;
    }

    public void setBlogs(List<Blog> blogs) {
        this.blogs = blogs;
    }

    @Override
    public String toString() {
        return "Page{" +
                "currentPage='" + currentPage + '\'' +
                ", totalCounts='" + totalCounts + '\'' +
                ", totalPages='" + totalPages + '\'' +
                ", pageNum='" + pageNum + '\'' +
                ", blogs=" + blogs +
                '}';
    }
}
