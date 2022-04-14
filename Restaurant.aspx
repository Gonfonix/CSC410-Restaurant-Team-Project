<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Restaurant.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.Restaurant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Cindri's Taco Palace</title>
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
                        <image style="height: 100px" ; src="Image/RestaurantLogo.png"></image>
                    </a>
                </div>
            </ul>
        </div>
    </nav>

    <div class="wrapper">
    <div class="quotes">
        <form id="form1" runat="server">
            <div>
                <br />
                <h2>Mission Statment: </h2>
                <br />
                <table>
                    <tr>
                        <td>
                            <h4>At Cindric’s Taco palace our mission is to provide the freshest ingredients, bring joy and laughter to our customers, while also providing educational entertainment. </h4>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h5>somthing can go here</h5>
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </div>
    </div>
</body>
</html>
