<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPage.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.MenuPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <link rel="stylesheet" href="Style.css" />
        <title>Cindric's Taco Palace - Menu</title>
    </head>

    <body>
        <nav>
            <ul>
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

        <h1 class="centeredText">Cindric's Taco Palace - Menu</h1>

        <br />
        <br />
        <form id="form2" runat="server">
            <div class="grid">
                <asp:GridView ID="gvMenu" runat="server" DataSourceID="sdsMenu" AutoGenerateColumns="False" AllowSorting="True" BackColor="White" BorderColor="Black" BorderWidth="2px" ForeColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Large">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ItemName" HeaderText="Name" SortExpression="ItemName" />
                        <asp:BoundField DataField="ItemDescription" HeaderText="Description" SortExpression="ItemDescription" />
                        <asp:BoundField DataField="ItemPrice" HeaderText="Price" SortExpression="ItemPrice" DataFormatString="{0:c}"></asp:BoundField>
                    </Columns>
                    <HeaderStyle BackColor="#FFCC00" Font-Bold="False" ForeColor="Black" HorizontalAlign="Center" Font-Italic="True" />
                    <RowStyle HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="sdsMenu" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantConnectionString %>" 
                    SelectCommand="SELECT [ItemName], [ItemDescription], [ItemPrice] FROM [MenuItem] ORDER BY [ItemName], [ItemPrice]"></asp:SqlDataSource>            
            </div>
            <br />
            <br />

            <div class="restaurantInfo">
                <asp:ListView ID="lvInfo" runat="server" DataSourceID="sdsInfo" DataKeyNames="Address">
                    <AlternatingItemTemplate>
                        <span style="">Address:
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        <br />
                        PhoneNumber:
                        <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
                        <br />
                        OpeningTime:
                        <asp:Label ID="OpeningTimeLabel" runat="server" Text='<%# Eval("OpeningTime") %>' />
                        <br />
                        ClosingTime:
                        <asp:Label ID="ClosingTimeLabel" runat="server" Text='<%# Eval("ClosingTime") %>' />
                        <br />
<br /></span>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <span style="">Address:
                        <asp:Label ID="AddressLabel1" runat="server" Text='<%# Eval("Address") %>' />
                        <br />
                        PhoneNumber:
                        <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                        <br />
                        OpeningTime:
                        <asp:TextBox ID="OpeningTimeTextBox" runat="server" Text='<%# Bind("OpeningTime") %>' />
                        <br />
                        ClosingTime:
                        <asp:TextBox ID="ClosingTimeTextBox" runat="server" Text='<%# Bind("ClosingTime") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        <br /><br /></span>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <span>No data was returned.</span>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <span style="">Address:
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        <br />PhoneNumber:
                        <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                        <br />OpeningTime:
                        <asp:TextBox ID="OpeningTimeTextBox" runat="server" Text='<%# Bind("OpeningTime") %>' />
                        <br />ClosingTime:
                        <asp:TextBox ID="ClosingTimeTextBox" runat="server" Text='<%# Bind("ClosingTime") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        <br /><br /></span>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <span style="">Address:
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        <br />
                        PhoneNumber:
                        <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
                        <br />
                        OpeningTime:
                        <asp:Label ID="OpeningTimeLabel" runat="server" Text='<%# Eval("OpeningTime") %>' />
                        <br />
                        ClosingTime:
                        <asp:Label ID="ClosingTimeLabel" runat="server" Text='<%# Eval("ClosingTime") %>' />
                        <br />
<br /></span>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <span style="">Address:
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        <br />
                        PhoneNumber:
                        <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
                        <br />
                        OpeningTime:
                        <asp:Label ID="OpeningTimeLabel" runat="server" Text='<%# Eval("OpeningTime") %>' />
                        <br />
                        ClosingTime:
                        <asp:Label ID="ClosingTimeLabel" runat="server" Text='<%# Eval("ClosingTime") %>' />
                        <br />
<br /></span>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="sdsInfo" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantConnectionString %>" SelectCommand="SELECT [Address], [PhoneNumber], [OpeningTime], [ClosingTime] FROM [RestaurantInfo]"></asp:SqlDataSource>
            </div>
        </form>
    </body>
</html>
