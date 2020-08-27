<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./static/imgs/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./static/css/nav_footer.css">
    <link rel="stylesheet" href="./static/css/details.css">
    <link rel="stylesheet" href="static/lib/md_editor/css/editormd.css">

<!--    markedown js依赖-->
<%--    <script src="static/lib/jquery.min.js"></script>--%>
<%--    <script src="static/lib/md_editor/lib/flowchart.min.js"></script>--%>
<%--    <script src="static/lib/md_editor/lib/jquery.flowchart.min.js"></script>--%>
<%--    <script src="static/lib/md_editor/lib/marked.min.js"></script>--%>
<%--    <script src="static/lib/md_editor/lib/prettify.min.js"></script>--%>
<%--    <script src="static/lib/md_editor/lib/raphael.min.js"></script>--%>
<%--    <script src="static/lib/md_editor/lib/sequence-diagram.min.js"></script>--%>
<%--    <script src="static/lib/md_editor/lib/underscore.min.js"></script>--%>
<%--    <script src="static/lib/md_editor/editormd.min.js"></script>--%>

    <script src="static/lib/jquery-3.5.1.js"></script>
    <script src="static/lib/md_editor/editormd.js"></script>
    <script src="static/lib/md_editor/lib/marked.min.js"></script>
    <script src="static/lib/md_editor/lib/prettify.min.js"></script>

    <title>${blog.author} | ${blog.title}</title>
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
<div class="main_blog">
    <div class="detail_head">
        <div class="is_origain">
            ${blog.is_original}
        </div>
        <div class="title">
            <h1>${blog.title}</h1>
        </div>
        <div class="classfiy_list">
            <ul>
                <li>${blog.author}</li>
                <li>
                    <i>
                        <img src="./static/imgs/time.png">
                    </i>
                    <span>${blog.create_date}</span>
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
<%--    博客内容--%>
    <hr>
    <div class="blog_content">
        <div id="my-content">
        <textarea id="content" style="display:none;">
            ${blog.content}
        </textarea>
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

<script type="text/javascript">
    $(function () {
        editormd.markdownToHTML("my-content", {
            htmlDecode      : "style,script,iframe",  // you can filter tags decode
            emoji           : true,
            taskList        : true,
            tex             : true,  // 默认不解析
            flowChart       : true,  // 默认不解析
            sequenceDiagram : true,  // 默认不解析
        });
    });
</script>
<script src="./static/js/index.js" type="text/javascript"></script>
</body>
</html>