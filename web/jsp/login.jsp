<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
    <title>登录 - 物联网应用创新大赛作品 - 河海大学</title>
    <link rel="stylesheet" type="text/css" href="./style/register-login.css">
    <script>
        function refreshImageCode(obj){
            obj.src = "/createImageCode?t=1&" + new Date();
        }
    </script>
</head>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<body>
<div id="box"></div>
<div class="cent-box">
    <div class="cent-box-header">
        <h1 class="main-title">图片认知分类系统后台</h1>
        <h2 class="sub-title">管理员登录</h2>
    </div>

    <div class="cont-main clearfix">
        <div class="index-tab">
            <div class="index-slide-nav">
                <a href="login.jsp" class="active">登录</a>
                <a href="register.jsp">注册</a>
                <div class="slide-bar"></div>
            </div>
        </div>

        <div class="login form">
            <div class="group">
                <form action="http://115.159.188.200:8001/do_login/" method="post">
                    <div class="group-ipt email">
                        <input type="text" name="name" id="email" class="ipt" placeholder="输入您的用户名" required>
                    </div>
                    <div class="group-ipt password">
                        <input type="password" name="pwd" id="password" class="ipt" placeholder="输入您的登录密码" required>
                    </div>
                    <div class="group-ipt verify">
                        <input type="text" name="verify" id="verify" class="ipt" placeholder="输入验证码">
                        <img src="/createImageCode" title="看不清,刷新" onclick="refreshImageCode(this);" class="imgcode">
                    </div>
                    <div class="button">
                        <%--<button type="submit" class="login-btn register-btn" id="button" onclick="window.location.href='index.jsp'">登录</button>--%>
                            <button type="submit" class="login-btn register-btn" id="button">登录</button>
                    </div>
                    <div class="remember clearfix">
                        <label class="remember-me"><span class="icon"><span class="zt"></span></span><input type="checkbox" name="remember-me" id="remember-me" class="remember-mecheck" checked>记住我</label>
                        <label class="forgot-password">
                            <a href="#">忘记密码？</a>
                        </label>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="footer">
    <p>物流管理云平台 - 中国软件杯</p>
    <p>Designed By Shawyer & 2017</p>
</div>

<script src='./javascript/particles.js' type="text/javascript"></script>
<script src='./javascript/background.js' type="text/javascript"></script>
<script src='./javascript/jquery.min.js' type="text/javascript"></script>
<script src='./javascript/layer/layer.js' type="text/javascript"></script>
</body>
</html>
