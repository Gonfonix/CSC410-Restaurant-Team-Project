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
        <div class="welcome-txt">
            <br />
            <h2>Please create a login:</h2>
            <br />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>&nbsp
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label>&nbsp
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label>&nbsp
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>&nbsp
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>&nbsp
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnAddUser" runat="server" Text="Create User" OnClick="btnAddUser_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="lblStatus" runat="server" EnableViewState="False" ForeColor="Red" Font-Bold="True"></asp:Label>
            <a href="LoginPage.aspx">After Creating an Account Click Back Here</a>
        </div>
    </form>
</body>
</html>
