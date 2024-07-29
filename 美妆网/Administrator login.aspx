<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Administrator login.aspx.cs" Inherits="上" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员登录界面</title>
    <link rel="stylesheet" href="Administrator login.css" />
    <script src="Administrator login.js"></script>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            padding: 10px;
            font-size: 18px;
            color: #fff;
            background-color: #333;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            }
        .auto-style2 :hover{
            background-color: #555;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div class="header">
                <h1>管理员登录界面</h1>
            </div>
            <div class="form-group">
                <label for="username">账号</label>
                <input type="text" id="username" name="username" placeholder="请输入账号" />
            </div>
            <div class="form-group">
                <label for="password">密码</label>
                <input type="password" id="password" name="password" placeholder="请输入密码" />
            </div>
            <div class="form-group">
                <input type="button" value="登录" onclick="login()" class="auto-style2" />
            </div>
        </div>
    </form>
     
</body>
</html>
