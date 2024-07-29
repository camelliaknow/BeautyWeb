<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="美妆网.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>美妆网项目实验</title>
    <link rel="stylesheet" href="reset.css" />
    <link rel="stylesheet" href="index.css" />
    <script src="/JavaScript.js"></script>
    
    </head>
    
<body style="height: 760px">
    <form id="form1" runat="server">
       <%-- 头部开始--%>
        <div class="header">
            <div class="wrap">
                <div class="top-content-left top-logged-out">
                  <a href="#" class="logo">欢迎来到美妆网</a>
                  <a href="AdminLogin.aspx">
                      <span class="auto-style3">请登录 | </span></a>
                    <a href="Adminsignup.aspx">
                        <span class="auto-style3">免费注册</span></a>
                  <a href="#"><span class="auto-style3">手机验证码登录</span></a>
                   <div class="auto-style4">
                        <span class="top-content-left special"><a href="#">
                            <span class="auto-style3">美妆网友情提示  </span>
                            <span class="auto-style3">我的</span></a>
                        <a href="#"><span class="auto-style3">📱手机美妆网</span></a>
                        <a href="#"><span class="auto-style3">帮助中心</span></a>
                        <a href="#"><span class="auto-style3">品牌合作</span></a>
                        <a href="Administrator login.aspx"><span class="auto-style3 manager">👩🏻‍💻管理员登陆</span></a>
                        </span>
                       </div>

      
                     </a></div>

            </div>
        </div>
      <%-- 头部结束--%>
       
     <%--导航样式开始--%>
        <div class="search">
            <div class="auto-style5"></div>
            <div class="auto-style6">
                BEAUTY<div class="auto-style7">

                    <div style="margin-top:25px" class="auto-style8">
                        <input value=""  placeholder="618折扣直降狂欢"  class="auto-style9" type="text" /><div class="auto-style11">
                            🛒<span class="font"><a href="shopping cart.aspx"  >点我购物</a></span></div>
                    </div>
                    <div class="auto-style10">搜索
                    </div>
            </div>
            </div>
        </div>
         <%--  导航样式结束--%>
        <%--商品样式开始--%>
        <div class="auto-style12">
            <div class="auto-style13">
           <a class="#" href="javascript:;" style="color: #FFFFFF;margin-left:25px;"><span class="auto-style24">全部商品类目</span></a>
            <div class="content">

            <div class="auto-style26">
                <img src="https://ssl1.sephorastatic.cn/wcsfrontend/campaign/campaign_img/2024/04/banner/hp_2024de0415_20240415.jpg" class="auto-style23" /><br />
                <div>
                    <table class="bottom">
                        <tr>
                            <td>
                                <img src="https://ssl1.sephorastatic.cn/wcsfrontend/campaign/campaign_img/2024/04/banner/hp_weeklyspecials_20240425_1.jpg" class="auto-style27" />
                            </td>
                            <td>
                                <img src="https://ssl1.sephorastatic.cn/wcsfrontend/campaign/campaign_img/2024/05/banner/hp_lancaster20240530_20240530.jpg" class="auto-style29" />
                            </td>
                            <td>
                                <img src="https://ssl1.sephorastatic.cn/wcsfrontend/campaign/campaign_img/2024/05/banner/hp_givenchy20240530_20240530.jpg" class="auto-style28" />
                            </td>
                        </tr>
                    </table>
                </div>
                </div>

            </div>
            </div>
            <div class="auto-style14">
                <em class="activity-icon heart-left" ></em>
                <ul class="navigation-info-content-menu-Col">
                     <div class="menu">
    <ul class="navigation-info-content-menu-Col">
        <li class="">
            <span class=""></span>
            <a href="#" target="_blank" class="title" style="color: black;">护肤</a>
            <ul class="auto-style15 submenu">
                <li><a href="#">洁面乳</a></li>
                <li><a href="#">面膜</a></li>
                <li><a href="#">化妆水</a></li>
            </ul>
        </li>
        <li class="">
            <span class=""></span>
            <a href="#" target="_blank" class="title" style="color: black;">彩妆</a>
            <ul class="auto-style16 submenu">
                <li><a href="#">口红</a></li>
                <li><a href="#">眼影</a></li>
                <li><a href="#">粉底</a></li>
            </ul>
        </li>
        <li class="">
            <span class=""></span>
            <a href="#" target="_blank" class="title" style="color: black;">香水</a>
            <ul class="auto-style17 submenu">
                <li><a href="#">淡香水</a></li>
                <li><a href="#">男士香水</a></li>
                <li><a href="#">女士香水</a></li>
            </ul>
        </li>
        <li class="">
            <span class=""></span>
            <a href="#" target="_blank" class="title" style="color: black;">工具</a>
            <ul class="auto-style18 submenu">
                <li><a href="#">化妆刷</a></li>
                <li><a href="#">美甲工具</a></li>
                <li><a href="#">化妆包</a></li>
            </ul>
        </li>
        <li class="">
            <span class=""></span>
            <a href="#" target="_blank" class="title" style="color: black;">男士</a>
            <ul class="auto-style19 submenu">
                <li><a href="#">剃须刀</a></li>
                <li><a href="#">男士护肤品</a></li>
                <li><a href="#">香水</a></li>
            </ul>
        </li>
        <li class="">
            <span class=""></span>
            <a href="#" target="_blank" class="title" style="color: black;">洗浴护体</a>
            <ul class="auto-style20 submenu">
                <li><a href="#">沐浴露</a></li>
                <li><a href="#">洗发水</a></li>
                <li><a href="#">护手霜</a></li>
            </ul>
        </li>
        <li class="">
            <span class=""></span>
            <a href="#" target="_blank" class="title" style="color: black;">美发护发</a>
            <ul class="auto-style21 submenu">
                <li><a href="#">洗发水</a></li>
                <li><a href="#">护发素</a></li>
                <li><a href="#">发膜</a></li>
            </ul>
        </li>
    </ul>
</div>


            </div>
            <div class="auto-style25" style="margin-left:200px;">
                <ul>
                    <li style="display:inline-block; margin-right:50px;margin-left:50px;">畅销榜单</li>
                    <li style="display:inline-block;margin-right:50px;">独家发售</li>
                    <li style="display:inline-block;margin-right:50px;">礼物套装</li>
                    <li style="display:inline-block;margin-right:50px;">全部品牌</li>
                </ul>
            </div>
        </div>
        <%--商品样式结束--%>
        <div class="brand-title" >


            <strong><span class="auto-style30">全部品牌</span></strong>&nbsp;&nbsp;&nbsp; ALL BRANDS
            <span  style="margin-left:610px;letter-spacing:5px;"><strong>热门品牌</strong>
                <span class="sbrand1">独家品牌</span>
                <span class="sbrand2">全部品牌</span>
            </span>

        </div>
        <div class="auto-style32">
            <ul style="width: 590px; height: 320px;">
                <li style="transition-duration: 1.2s;" class="auto-style31">
                    <img src="https://ssl1.sephorastatic.cn/wcsfrontend/campaign/campaign_img/2024/05/banner/hp_superbrand2_20240530.jpg"/>
                </li>
            </ul>
            <div class="module_tabGroupList brand-body-content-right floatR">
                <ul class="auto-style33">
        <li>
            <a class="module_tabGroupList_link" href="https://www.sephora.cn/" target="_blank">
                <img src="https://ssl1.sephorastatic.cn/wcsfrontend/brand/sephoracollection/sephoracollection_144X60.png" alt="丝芙兰" title="丝芙兰">
                <div class="module_tabGroupList_hover">
                    <div class="module_tabGroupList_banner">点击查看</div>
                </div>
            </a>
        </li>
        <li>
            <a class="module_tabGroupList_link" href="https://www.esteelauder.com/" target="_blank">
                <img src="https://ssl2.sephorastatic.cn/wcsfrontend/brand/esteelauder/esteelauder_144X60.png" alt="雅诗兰黛" title="雅诗兰黛">
                <div class="module_tabGroupList_hover">
                    <div class="module_tabGroupList_banner">点击查看</div>
                </div>
            </a>
        </li>
        <li>
            <a class="module_tabGroupList_link" href="https://www.fentybeauty.com/" target="_blank">
                <img src="https://ssl3.sephorastatic.cn/wcsfrontend/brand/fentybeauty/fentybeauty_144X60.png" alt="Fenty Beauty" title="Fenty Beauty">
                <div class="module_tabGroupList_hover">
                    <div class="module_tabGroupList_banner">点击查看</div>
                </div>
            </a>
        </li>
        <li>
            <a class="module_tabGroupList_link" href="https://www.esteelauder.com/" target="_blank">
                <img src="https://ssl1.sephorastatic.cn/wcsfrontend/brand/drunkelephant/drunkelephant_144X60.png" alt="醉象" title="醉象">
                <div class="module_tabGroupList_hover">
                    <div class="module_tabGroupList_banner">点击查看</div>
                </div>
            </a>
        </li>
        <li>
            <a class="module_tabGroupList_link" href="https://www.lancome.com/" target="_blank">
                <img src="https://ssl1.sephorastatic.cn/wcsfrontend/brand/lancome/lancome_144X60.png" alt="兰蔻" title="兰蔻">
                <div class="module_tabGroupList_hover">
                    <div class="module_tabGroupList_banner">点击查看</div>
                </div>
            </a>
        </li>
        <li>
            <a class="module_tabGroupList_link" href="https://www.guerlain.com/" target="_blank">
                <img src="https://ssl3.sephorastatic.cn/wcsfrontend/brand/guerlain/guerlain_144X60.png" alt="娇兰" title="娇兰">
                <div class="module_tabGroupList_hover">
                    <div class="module_tabGroupList_banner">点击查看</div>
                </div>
            </a>
        </li>
        <li>
            <a class="module_tabGroupList_link" href="https://www.jd.com/hprm/16750e941dc506125c965.html" target="_blank">
                <img src="https://ssl2.sephorastatic.cn/wcsfrontend/brand/melvita/melvita_144X60.png" alt="蜜葳特" title="蜜葳特">
                <div class="module_tabGroupList_hover">
                    <div class="module_tabGroupList_banner">点击查看</div>
                </div>
            </a>
        </li>
        <li>
            <a class="module_tabGroupList_link" href="https://re.jd.com/search?keyword=%e7%8e%ab%e7%8f%82%e8%8f%b2&keywordid=337078956413&re_dcp=202m0QjIIg==&traffic_source=1004&enc=utf8&cu=true&utm_source=baidu-search&utm_medium=cpc&utm_campaign=t_262767352_baidusearch&utm_term=337078956413_0_4ab203e3d5044aa08441d4fa54c0d6c2" target="_blank">
                <img src="https://ssl3.sephorastatic.cn/wcsfrontend/brand/makeupforever/makeupforever_144X60.png" alt="玫珂菲" title="玫珂菲">
                <div class="module_tabGroupList_hover">
                    <div class="module_tabGroupList_banner">点击查看</div>
                </div>
            </a>
        </li>
        <li>
            <a class="module_tabGroupList_link" href="https://www.shiseido.com.cn/offerlmxq202307.html" target="_blank">
                <img src="https://ssl1.sephorastatic.cn/wcsfrontend/brand/shiseido/shiseidoV2_144X60.png" alt="资生堂" title="资生堂">
                <div class="module_tabGroupList_hover">
                    <div class="module_tabGroupList_banner">点击查看</div>
                </div>
            </a>
        </li>
        <li>
            <a class="module_tabGroupList_link" href="https://re.jd.com/search?keyword=%e5%a8%87%e9%9f%b5%e8%af%97&keywordid=337078970040&re_dcp=202m0QjIIg==&traffic_source=1004&enc=utf8&cu=true&utm_source=baidu-search&utm_medium=cpc&utm_campaign=t_262767352_baidusearch&utm_term=337078970040_0_5a1d93315c9646d5b7ed66990eef0e11" target="_blank">
                <img src="https://ssl4.sephorastatic.cn/wcsfrontend/brand/clarins/clarins_144X60.png" alt="娇韵诗" title="娇韵诗">
                <div class="module_tabGroupList_hover">
                    <div class="module_tabGroupList_banner">点击查看</div>
                </div>
            </a>
        </li>
        <li>
            <a class="module_tabGroupList_link" href="https://re.jd.com/search?keyword=%E5%87%AF%E4%BC%97%E8%B5%AB%E5%AE%B9&enc=utf-8" target="_blank">
                <img src="https://ssl3.sephorastatic.cn/wcsfrontend/brand/karinherzog/karinherzog_144X60.png" alt="凯伦赫容" title="凯众赫容">
                <div class="module_tabGroupList_hover">
                    <div class="module_tabGroupList_banner">点击查看</div>
                </div>
            </a>
        </li>
        <li>
            <a class="module_tabGroupList_link" href="https://re.jd.com/search?keyword=%E5%8F%A4%E6%9C%AA%E7%95%8C&enc=utf-8" target="_blank">
                <img src="https://ssl4.sephorastatic.cn/wcsfrontend/brand/courreges/courreges_144X60.png" alt="古未界" title="古未界">
                <div class="module_tabGroupList_hover">
                    <div class="module_tabGroupList_banner">点击查看</div>
                </div>
            </a>
        </li>
        <li>
            <a class="module_tabGroupList_link" href="https://re.jd.com/search?keyword=%E8%BF%AA%E5%A5%A5&enc=utf-8" target="_blank">
                <img src="https://ssl4.sephorastatic.cn/wcsfrontend/brand/dior/diorV3_144X60.png" alt="迪奥" title="迪奥">
                <div class="module_tabGroupList_hover">
                    <div class="module_tabGroupList_banner">点击查看</div>
                </div>
            </a>
        </li>
        <li>
            <a class="module_tabGroupList_link" href="https://re.jd.com/search?keyword=%E5%9C%A3%E7%BD%97%E5%85%B0%E7%BE%8E%E5%A6%86&enc=utf-8" target="_blank">
                <img src="https://ssl2.sephorastatic.cn/wcsfrontend/brand/ysl/ysl_144X60.png" alt="圣罗兰美妆" title="圣罗兰美妆">
                <div class="module_tabGroupList_hover">
                    <div class="module_tabGroupList_banner">点击查看</div>
                </div>
            </a>
        </li>
        <li>
            <a class="module_tabGroupList_link" href="https://re.jd.com/search?keyword=%E6%AC%A7%E8%8E%B1%E9%9B%85PRO&enc=utf-8" target="_blank">
                <img src="https://ssl3.sephorastatic.cn/wcsfrontend/brand/loralprofessionnel/loralprofessionnel_144X60.png" alt="欧莱雅PRO" title="欧莱雅PRO">
                <div class="module_tabGroupList_hover">
                    <div class="module_tabGroupList_banner">点击查看</div>
                </div>
            </a>
        </li>
        <li>
            <a class="module_tabGroupList_link" href="https://www.ralphlauren.cn/" target="_blank">
                <img src="https://ssl3.sephorastatic.cn/wcsfrontend/brand/ralphlauren/ralphlauren_144X60.png" alt="拉夫劳伦" title="拉夫劳伦">
                <div class="module_tabGroupList_hover">
                    <div class="module_tabGroupList_banner">点击查看</div>
                </div>
            </a>
        </li>
    </ul>
            </div>
            <div>

            </div>
        </div>
        <div class="auto-style36">
    <ul class="row">
        <li class="item">
            <img src="images/雅.jpg" />
            <p>商品名称：雅诗兰黛  智妍紧塑精华乳霜</p>
            <p>商品价格：910</p>
            <p>销售量：9999</p>
        </li>
        <li class="item">
            <img src="images/海蓝之谜.jpg" />
            <p>商品名称：LA MER 海蓝之谜   浓缩密集修护眼霜</p>
            <p>商品价格：1322.55</p>
            <p>销售量：9999</p>
        </li>
        <li class="item">
            <img src="images/skii.jpg" class="auto-style35" />
            <p>商品名称:SK-II面膜</p>
            <p>商品价格：810</p>
            <p>销售量：9999</p>
        </li>
    </ul>
    <ul class="row">
        <li class="item">
            <img src="images/diao.jpg" class="auto-style34" />
            <p>商品名称：迪奥粉底液</p>
            <p>商品价格：650</p>
            <p>销售量：9999</p>
        </li>
        <li class="item">
            <img src="images/ji.jpg" />
            <p>商品名称：纪梵希美妆  明星四宫格散粉 </p>
            <p>商品价格：521.82</p>
            <p>销售量：9999</p>
        </li>
        <li class="item">
            <img src="images/ke.jpg" />
            <p>商品名称：科颜氏  高保湿霜 </p>
            <p>商品价格：1700.43</p>
            <p>销售量：9999</p>
        </li>
    </ul>
    <ul class="row">
        <li class="item">
            <img src="images/bi.jpg" />
            <p>商品名称：倩碧 纤长魔力睫毛膏三支装   </p>
            <p>商品价格：571.3</p>
            <p>销售量：9999</p>
        </li>
        <li class="item">
            <img src="images/zu1.jpg" />
            <p>商品名称：祖玛珑  英国梨与小苍兰</p>
            <p>商品价格：1259.98</p>
            <p>销售量：9999</p>
        </li>
        <li class="item">
            <img src="images/zu2.jpg" />
            <p>商品名称：祖玛珑 鼠尾草与海盐香水</p>
            <p>商品价格：1007.66</p>
            <p>销售量：9999</p>
        </li>
    </ul>
</div>


    </form>
</body>
</html>
