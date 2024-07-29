<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="美妆网.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>美妆网项目实验</title>
<link rel="stylesheet" href="AdminLogin.css"
</head>
<body>
    <form id="form1" runat="server">
        <div class="HeaderBg">
            <div class="HeaderMiddle" style="font-size: xx-large; height: 86px; font-family: 'Engravers MT'; font-weight: normal; letter-spacing: 13px">
                <strong>Beauty website</strong></div>
            </div>
        <div class ="BodyBg">
            <div class="LoginBgPicture" style="background-image:url(https://ssl1.sephorastatic.cn/wcsfrontend/campaign/campaign_img/2022/03/banner/hp_login_20220324.jpg
);"></div>
            <div class="main">
                <div class="mainMiddle">
                    <div class="auto-style1">登录美妆网官网</div>
                    <div class="tip"></div>
                   <div class="inputcombie first">
                       <div class="user icon-left">👤</div>
                       <div class="webinput" style="width:300px;">
                           <input type="text" id="usernameInput" placeholder="手机号/邮箱" 
                               value=""  style="width:342px; text-indent:32px; height: 40px;" />
                       </div>
                   </div>
                    <div class="inputcombie">
                            <div class="webinput" style="width:300px">
                            <div class="password icon-left">🔒</div>
                                <input type="password" id="passwordInput" placeholder="密码" value="" style="width:342px; text-indent:32px; height: 40px;" />
                            </div>
                        </div>  
                    <div class="forgetpw">
                        <div class="forgetpw2">忘记密码？<div class="confirmbutton2" id="agreebtn">登录</div>

                        <div style="height: 15px"></div>
                    <div class="useragreeBox">
                        <input type="checkbox" class="useragreeCheck" value="on"/>
                            <p  style="height: 54px; width: 360px;">已阅读并同意《美妆网用户服务协议》<em>《美妆网隐私政策》</em></p>
                    </div>
                </div>
    
            </div>
        </div>
        <div class="singup" >
             <p class="singuptext" >  
            <a href="Adminsignup.aspx"style="color:red;text-decoration: none">免费注册👉</a>  
                </p>
            </div>
    </form>
     <script>
         document.getElementById('agreebtn').addEventListener('click', function (event) {
             var username = document.getElementById("usernameInput").value;
             var password = document.getElementById("passwordInput").value;
             var checkbox = document.getElementsByClassName("useragreeCheck")[0]; // 获取复选框

             if (!checkbox.checked) {
                 alert("请先同意用户协议");
             } else if (username === "admine" && password === "123456") {
                 // 登录成功，跳转到成功页面
                 window.location.href = "index.aspx";
             } else {
                 // 显示错误提示
                 alert("用户名或密码错误，请重新输入。");
             }
         });
     </script>

</body>
</html>
