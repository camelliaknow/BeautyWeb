using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 美妆网
{
    public partial class Product_Management : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddProduct_Click(object sender, EventArgs e)
        {
   
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters.Clear();
            SqlDataSource1.InsertParameters.Add("商品名称", System.Data.DbType.String, TextBox1.Text);
            SqlDataSource1.InsertParameters.Add("商品价格", System.Data.DbType.Double, TextBox2.Text);
            SqlDataSource1.Insert();
            try
            {
                int rowsAffected = SqlDataSource1.Insert();
                if (rowsAffected > 0)
                {
                    // 插入成功的处理逻辑
                    // 可以添加一些提示或重定向到成功页面
                    Response.Write("<script>alert('商品添加成功！');</script>");
                }
                else
                {
                    // 插入失败的处理逻辑
                    Response.Write("<script>alert('商品添加失败，请检查输入数据!');</script>");
                }
            }
            catch (Exception ex)
            { 
            }
        }
    }
}