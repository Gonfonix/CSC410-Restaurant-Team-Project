<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateLoginPage.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.CreateLoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

    <form id="form1" runat="server">
        
        <br />
        <h2>Please create a login:</h2>
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>

        <asp:Label ID="lblStatus" runat="server" EnableViewState="False" ForeColor="Red" Font-Bold="True"></asp:Label>

    </form>
</body>
</html>
