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
                        <li>
                            <a href="LoginPage.aspx">Login</a>
                        </li>
                        <li>
                            <a href="Staff.aspx">Our Team</a>
                        </li>
                        <li>
                            <a href="Restaurant.aspx">Our Values</a>
                        </li>
                        <li>
                            <a href="Resveration.aspx">Make a Resveration</a>
                        </li>
                        <li>
                            <a href="MenuPage.aspx">Menu</a>
                        </li>
                        
                        <div class="logo">
                            <a href="Default.html">
                            <image style="height: 100px" ; src="Image/wording on logo.jpg"></image>
                        </a>
                        </div>
                    </ul>
                </div>
            </nav>
    <div class="wrapper">
    <br />
    <h2>Cindric's Taco Palace - Login</h2>
    <br />
    <form id="form1" runat="server">
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
        <asp:Label ID="lblStatus" runat="server" EnableViewState="False" Font-Bold="True" ForeColor="Red"></asp:Label>

    </form>
    </div>
</body>
</html>
