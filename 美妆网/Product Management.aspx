<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product Management.aspx.cs" Inherits="美妆网.Product_Management" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>商品管理界面</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
    }
    .sidebar {
        width: 200px;
        background-color: #333;
        
        padding: 20px;
    }
    .content {
        flex: 1;
        padding: 20px;
    }
    h2 {
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        border: 1px solid #ccc;
        padding: 8px;
        text-align: center;
    }
    th {
        background-color: #f2f2f2;
    }
    .add-button, .update-button {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 10px;
    }
    form {
    margin-top: 20px;
}
    form.active {
        display: block;
    }
</style>
</head>
<body>
<div class="sidebar">
    <h3>商品管理</h3>
    <ul>
        <li><a href="#add-product"   class="add-link">添加新商品</a></li>
        <li><a href="#update-product" class="update-link">更新商品信息</a></li>
    </ul>
</div>
<div class="content">
    <h1>商品管理界面</h1>

    <div id="add-product" class="form-container">
        <h2>添加新商品</h2>
        <form class="update-form" runat="server">
            <label for="product-image">商品图片:</label>
            <input type="file" id="product-image" name="product-image"><br><br>
            <label for="product-name">商品名称:</label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br><br>
            <label for="product-price">商品价格:</label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br><br>
            <label for="product-description">商品描述:</label><br>
            <textarea id="product-description" name="product-description" rows="4" cols="50"></textarea><br>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加商品" />
            <br>
                    
    </div>

    <div id="update-product" class="form-container">
        <h2>更新商品信息</h2>
        
            <label for="search-product">搜索商品:</label>
            <input type="text" id="search-product" name="search-product"><br><br>
            <button class="update-button">搜索</button>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="商品名称" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" PageSize="5">
                <Columns>
                    <asp:CommandField ButtonType="Button" HeaderText="编辑" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="商品名称" HeaderText="商品名称" ReadOnly="True" SortExpression="商品名称"></asp:BoundField>
                    <asp:BoundField DataField="商品价格" HeaderText="商品价格" SortExpression="商品价格"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='Data Source=localhost;Initial Catalog=化妆品类目;Integrated Security=True;' ProviderName='<%$ ConnectionStrings:化妆品类目ConnectionString11.ProviderName %>' 
                SelectCommand="SELECT * FROM [beauty]" 
                ConflictDetection="CompareAllValues" 
                DeleteCommand="DELETE FROM [beauty] WHERE [商品名称] = @original_商品名称 AND (([商品价格] = @original_商品价格) OR ([商品价格] IS NULL AND @original_商品价格 IS NULL))" 
                InsertCommand="INSERT INTO [beauty] ([商品名称], [商品价格]) VALUES (@商品名称, @商品价格)" OldValuesParameterFormatString="original_{0}" 
                UpdateCommand="UPDATE [beauty] SET [商品价格] = @商品价格 WHERE [商品名称] = @original_商品名称 AND (([商品价格] = @original_商品价格) OR ([商品价格] IS NULL AND @original_商品价格 IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_商品名称" Type="String" />
                    <asp:Parameter Name="original_商品价格" Type="Double" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="商品名称" Type="String" />
                    <asp:Parameter Name="商品价格" Type="Double" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="商品价格" Type="Double" />
                    <asp:Parameter Name="original_商品名称" Type="String" />
                    <asp:Parameter Name="original_商品价格" Type="Double" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </form>
        
    </div>
</div>
<script>

    const addLink = document.querySelector('.add-link');
    const updateLink = document.querySelector('.update-link');
    const addForm = document.querySelector('.add-form');
    const updateForm = document.querySelector('.update-form');

    addLink.addEventListener('click', function () {
        addForm.classList.add('active');
        updateForm.classList.remove('active');
    });

    updateLink.addEventListener('click', function () {
        updateForm.classList.add('active');
        addForm.classList.remove('active');
    });
</script>
</body>
</html>