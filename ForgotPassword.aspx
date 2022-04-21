<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 722px">
    <form id="form1" runat="server">
        <div>
            Forgot Password?<br />
            <br />
            <asp:TextBox ID="txtUsername" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            <br />
            <asp:TextBox ID="txtPassword" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text="New Password"></asp:Label>
        </div>
        <asp:Label ID="lblStatus" runat="server" EnableViewState="False" Font-Bold="True" ForeColor="Red"></asp:Label>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <asp:SqlDataSource ID="sdsForgotPassword" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantConnectionString %>" SelectCommand="SELECT * FROM [Customer], [Employee]"></asp:SqlDataSource>
    </form>
</body>
</html>
