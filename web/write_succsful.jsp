<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="./lib/md_editor/css/sty" /> -->
    <link rel="stylesheet" href="./static/lib/md_editor/css/editormd.css" />
    <link rel="stylesheet" href="static/css/nav_footer.css">
    <link rel="shortcut icon" href="./static/imgs/favicon.ico" type="image/x-icon">
    <title>${is_write}</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }

        .main{
            position: relative;
            top: 0px;
            width: 100%;
            height: 100vh;
            background-color: #f5f5f5;
            background-image: url("https://codeaper-cn.oss-cn-hangzhou.aliyuncs.com/succsful.jpg");
        }
        .success{
            position: absolute;
            width: 500px;
            height: 330px;
            background-color: white;
            margin-top: 200px;
            margin-left: 50%;
            left: -250px;
            border-radius: 10px;
            box-shadow: ;
        }

        .title{
            width: 100%;
            height: 60px;
            background-color:rgb(79,189,250);
            text-align: center;
            line-height: 60px;
            font-weight: 800;
            font-size: 20px;
            font-family: "Microsoft YaHei", 微软雅黑;
            border-radius: 10px 10px 0px 0px;
        }
        .select{
            width: 100%;
            height: 100px;
            margin: 50px auto;

        }
        .select ul{
            width: 80%;
            height: 100px;
            margin: 100px auto;
        }
        .select ul li{
            padding:0; /* 将默认的内边距去掉 */
            margin:0; /* 将默认的外边距去掉 */
            float: left; /* 往左浮动 */
            display: block;
            width: 100px;
            height: 40px;
            text-align: center;
            line-height: 40px;
            border: 1px solid rgb(79,189,250);
            border-radius: 8px;
            color: rgb(79,189,250);
            margin-left: 25px;
        }
        .select ul li:hover{
            background-color: rgb(79,189,250);
            color: white;
        }
    </style>
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
<div class="main">
    <div class="success">
        <div class="title">
            ${is_write}
        </div>
        <div class="select">
            <ul>
                <a href="index.jsp"><li>回首页</li></a>
                <a href="FindBlogById?id=${blog.ID}"><li>查看文章</li></a>
                <a href="write_blog.html"><li>再写一篇</li></a>
            </ul>
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

<script src="./static/js/index.js" type="text/javascript"></script>
<script src="./static/lib/jquery.min.js"></script>
</body>
</html>