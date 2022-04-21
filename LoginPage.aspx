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
                    <a href="Resveration.aspx">Make a Reservation</a>
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

        <div class="loginWrapper">
        
        <br />
        <br />
        <h1 class="centeredText">Please Login to Make a Reservation: </h1>
        <br />
        
            <form id="form1" runat="server">
            
            <asp:SqlDataSource ID="sdsLogin" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantConnectionString %>" SelectCommand="SELECT * FROM [Customer], [Employee]"></asp:SqlDataSource>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblUserName" runat="server" Text="User Name: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server" Width="150px" Height="18px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                    </td>
                    <td>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="150px" Height="18px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            
            <div class="centerLogin-label-btn">
                <asp:Label ID="lblStatus" runat="server" EnableViewState="False" Font-Bold="True" ForeColor="Red"></asp:Label>
                <br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Width="100px" BackColor="White" Font-Names="Arial" ForeColor="Black" Height="32px" />
            </div>
            
            <br />    
                <p class="centeredTextNoHover">
                <a href="CreateLoginPage.aspx">Create a new login</a>
                </p>
            <br />
            <br />

            </form>

        </div> <%--End Login Wrapper--%>
    </body>
</html>
