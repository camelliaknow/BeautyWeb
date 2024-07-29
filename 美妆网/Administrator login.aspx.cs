using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 上 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        string username = Request.Form["username"];
        string password = Request.Form["password"];

        if (username == "admin" && password == "123456")
        {
            // 用户名和密码正确，执行跳转  
            Response.Write("yes");
            //Response.Redirect(""); 
        }
        else
        {
            // 用户名或密码不正确，显示错误弹窗  
            string script = "alert('用户名或密码错误，请重试！');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "errorAlert", script, true);
        }
    }
}