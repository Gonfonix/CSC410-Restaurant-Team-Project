<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
     <link rel="stylesheet" href="Style.css" />

</head>
<body>
    <nav>
        <div class="wrapper">
        <ul>
            <li><a href="LoginPage.aspx">Login</a></li>
            <li><a href="Restaurant.aspx">Our Values</a></li>
            <li><a href="Resveration.aspx">Make a resveration</a></li>
            <li><a href="Staff.aspx">Staff</a></li>
        </ul>
            </div>
    </nav>
    <div class="wrapper">
    <h3>Cindric's Taco Palace</h3>
    <form id="form1" runat="server">
       <table>
            <tr>
                <td colspan="2">
                    Please login for the Main Menu
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblUserName" runat="server" Text="User name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                </td>
            </tr>
        </table>
        <br />

        <asp:SqlDataSource ID="sdsLogin" runat="server"
            ConnectionString="<%$ ConnectionStrings:RestaurantConnectionString %>"
            SelectCommand="SELECT * FROM [dbo.Customer] WHERE (([Username] = @Username) AND ([Password] = @Password))">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtUserName" Name="Username" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtPassword" Name="Password" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:Label ID="lblStatus" runat="server" Text="" EnableViewState="false"></asp:Label>
        <br />
        
        <a href="Default.html">Back to main page</a>  
    </form>
    </div>
</body>
</html>
