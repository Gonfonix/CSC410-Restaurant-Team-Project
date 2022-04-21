<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPage.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.MenuPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <link rel="stylesheet" href="Style.css" />
        <title>Cindric's Taco Palace - Menu</title>
    </head>

    <body>
        <nav>
            <ul>
                <li>
                    <a href="OurValues.aspx">Our Values</a>
                </li>
                <li>
                    <a href="Staff.aspx">Our Team</a>
                </li>
                <li>
                    <a href="Resveration.aspx">Make a Reservation</a>
                </li>
                <li>
                    <a href="LoginPage.aspx">Login</a>
                </li>
            </ul>
            <div>
                <a href="Default.html">
                    <image class="navImg" style="height: 100px" ; src="Image/RestaurantLogo.png"></image>
                </a>
            </div>
        </nav>
        <br />
        <br />

        <h1 class="centeredText">Cindric's Taco Palace - Menu</h1>

        <br />
        <br />
        <div class="grid">
            <form id="form1" runat="server">
                <asp:GridView ID="gvMenu" runat="server" DataSourceID="sdsMenu" AutoGenerateColumns="False" AllowSorting="True" BackColor="White" BorderColor="Black" BorderWidth="2px" ForeColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Large">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ItemName" HeaderText="Name" SortExpression="ItemName" />
                        <asp:BoundField DataField="ItemDescription" HeaderText="Description" SortExpression="ItemDescription" />
                        <asp:BoundField DataField="ItemPrice" HeaderText="Price" SortExpression="ItemPrice" DataFormatString="{0:c}"></asp:BoundField>
                    </Columns>
                    <HeaderStyle BackColor="#FFCC00" Font-Bold="False" ForeColor="Black" HorizontalAlign="Center" Font-Italic="True" />
                    <RowStyle HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="sdsMenu" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantConnectionString %>" 
                    SelectCommand="SELECT [ItemName], [ItemDescription], [ItemPrice] FROM [MenuItem] ORDER BY [ItemName], [ItemPrice]"></asp:SqlDataSource>
            </form>
        </div>
    </body>
</html>
