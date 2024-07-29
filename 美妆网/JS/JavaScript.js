<script>
    function redirectToShopping() {
        var isLoggedIn = '<%=Session["isLoggedIn"] %>';
    if (isLoggedIn === 'True') {
        // 用户已登录，跳转到购物车页面
        window.location.href = 'shopping cart.aspx';
        } else {
        // 用户未登录，跳转到登录页面或执行其他处理
        window.location.href = 'AdminLogin.aspx';
        }
    }
</script>