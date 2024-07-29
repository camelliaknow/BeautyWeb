<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminsignup.aspx.cs" Inherits="美妆网.Adminsignup" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>美妆网项目实验</title>
    <link rel="stylesheet" href="Adminsignup.css" />
    <script src="Adminsignup.js"></script>
    <style type="text/css">
        .auto-style27 { width: 116px; text-align: center; height: 81px; }
        .auto-style28 { width: 116px; height: 62px; text-align: center; }
        .auto-style29 { width: 116px; height: 88px; text-align: center; }
        .auto-style30 { text-align: center; height: 2px; }
        .container { display: inline-block; }
        .auto-style33 { width: 289px; height: 29px; margin-top: 30px; }
        .auto-style32 { margin-right: 50px; position: fixed; left: 168px; top: 123px; width: 596px; height: 358px; }
        .auto-style34 { height: 2px; }
        .auto-style35 { margin-top: 30px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Beauty website</strong>
            <p style="display:inline-block;margin-left:10px; font-size: x-large;">欢迎注册</p>
            <p style="display:inline-block;margin-left:460px; color:#808080;font-size: small;" class="auto-style23">已有帐号？<span class="auto-style22"><span class="auto-style24">
                <a href="AdminLogin.aspx" style="text-decoration:none;color:black;">立即登录</a>
                </span>👉</span></p>
        </div>
        <div class="auto-style20">
            <div class="auto-style10">
                <table class="auto-style32" style="box-shadow: 10px 10px 20px 0px rgba(0, 0, 0, 0.8), inset 0px 0px 10px rgba(255, 255, 255, 0.5);">
                    <tr>
                        <td class="auto-style27">
                            <asp:Label ID="Label1" runat="server" Text="手机号"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="Text1" runat="server" CssClass="auto-style33" placeholder="请输入你的手机号"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30">验证码</td>
                        <td class="auto-style34">
                            <asp:TextBox ID="Text4" runat="server" CssClass="auto-style33"></asp:TextBox>
                            <asp:Button ID="SendSmsButton" runat="server" CssClass="auto-style35" Text="获取验证码" OnClick="SendSmsButton_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28">
                            <asp:Label ID="Label2" runat="server" Text="请输入密码"></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <asp:TextBox ID="Text2" runat="server" TextMode="Password" CssClass="auto-style33"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <asp:Label ID="Label3" runat="server" Text="请确认密码"></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="Text3" runat="server" TextMode="Password" CssClass="auto-style33" placeholder="请再次输入密码"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <div class="auto-style15">
                    <asp:Button ID="agreebtn" runat="server" Text="同意条款并注册" CssClass="auto-style16" />
                </div>
                <div class="auto-style17">
                    <asp:CheckBox ID="Checkbox1" runat="server" CssClass="auto-style19" />
                    <span class="auto-style21">已阅读并同意</span>
                    <span class="auto-style18">《美妆网用户服务协议》</span>
                    <span class="auto-style18">和</span>
                    <span class="auto-style18">《美妆网隐私政策》</span>
                </div>
            </div>
        </div>
        <div class="auto-style26"></div>
    </form>
    <script>
        var loginButton = document.getElementById('agreebtn');
        var checkbox = document.getElementById('Checkbox1');

        loginButton.addEventListener('click', function (event) {
            event.preventDefault();

            var passwordInput = document.getElementById('Text2');
            var confirmPasswordInput = document.getElementById('Text3');
            var telInput = document.getElementById('Text1');

            // 移除之前的错误提示
            clearErrorMessages(confirmPasswordInput);
            clearErrorMessages(telInput);

            var valid = true;

            if (passwordInput.value !== confirmPasswordInput.value) {
                var errorDiv = document.createElement('div');
                errorDiv.textContent = '密码不一致，请重新输入！';
                errorDiv.style.color = 'red';
                confirmPasswordInput.parentNode.appendChild(errorDiv);
                valid = false;
            }

            if (telInput.value.trim() === '') {
                var teDiv = document.createElement('div');
                teDiv.textContent = '电话号码不允许为空！';
                teDiv.style.color = 'red';
                telInput.parentNode.appendChild(teDiv);
                valid = false;
            }

            if (!checkbox.checked) {
                alert('请先同意用户服务协议和隐私政策！');
                valid = false;
            }

            if (valid) {
                document.getElementById('form1').submit();
            }
        });

        // 清除之前的错误提示
        function clearErrorMessages(inputElement) {
            if (inputElement.parentNode.lastChild.tagName === 'DIV') {
                inputElement.parentNode.removeChild(inputElement.parentNode.lastChild);
            }
        }
    </script>
</body>
</html>
