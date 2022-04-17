<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OurValues.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.Restaurant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Cindric's Taco Palace - Values</title>
        <link rel="stylesheet" href="Style.css" />
        <link rel="stylesheet" href="StyleSheetRestaurnt.css" />
    </head>
    
    <body>
        <nav>
            <ul>
                <li>
                    <a href="MenuPage.aspx">Menu</a>
                </li>
                <li>
                    <a href="Staff.aspx">Our Team</a>
                </li>
                <li>
                    <a href="Resveration.aspx">Make a Resveration</a>
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
        <h2 class="centeredText">At Cindric's Taco Palace, our goal is to provide the greatest customer experience. <br /><br /></h2>
        <h3 class="centeredTextNoHover">(Scroll over the images to view our values.)</h3>
        
        <table class="centeredTable">
            <tr>
                <td>
                    <div class="view view-first">

                        <div class="mask">
                            <h2>Customer Happiness</h2>
                            <p>As part of our mission, customer happiness comes first above all else. Our staff has been trained to tell funny jokes if you are feeling down. Just ask a server at your next visit!</p>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="view view2 view-first">
                        <div class="mask">
                            <h2>The Best Beef</h2>
                            <p>At Cindric's Taco Palace we beleive that happy cows mean happy customers. In response to this, our employees spend at least one hour a day at the local cow fields playing with the cows!</p>
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
                                As Albert Einstein once said, “The perfect restaurant is where you can learn java and eat a jucy taco at the same time.” We strive to give our customers quality entertainment, so we provide free lessons in the java computer language for any taco you order! 
                            </p>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="view view4 view-first">
                        <div class="mask">
                            <h2>We hope to see you soon!</h2>
                            <p>As stated, we strive to provide the greatest experience possible for our customers. We hope this means you will come back to our fine establishment in the future. Please tell your familiy and friends about us, and feel free to give us a nice 5 star review! </p>
                        </div>
                    </div>
                </td>
            </tr>
        </table>

    </body>
</html>

