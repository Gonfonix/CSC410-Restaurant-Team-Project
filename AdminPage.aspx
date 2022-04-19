<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.AdminPage" %>

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
                    <a href="OurValues.aspx">Our Values</a>
                </li>
                <li>
                    <a href="Resveration.aspx">Make a Resveration</a>
                </li>
                <li>
                    <a href="MenuPage.aspx">Menu</a>
                </li>
                <div class="logo">
                    <a href="Default.html">
                         <image class="navImg" style="height: 100px" ; src="Image/RestaurantLogo.png"></image>
                    </a>
                </div>
            </ul>
        </div>
    </nav>


    <div class="wrapper">
        <div class="quotes">
            <h2>The admin can change stuff on this page</h2>
            <form id="form1" runat="server">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ItemID" DataSourceID="sdsAdmin" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="ItemID" HeaderText="ItemID" ReadOnly="True" SortExpression="ItemID" />
                        <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                        <asp:BoundField DataField="ItemDescription" HeaderText="ItemDescription" SortExpression="ItemDescription" />
                        <asp:BoundField DataField="ItemPrice" HeaderText="ItemPrice" SortExpression="ItemPrice" />
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <asp:TextBox ID="txtItemID" runat="server"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" Text="itemID"></asp:Label>
                <br />
                <asp:TextBox ID="txtItemName" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="itemName"></asp:Label>
                <br />
                <asp:TextBox ID="txtItemDescription" runat="server"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="itemDescription"></asp:Label>
                <br />
                <asp:TextBox ID="txtItemPrice" runat="server"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" Text="itemPrice"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert MenuItem" />
                <br />
                <br />
            </form>
        </div>
    </div>
    <asp:SqlDataSource ID="sdsAdmin" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RestaurantConnectionString %>" DeleteCommand="DELETE FROM [MenuItem] WHERE [ItemID] = @original_ItemID AND [ItemName] = @original_ItemName AND [ItemDescription] = @original_ItemDescription AND (([ItemPrice] = @original_ItemPrice) OR ([ItemPrice] IS NULL AND @original_ItemPrice IS NULL))" InsertCommand="INSERT INTO [MenuItem] ([ItemID], [ItemName], [ItemDescription], [ItemPrice]) VALUES (@ItemID, @ItemName, @ItemDescription, @ItemPrice)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [MenuItem]" UpdateCommand="UPDATE [MenuItem] SET [ItemName] = @ItemName, [ItemDescription] = @ItemDescription, [ItemPrice] = @ItemPrice WHERE [ItemID] = @original_ItemID AND [ItemName] = @original_ItemName AND [ItemDescription] = @original_ItemDescription AND (([ItemPrice] = @original_ItemPrice) OR ([ItemPrice] IS NULL AND @original_ItemPrice IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ItemID" Type="Int32" />
            <asp:Parameter Name="original_ItemName" Type="String" />
            <asp:Parameter Name="original_ItemDescription" Type="String" />
            <asp:Parameter Name="original_ItemPrice" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ItemID" Type="Int32" />
            <asp:Parameter Name="ItemName" Type="String" />
            <asp:Parameter Name="ItemDescription" Type="String" />
            <asp:Parameter Name="ItemPrice" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ItemName" Type="String" />
            <asp:Parameter Name="ItemDescription" Type="String" />
            <asp:Parameter Name="ItemPrice" Type="Decimal" />
            <asp:Parameter Name="original_ItemID" Type="Int32" />
            <asp:Parameter Name="original_ItemName" Type="String" />
            <asp:Parameter Name="original_ItemDescription" Type="String" />
            <asp:Parameter Name="original_ItemPrice" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblStatus" runat="server" EnableViewState="False"></asp:Label>
</body>
</html>
