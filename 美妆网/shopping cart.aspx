<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shopping cart.aspx.cs" Inherits="我的购物车" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="shopping cart.css">
    <script src="./vue (1).js"></script>
    <!-- <script src="setFontSize.js"></script> -->
    <title>购物车</title>
    <style type="text/css">
        .auto-style1 {
            width: 101%;
            height: 101px;
            float: left;
            position: fixed;
            bottom: -5px;
            background-color: antiquewhite;
            left: -2px;
        }
        .auto-style2 {
            left: 0px;
            top: 23px;
            width: 100%;
            height: 1px;
        }
        .queren{
            cursor:pointer;

        }
    </style>
</head>
<body>
    <div id="app">
    <header class="auto-style2">
        <div class="h-left"><strong><</strong></div>
        <div class="h-right">…
	<ul>
        <li class="shouye">首页</li>
        <li>个人中心</li>
        <li>商品分类</li>
        <li>购物车</li>
    	</ul>
	</div>
        <div class="h-main">购物车</div>
    </header>
    
        <div class="one" v-for="(item,index) of productList">
            <input @change="item.select=!item.select":checked="item.select" type="checkbox" name="checkbox[]" >
            <div class="c-main">
                <img v-bind:src="item.image" alt="">
            </div>
            <div class="c-right">
                <div class="r-top">{{item.name}}</div>
                <div class="r-main">{{item.price|currency(2)}}</div>
                <div class="r-bottom">
                    <div v-on:click="remove(index)" class="shanchu">删除</div>
                    <div class="buttons">
                        <div v-on:click="item.count<=1?1:item.count-=1" class="jian">-</div>
                        <div v-on:click="item.count+=1" class="jia">+</div>
                        <div class="number">{{item.count}}</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="auto-style1">
            <div class="two">
                <input @change="selectProduct(isSelectAll)" type='checkbox' id="allCheck" :checked="isSelectAll">
                <div class="quanxuan">全选</div>
            </div>
            <div class="total-price">总价:<span>{{getTotal.totalPrice|currency(2)}}</span></div>
            <div class="queren">确认下单</div>
        </div>
    </div>
    
    <script>
        var myVue = new Vue({
            el: "#app",
            data: {
                classObject: false,
                productList: [
                    {
                        _id: 10001,
                        image: "/images/雅.jpg",
                        name: " 雅诗兰黛  智妍紧塑精华乳霜 ",
                        price: 910,
                        count: 0,
                    },
                    {
                        _id: 10001,
                        image: "/images/diao.jpg",
                        name: "迪奥持妆粉底液",
                        price: 650,
                        count: 0,
                    },
                    {
                        _id: 10001,
                        image: "/images/bi.jpg",
                        name: "倩碧 纤长魔力睫毛膏三支装",
                        price: 571.3,
                        count: 0,
                    },
                    {
                        _id: 10001,
                        image: "/images/海.jpg",
                        name: "LA MER 海蓝之谜 浓缩密集修护眼霜",
                        price: 1322.55,
                        count: 0,
                    },
                    {
                        _id: 10001,
                        image: "/images/zu1.jpg",
                        name: "祖玛珑 英国梨与小苍兰",
                        price: 1259.98,
                        count: 0,
                    },
                    {
                        _id: 10001,
                        image: "/images/s2.jpg",
                        name: "SK-II面膜",
                        price: 810,
                        count: 0,
                    },
                    {
                        _id: 10001,
                        image: "/images/ke.jpg",
                        name: "科颜氏 高保湿霜",
                        price: 1700.43,
                        count: 0,
                    },
                    {
                        _id: 10001,
                        image: "/images/zu2.jpg",
                        name: "祖玛珑 鼠尾草与海盐香水",
                        price: 1007.66,
                        count: 0,
                    },
                ]
            },
            filters: {
                currency: function (value, n) {
                    if (!value) {
                        return "￥0.00"
                    }
                    return "￥" + value.toFixed(n || 4);
                }
            },

            computed: {
                isSelectAll: function () {
                    //如果productList中每一条数据的select都为true,就返回true,否则返回false
                    return this.productList.every(function (val) { return val.select })
                },
                // 获取总价和产品总数
                getTotal: function () {
                    //获取list中select为true的数据，用filter方法来返回一个满足指定条件的新数组
                    // filter方法传入一个回调函数，这个回调函数会携带一个参数，参数为当前迭代的项（我们叫它val）。
                    var_proList = this.productList.filter(function (val) { return val.select });
                    totalPrice = 0;
                    for (var i = 0; i < var_proList.length; i++) {
                        // 总价累加
                        totalPrice += var_proList[i].count * var_proList[i].price;
                    }
                    // 选择产品的件数就是_proList.lenth，总价就是totalPrice
                    return { totalNum: var_proList.length, totalPrice: totalPrice }
                }
            },
            mounted: function () {
                var_this = this;
                this.productList.map(function (item) {    //map:'键值对'
                    var_this.$set(item, 'select', true)      //往item添加select属性，默认为true
                })
            },
            methods: {

                selectProduct: function (_isSelect) {
                    //遍历productList,全部取反
                    for (var i = 0; i < this.productList.length; i++) {
                        this.productList[i].select = !_isSelect
                    }
                },
                remove: function (index) {//移除的方法
                    if (confirm('你确定要删除吗?')) {
                        this.productList.splice(index, 1);
                    }
                }
            }
        })
    </script>
</body>
</html>