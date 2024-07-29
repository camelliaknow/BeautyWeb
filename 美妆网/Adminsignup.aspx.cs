using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using AlibabaCloud.SDK.Dysmsapi20170525.Models;
using AlibabaCloud.TeaUtil.Models;
using AlibabaCloud.TeaUtil;
using Tea;
using System.Collections.Generic;

namespace 美妆网
{
    public partial class Adminsignup : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 初始化逻辑
        }

        protected void SendSmsButton_Click(object sender, EventArgs e)
        {
            // 获取手机号
            string phoneNumber = Text1.Text.Trim();

            if (string.IsNullOrEmpty(phoneNumber))
            {
                // 显示错误消息
                Response.Write("<script>alert('电话号码不能为空！');</script>");
                return;
            }

            // 生成验证码
            Random random = new Random();
            string code = random.Next(1000, 9999).ToString();

            // 发送验证码
            try
            {
                AlibabaCloud.SDK.Dysmsapi20170525.Client client = CreateClient();
                SendSmsRequest sendSmsRequest = new SendSmsRequest
                {
                    SignName = "美妆网",
                    TemplateCode = "SMS_470555088",
                    PhoneNumbers = phoneNumber,
                    TemplateParam = "{\"code\":\"" + code + "\"}",
                };
                RuntimeOptions runtime = new RuntimeOptions();
                client.SendSmsWithOptions(sendSmsRequest, runtime);

                // 保存验证码到Session或其他存储
                Session["SmsCode"] = code;

                // 显示成功消息
                Response.Write("<script>alert('验证码已发送！');</script>");
            }
            catch (TeaException error)
            {
                Response.Write("<script>alert('发送验证码失败：" + error.Message + "');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('发送验证码失败：" + ex.Message + "');</script>");
            }
        }

        private static AlibabaCloud.SDK.Dysmsapi20170525.Client CreateClient()
        {
            AlibabaCloud.OpenApiClient.Models.Config config = new AlibabaCloud.OpenApiClient.Models.Config
            {
                AccessKeyId = Environment.GetEnvironmentVariable("ALIBABA_CLOUD_ACCESS_KEY_ID"),
                AccessKeySecret = Environment.GetEnvironmentVariable("ALIBABA_CLOUD_ACCESS_KEY_SECRET"),
                Endpoint = "dysmsapi.aliyuncs.com"
            };
            return new AlibabaCloud.SDK.Dysmsapi20170525.Client(config);
        }

        protected void AgreeBtn_Click(object sender, EventArgs e)
        {
            // 注册逻辑
        }
    }
}
