package cn.codeaper.entity;

import java.time.LocalDate;

/**
 * @description: 博客实体类
 * @author: qzl
 * @created: 2020/08/17 11:48
 */

public class Blog {
    private String ID;  //博客id
    private LocalDate create_date;  //创建日期
    private String is_delete;      //是否删除
    private String title;   //文章标题
    private String type;    //文章分类
    private String author;  //作者
    private String original;    //原文链接
    private String is_original;    //是否原创
    private String brief;       //文章简介
    private String content;     //文章内容
    private String reading;     //文章阅读量
    public Blog() {
    }

    public Blog(String ID, LocalDate create_date, String is_delete, String title, String type, String author, String original, String is_original, String content, String brief) {
        this.ID = ID;
        this.create_date = create_date;
        this.is_delete = is_delete;
        this.title = title;
        this.type = type;
        this.author = author;
        this.original = original;
        this.is_original = is_original;
        this.content = content;
        this.brief = brief;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "ID='" + ID + '\'' +
                ", create_date=" + create_date +
                ", is_delete='" + is_delete + '\'' +
                ", title='" + title + '\'' +
                ", type='" + type + '\'' +
                ", author='" + author + '\'' +
                ", original='" + original + '\'' +
                ", is_original='" + is_original + '\'' +
                ", brief='" + brief + '\'' +
                ", content='" + content + '\'' +
                ", reading='" + reading + '\'' +
                '}';
    }

    public String getReading() {
        return reading;
    }

    public void setReading(String reading) {
        this.reading = reading;
    }

    public String getID() {
        return ID;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public LocalDate getCreate_date() {
        return create_date;
    }

    public void setCreate_date(LocalDate create_date) {
        this.create_date = create_date;
    }

    public String getIs_delete() {
        return is_delete;
    }

    public void setIs_delete(String is_delete) {
        this.is_delete = is_delete;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getOriginal() {
        return original;
    }

    public void setOriginal(String original) {
        this.original = original;
    }

    public String getIs_original() {
        return is_original;
    }

    public void setIs_original(String is_original) {
        this.is_original = is_original;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
