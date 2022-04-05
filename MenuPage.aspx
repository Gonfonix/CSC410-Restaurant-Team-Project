<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPage.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.MenuPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <h2>Cindric's Taco Palace - Menu</h2>

    <form id="form1" runat="server">
        
        <asp:GridView ID="gvMenu" runat="server" DataSourceID="sdsMenu" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                <asp:BoundField DataField="ItemDescription" HeaderText="ItemDescription" SortExpression="ItemDescription" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="sdsMenu" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantConnectionString %>" SelectCommand="SELECT [ItemName], [ItemDescription] FROM [MenuItem] ORDER BY [ItemName]"></asp:SqlDataSource>

    </form>
</body>
</html>
