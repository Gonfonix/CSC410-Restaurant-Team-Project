<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Cindric's Taco Palace - Login</title>
        <link rel="stylesheet" href="Style.css" />
    </head>

    <body>
        <nav>
            <ul>
                <li>
                    <a href="MenuPage.aspx">Menu</a>
                </li>
                <li>
                    <a href="OurValues.aspx">Our Values</a>
                </li>
                <li>
                    <a href="Staff.aspx">Our Team</a>
                </li>
                <li>
                    <a href="Resveration.aspx">Make a Resveration</a>
                </li>
            </ul>
            
            <div>
                <a href="Default.html">
                    <image class="navImg" style="height: 100px" ; src="Image/RestaurantLogo.png"></image>
                </a>
            </div>
        </nav>
        
        <br />
        <div class="loginWrapper">
        <br />
        <h2 class="centeredText">Please Login to Make a Reservation: </h2>
        <br />

        <form id="form1" runat="server">
            <asp:SqlDataSource ID="sdsLogin" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantConnectionString %>" SelectCommand="SELECT * FROM [Customer], [Employee]"></asp:SqlDataSource>
            <table>
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
            <a href="CreateLoginPage.aspx">Create a new login</a>
            <br />
            <br />
            <asp:Label ID="lblStatus" runat="server" EnableViewState="False" Font-Bold="True" ForeColor="Red"></asp:Label>

        </form>
        </div>
    </body>
</html>
