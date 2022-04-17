<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateLoginPage.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.CreateLoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Cindric's Taco Palace - Create Login</title>
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
        <br />

        <div class="loginWrapper">

        <br />
        <br />
        <h1 class="centeredText">Please Create a Login: </h1>
        <br />
            
            <form id="form1" runat="server">
       
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" Width="250px"></asp:TextBox>
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
                        <asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" Width="250px"></asp:TextBox>
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
                        <asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" Width="250px"></asp:TextBox>
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
                        <asp:TextBox ID="txtPassword" runat="server" Width="250px"></asp:TextBox>
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
                        <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
                    </td>
                </tr>
            </table>

            <div class="centerLogin-label-btn">
                <asp:Label ID="lblStatus" runat="server" EnableViewState="False" ForeColor="Red" Font-Bold="True"></asp:Label>
                <br />
                <asp:Button ID="btnAddUser" runat="server" Text="Create User" OnClick="btnAddUser_Click" Height="32px" Width="110px" />
            </div>

            <br />
                <p class="centeredTextNoHover">
                <a href="LoginPage.aspx">Back to Login Page</a>
                </p>
            
            <br />
            <br />
            
            </form>

        </div> <%--End Create Login Wrapper --%>
    </body>
</html>
