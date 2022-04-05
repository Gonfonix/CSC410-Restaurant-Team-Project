<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPage.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.MenuPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="Style.css" />
    <title>Menu Page</title>
</head>
<body>
     <nav>
        <div class="wrapper">
            <ul>
                <li>
                    <a href="Default.html">
                        <image style="height: 100px"; src="Image/wording on logo.jpg"></image>
                    </a>
                </li>
                <li>
                    <a href="MenuPage.aspx">Menu</a>
                </li>
                <li>
                    <a href="LoginPage.aspx">Login</a>
                </li>
                <li>
                    <a href="Restaurant.aspx">Our Values</a>
                </li>
                <li>
                    <a href="Resveration.aspx">Make a Resveration</a>
                </li>
                <li>
                    <a href="Staff.aspx">Our Team</a>
                </li>
            </ul>
        </div>
    </nav>
     <div class="wrapper">
    <h2>Cindric's Taco Palace - Menu</h2>
     <div class="wrapper">
    <form id="form1" runat="server">
        
        <asp:GridView ID="gvMenu" runat="server" DataSourceID="sdsMenu" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                <asp:BoundField DataField="ItemDescription" HeaderText="ItemDescription" SortExpression="ItemDescription" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="sdsMenu" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantConnectionString %>" SelectCommand="SELECT [ItemName], [ItemDescription] FROM [MenuItem] ORDER BY [ItemName]"></asp:SqlDataSource>

    </form>
         </div>
</body>
</html>
