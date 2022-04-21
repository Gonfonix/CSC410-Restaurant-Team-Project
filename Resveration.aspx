<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resveration.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.Resveration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Make your Resveration</title>
        <link rel="stylesheet" href="Style.css" />
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
        
        <div>
            <form id="form1" runat="server">
            <br />
            <br />
            <table class="centeredTable">
                <tr>
                    <td>
                        <asp:Calendar ID="reservationCalendar" runat="server"></asp:Calendar>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlTime" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="rblChooseTable" runat="server">
                            <asp:ListItem Value="1">Reserve a Single Table.</asp:ListItem>
                            <asp:ListItem Value="2">Reserve the Whole Room.</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
            </table>
            
            </form>
        </div>

        <br />
        <br />
        <br />

        <div class="ReservationPageImg">
            <image style="height: 900px" ; src="Image/Room.jpg"></image>
        </div>
    </body>
</html>
