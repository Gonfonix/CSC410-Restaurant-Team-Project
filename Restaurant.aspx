<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Restaurant.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.Restaurant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Cindri's Taco Palace</title>
   <link rel="stylesheet" href="Style.css" />
    <link rel="stylesheet" href="StyleSheetRestaurnt.css" />
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
            </ul>
            
            <div class="logo">
                <a href="Default.html">
                    <image style="height: 100px" ; src="Image/RestaurantLogo.png"></image>
                </a>
            </div>

        </div>
    </nav>

    <div class="mainPageTxt">
        <h2>We provide the freshest ingredients, bring joy and laughter to our customers,</h2>
        <h2>while also providing educational entertainment. </h2>
        <table>
            <tr>
                <td>
                    <div class="view view-first">

                        <div class="mask">
                            <h2>Happy Customer</h2>
                            <p>As part of our mission, customer happiness comes first. Our staff has been trained to unleach some mightly jokes if you are feeling down. Just ask!</p>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="view view2 view-first">
                        <div class="mask">
                            <h2>The Best Beef</h2>
                            <p>We've heard a rummer at Cindric's Taco Palace that happy cows taste the best. So, in response, our employees spend at least one hour a day at the local cow fields playing with the cows!</p>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="view view3 view-first">
                        <div class="mask">
                            <h2>Entertainment with Java</h2>
                            <p>
                                Albert Einstein once said, “The perfect place is where you can learn java and eat a Taco at the same time” So, our response is to give free lessons to our customers. Just ask, and we will provide. 
                            </p>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="view view4 view-first">
                        <div class="mask">
                            <h2>A place of joy</h2>
                            <p>We hope to see you again here shortly. Please tell your friends about us. </p>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
   </div>
</body>
</html>

