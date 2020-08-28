<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020-08-15
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="./static/imgs/favicon.ico" type="image/x-icon">
  <link rel="stylesheet" href="./static/css/index.css">
  <link rel="stylesheet" href="./static/css/nav_footer.css">

  <link rel="stylesheet" href="./static/css/paging.css">

  <title>邱子林的博客</title>
  <script src="static/lib/jquery-3.5.1.js"></script>
  <script src="static/js/platform.js"></script>
  <script>


    $(function () {

        var browser = platform.name;
        var browser_ver = platform.version;
        var os = platform.os.toString();

        $.post("${pageContext.request.contextPath}/visitor",{"browser":browser,"browser_ver":browser_ver,"os":os},function (data) {
            var visitor = $("#visitor");
            visitor.html("访问量"+data.num+"&nbsp访客量"+data.counts);
        });
    });

  </script>
</head>
<body>
<!-- 导航栏 -->
  <nav>
    <div class="content">
        <a href="#">
          <div class="nav_logo">
            <div class="logo_img">
              <img src="./static/imgs/my_logo.png">
              <div class="write_blog">
                <a href="write_blog.html">写博客</a>
              </div>
            </div>
            <div class="logo_text">
              邱子林的博客
            </div>
          </div>
        </a>
       <div class="menu">
          <ul class="nav_menu">
            <li><a href="#">首页</a></li>
            <li><a href="#">文章</a></li>
            <li><a href="#">目录</a></li>
            <li><a href="#">资料</a></li>
            <li><a href="#">关于我</a></li>
          </ul>
          <!-- 汉堡按钮 -->
          <div class="burger">
            <div class="top_line"></div>
            <div class="mid_line"></div>
            <div class="bottom_line"></div>
          </div>
       </div>
    </div>
</nav>

<!-- 中间内容区域 -->
<div class="main">
    <div class="banner">
        <div class="search">
          <form action="">
            <input class="input" type="text" placeholder="站内搜索(功能暂未开放)">
            <button class="button" type="submit" disabled="disabled" ><i></i></button>
          </form>
        </div>
    </div>
  <%--  <div class="music" style="width: 400px; height: 86px;margin: 100px auto;">--%>
  <%--    <iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=403 height=86 src="https://music.163.com/outchain/player?type=2&id=862099032&auto=1&height=66"></iframe>--%>
  <%--  </div>--%>
    <div class="main_content">
  <%--    左侧博客页面--%>
        <div class="blogs">
  <%--        头部--%>
            <div class="blog_head">
                <div class="blog_head_logo">博客</div>
                <div class="blog_counts">
                  共${pages.totalCounts}篇博客
                </div>
            </div>
    <%--        博客列表--%>

            <c:forEach items="${pages.blogs}" var = "blogs">
              <div class="blog">
                  <%--          简介--%>
                <div class="brief">
<%--                  <div class="blog_title">--%>
                  <div class="brief_main">
                    <h3>
                      <a href="FindBlogById?id=${blogs.ID}"><span>${blogs.title}</span></a>
                    </h3>
                      <%--                  </div>--%>
                    <div class="brief_con">
                        ${blogs.brief}
                    </div>
                  </div>
                  <div class="items">
                    <div class="author item">${blogs.author}</div>
                    <div class="date item">${blogs.create_date}</div>
                    <div class="read item">阅读(${blogs.reading})</div>
                  </div>
                </div>
                  <%--          封面--%>
                <div class="cover">
                  <img src="./static/imgs/bg.jpg">
                </div>
              </div>
            </c:forEach>

<%--      分页--%>
    <div class="pagination">
      <ul class="list_ul">
      <c:if test="${pages.currentPage != 1}">
        <li><a href="${pageContext.request.contextPath}/FindBlogByPage?currentPage=${pages.currentPage-1}&rows=5">上一页</a></li>
      </c:if>
<%--        总页码小于10遍历--%>
        <c:if test="${pages.totalPages <= 10}">
          <c:forEach begin="1" end="${pages.totalPages}" var="i">
            <c:if test="${i == pages.currentPage}">
              <li ><a href="${pageContext.request.contextPath}/FindBlogByPage?currentPage=${i}&rows=5" style="background-color: rgb(0,161,214);color: white">${pages.currentPage}</a></li>
            </c:if>
            <c:if test="${i != pages.currentPage}">
              <li><a href="${pageContext.request.contextPath}/FindBlogByPage?currentPage=${i}&rows=5">${i}</a></li>
            </c:if>
          </c:forEach>
        </c:if>

<%--        总页码大于10--%>
        <c:if test="${pages.totalPages > 10}">
<%--          当前页码在1-9之间--%>
          <c:if test="${pages.currentPage < 10}">
            <c:forEach begin="1" end="10" var="i">
              <c:if test="${i == pages.currentPage}">
                <li ><a href="${pageContext.request.contextPath}/FindBlogByPage?currentPage=${i}&rows=5" style="background-color: rgb(0,161,214);color: white">${pages.currentPage}</a></li>
              </c:if>
              <c:if test="${i != pages.currentPage}">
                <li><a href="${pageContext.request.contextPath}/FindBlogByPage?currentPage=${i}&rows=5">${i}</a></li>
              </c:if>
            </c:forEach>
          </c:if>

<%--          10 <= 当前页码 < totalPages-5 --%>
          <c:if test="${pages.currentPage >=10 && pages.currentPage < pages.totalPages-5}">
            <c:forEach begin="${pages.currentPage-4}" end="${pages.currentPage+5}" var="i">
              <c:if test="${i == pages.currentPage}">
                <li ><a href="${pageContext.request.contextPath}/FindBlogByPage?currentPage=${i}&rows=5" style="background-color: rgb(0,161,214);color: white">${pages.currentPage}</a></li>
              </c:if>
              <c:if test="${i != pages.currentPage}">
                <li><a href="${pageContext.request.contextPath}/FindBlogByPage?currentPage=${i}&rows=5">${i}</a></li>
              </c:if>
            </c:forEach>
          </c:if>

<%--          当前页码 > 总页码-5  --%>
          <c:if test="${pages.currentPage >=10 && pages.currentPage >= pages.totalPages-5}">
            <c:forEach begin="${pages.totalPages-9}" end="${pages.totalPages}" var="i">
              <c:if test="${i == pages.currentPage}">
                <li ><a href="${pageContext.request.contextPath}/FindBlogByPage?currentPage=${i}&rows=5" style="background-color: rgb(0,161,214);color: white">${pages.currentPage}</a></li>
              </c:if>
              <c:if test="${i != pages.currentPage}">
                <li><a href="${pageContext.request.contextPath}/FindBlogByPage?currentPage=${i}&rows=5">${i}</a></li>
              </c:if>
            </c:forEach>
          </c:if>

        </c:if>


        <c:if test="${pages.currentPage != pages.totalPages}">
          <li><a href="${pageContext.request.contextPath}/FindBlogByPage?currentPage=${pages.currentPage+1}&rows=5">下一页</a></li>
        </c:if>
        <span>共${pages.totalPages}页&nbsp${pages.totalCounts}篇博客</span>
      </ul>



    </div>
        </div>
        <div class="classfiy">
        功能正在开发中...
        </div>

    </div>
</div>

<!-- 页脚 -->
<div class="footer">
  <div class="foot_con">
    <div class="for_me foot_div">
      <h4>关于作者</h4>
      <p>网络工程大二在读，分享技术博客</p>
      <p>感谢浏览</p>
        <br>
      <p>Copyright © /www.codeaper.cn All Rights Reserved.</p>
      <div class="icon">
        <ul class="icons">
          <li>
            <div class="icon">
              <a href="#" class="weixin_a"><img src="./static/imgs/weixin_icon.png" alt=""></a>
              <div class="weixin">
                <img src="./static/imgs/weixin.jpg" alt="">
              </div>
            </div>
          </li>
          <li>
            <div class="icon">
              <a href="#" ><img src="./static/imgs/bilibili_icon.png" alt=""></a>
              <div class="bilibili">
                <img src="./static/imgs/bilibili.png" alt="">
              </div>
            </div>
          </li>
          <li>
            <div class="icon">
              <a href="#" id="email"><img src="./static/imgs/email_icon.png" alt=""></a>
            </div>
          </li>
          <li>
            <div class="icon">
              <a href="https://github.com/userqzl/"><img src="./static/imgs/github_icon.png" alt=""></a>
            </div>
          </li>
        </ul>
      </div>
    </div>
    <div class="foot_line"></div>
    <div class="copyright foot_div">
      <h4>友情链接</h4>
      <p>xxx</p>
      <p>xxx</p>
      <p>xxx</p>
      <p>xxx</p>
    </div>
    <div class="foot_line"></div>
    <div class="for_net foot_div">
      <h4>关于本站</h4>
      <br>
      <p>互联网ICP备案号：<a href="http://www.beian.miit.gov.cn/" class="bei_an">赣ICP备20007779号</a></p>
      <br>
        <p id="htmer_time"></p><br>
      <p id="visitor"></p>
    </div>
  </div>
</div>

<script src="./static/js/index.js" type="text/javascript"></script>
</body>
</html>
