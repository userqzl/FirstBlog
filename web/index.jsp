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

  <title>邱子林的博客</title>
</head>
<body>
<!-- 导航栏 -->
  <nav>
    <div class="content">
        <a href="#">
          <div class="nav_logo">
            <div class="logo_img">
              <img src="./static/imgs/my_logo.png">
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
            <li><a href="./love.html">LOVE</a></li>
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
                  共5篇博客
                </div>
            </div>
    <%--        博客列表--%>
            <div class="blog">
    <%--          简介--%>
                <div class="brief">
                  <div class="blog_title">
                      <a href="#">Java内存模型详解</a>
                  </div>
                  <div class="brief_con">
                    Java内存模型是学习Java并发所必须熟悉的，也是后来分析高并发问题的基础。本文就给大家详细介绍Java内存模型，为之后的并发原理讲解奠定基础......
                  </div>
                  <div class="items">
                    <ul>
                      <li>邱子林</li>
                      <li>
                        <i>
                          <img src="./static/imgs/time.png">
                        </i>
                        <span>2020-08-15</span>
                      </li>
                      <li>
                        <i>
                          <img src="./static/imgs/liulan.png">
                        </i>
                        <span>126</span>
                      </li>
                      <li>
                        <i>
                          <img src="./static/imgs/pinlun.png">
                        </i>
                        <span>3</span>
                      </li>
                      <li>
                        <i>
                          <img src="./static/imgs/dianzang.png">
                        </i>
                        <span>12</span>
                      </li>
                    </ul>
                  </div>
                </div>
    <%--          封面--%>
                <div class="cover">
                <img src="./static/imgs/bg.jpg">
              </div>
            </div>
            <div class="blog">
              <%--          简介--%>
              <div class="brief">
                <div class="blog_title">
                  <a href="#">Java内存模型详解</a>
                </div>
                <div class="brief_con">
                  Java内存模型是学习Java并发所必须熟悉的，也是后来分析高并发问题的基础。本文就给大家详细介绍Java内存模型，为之后的并发原理讲解奠定基础......
                </div>
                <div class="items">
                  <ul>
                    <li>邱子林</li>
                    <li>
                      <i>
                        <img src="./static/imgs/time.png">
                      </i>
                      <span>2020-08-15</span>
                    </li>
                    <li>
                      <i>
                        <img src="./static/imgs/liulan.png">
                      </i>
                      <span>126</span>
                    </li>
                    <li>
                      <i>
                        <img src="./static/imgs/pinlun.png">
                      </i>
                      <span>3</span>
                    </li>
                    <li>
                      <i>
                        <img src="./static/imgs/dianzang.png">
                      </i>
                      <span>12</span>
                    </li>
                  </ul>
                </div>
              </div>
              <%--          封面--%>
              <div class="cover">
                <img src="./static/imgs/bg.jpg">
              </div>
            </div>
            <div class="blog">
              <%--          简介--%>
              <div class="brief">
                <div class="blog_title">
                  <a href="#">Java内存模型详解</a>
                </div>
                <div class="brief_con">
                  Java内存模型是学习Java并发所必须熟悉的，也是后来分析高并发问题的基础。本文就给大家详细介绍Java内存模型，为之后的并发原理讲解奠定基础......
                </div>
                <div class="items">
                  <ul>
                    <li>邱子林</li>
                    <li>
                      <i>
                        <img src="./static/imgs/time.png">
                      </i>
                      <span>2020-08-15</span>
                    </li>
                    <li>
                      <i>
                        <img src="./static/imgs/liulan.png">
                      </i>
                      <span>126</span>
                    </li>
                    <li>
                      <i>
                        <img src="./static/imgs/pinlun.png">
                      </i>
                      <span>3</span>
                    </li>
                    <li>
                      <i>
                        <img src="./static/imgs/dianzang.png">
                      </i>
                      <span>12</span>
                    </li>
                  </ul>
                </div>
              </div>
              <%--          封面--%>
              <div class="cover">
                <img src="./static/imgs/bg.jpg">
              </div>
            </div>
            <div class="blog">
              <%--          简介--%>
              <div class="brief">
                <div class="blog_title">
                  <a href="#">Java内存模型详解</a>
                </div>
                <div class="brief_con">
                  Java内存模型是学习Java并发所必须熟悉的，也是后来分析高并发问题的基础。本文就给大家详细介绍Java内存模型，为之后的并发原理讲解奠定基础......
                </div>
                <div class="items">
                  <ul>
                    <li>邱子林</li>
                    <li>
                      <i>
                        <img src="./static/imgs/time.png">
                      </i>
                      <span>2020-08-15</span>
                    </li>
                    <li>
                      <i>
                        <img src="./static/imgs/liulan.png">
                      </i>
                      <span>126</span>
                    </li>
                    <li>
                      <i>
                        <img src="./static/imgs/pinlun.png">
                      </i>
                      <span>3</span>
                    </li>
                    <li>
                      <i>
                        <img src="./static/imgs/dianzang.png">
                      </i>
                      <span>12</span>
                    </li>
                  </ul>
                </div>
              </div>
              <%--          封面--%>
              <div class="cover">
                <img src="./static/imgs/bg.jpg">
              </div>
            </div>
            <div class="blog">
              <%--          简介--%>
              <div class="brief">
                <div class="blog_title">
                  <a href="#">Java内存模型详解</a>
                </div>
                <div class="brief_con">
                  Java内存模型是学习Java并发所必须熟悉的，也是后来分析高并发问题的基础。本文就给大家详细介绍Java内存模型，为之后的并发原理讲解奠定基础......
                </div>
                <div class="items">
                  <ul>
                    <li>邱子林</li>
                    <li>
                      <i>
                        <img src="./static/imgs/time.png">
                      </i>
                      <span>2020-08-15</span>
                    </li>
                    <li>
                      <i>
                        <img src="./static/imgs/liulan.png">
                      </i>
                      <span>126</span>
                    </li>
                    <li>
                      <i>
                        <img src="./static/imgs/pinlun.png">
                      </i>
                      <span>3</span>
                    </li>
                    <li>
                      <i>
                        <img src="./static/imgs/dianzang.png">
                      </i>
                      <span>12</span>
                    </li>
                  </ul>
                </div>
              </div>
              <%--          封面--%>
              <div class="cover">
                <img src="./static/imgs/bg.jpg">
              </div>
            </div>
            <div class="blog">
              <%--          简介--%>
              <div class="brief">
                <div class="blog_title">
                  <a href="#">Java内存模型详解</a>
                </div>
                <div class="brief_con">
                  Java内存模型是学习Java并发所必须熟悉的，也是后来分析高并发问题的基础。本文就给大家详细介绍Java内存模型，为之后的并发原理讲解奠定基础......
                </div>
                <div class="items">
                  <ul>
                    <li>邱子林</li>
                    <li>
                      <i>
                        <img src="./static/imgs/time.png">
                      </i>
                      <span>2020-08-15</span>
                    </li>
                    <li>
                      <i>
                        <img src="./static/imgs/liulan.png">
                      </i>
                      <span>126</span>
                    </li>
                    <li>
                      <i>
                        <img src="./static/imgs/pinlun.png">
                      </i>
                      <span>3</span>
                    </li>
                    <li>
                      <i>
                        <img src="./static/imgs/dianzang.png">
                      </i>
                      <span>12</span>
                    </li>
                  </ul>
                </div>
              </div>
              <%--          封面--%>
              <div class="cover">
                <img src="./static/imgs/bg.jpg">
              </div>
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
      <p>Copyright © /www.codeaper.cn All Rights Reserved.</p>
      <br>
      <p id="htmer_time">
    </div>
  </div>
</div>

<script src="./js/index.js" type="text/javascript"></script>
</body>
</html>
