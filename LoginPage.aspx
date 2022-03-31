<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
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
                    <asp:TextBox ID="txtUserID" runat="server" Width="100px"></asp:TextBox>
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

        <asp:Label ID="lblStatus" runat="server" Text="" EnableViewState="false"></asp:Label>
        <br />
        <a herf="Default.html">Back to Menu</a>

    </form>

</body>
</html>
