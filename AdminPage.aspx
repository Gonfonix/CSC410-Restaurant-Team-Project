<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cindric's Taco Palace - Admin Page</title>
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
                <li>
                    <a href="LoginPage.aspx">Login</a>
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
        <h1 class="centeredText">Welcome Cindric</h1>
        <br />
        <br />
        
        <form id="form1" runat="server">
            
            <div class="adminGrid">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ItemID" DataSourceID="sdsAdmin" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Names="Arial">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ButtonType="Button" DeleteText=" Delete " EditText="  Edit  " ShowCancelButton="False" >
                        <ControlStyle BackColor="White" Font-Bold="True" Font-Names="Arial" ForeColor="Black" />
                        </asp:CommandField>
                        <asp:BoundField DataField="ItemID" HeaderText="ID" ReadOnly="True" SortExpression="ItemID" />
                        <asp:BoundField DataField="ItemName" HeaderText="Name" SortExpression="ItemName" />
                        <asp:BoundField DataField="ItemDescription" HeaderText="Description" SortExpression="ItemDescription" />
                        <asp:BoundField DataField="ItemPrice" HeaderText="Price" SortExpression="ItemPrice" />
                        <asp:CommandField ButtonType="Button" DeleteText=" Delete " ShowDeleteButton="True">
                        <ControlStyle BackColor="White" Font-Bold="True" Font-Names="Arial" ForeColor="Black" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#CCCCFF" />
                    <HeaderStyle BackColor="#FFCC00" Font-Italic="True" ForeColor="Black" />
                </asp:GridView>
            </div>
                <br />
                <br />
        
            <div class="loginWrapper">
                <br />

                <h2 class="centeredTextNoHover">Enter a New Menu Item?</h2>
                <br />

                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lblItemID" runat="server" Text="ID: "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtItemID" runat="server" Height="18px" Width="150px"></asp:TextBox>
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
                            <asp:Label ID="lblItemName" runat="server" Text="Name: "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtItemName" runat="server" Height="18px" Width="150px"></asp:TextBox>
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
                            <asp:Label ID="lblItemDescription" runat="server" Text="Description: "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtItemDescription" runat="server" Height="18px" Width="300px"></asp:TextBox>
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
                            <asp:Label ID="lblItemPrice" runat="server" Text="Price: "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtItemPrice" runat="server" Height="18px" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                </table>

                <div class="centerLogin-label-btn">
                    <asp:Label ID="lblStatus" runat="server" EnableViewState="False" Font-Bold="True" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert Menu Item" Width="200px" BackColor="White" Font-Names="Arial" ForeColor="Black" Height="32px" />
                </div>
                <br />
            </div>
            <br />
            <br />
        </form>

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
    </body>
</html>
