<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.Staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <link rel="stylesheet" href="Style.css" />
        <title>Cindric's Taco Palace - Staff</title>
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
        <h1 class="centeredText">About Our Staff and Their Accomplishments: </h1>
        <br />
        <h3 class="centeredTextNoHover">At Cindric's Taco palace, we care too much about our customers to
            give them anything less than perfect. We have partnered with Tony Soprano, a
            significant influencer who will oversee our employees' behavior and teach them the trait of respect
            and giving to our customers. We value employees and customer relationships, and we believe excellent
            customer service goes beyond inside the walls of Cindric Taco palace. </h3>
        <br />
        <br />

        <table>
            <tr>
                <td>
                    <image class="StaffImgAJ" src="Image/ChefAJ.jpg"></image>
                </td>
                <td>
                    <h2 class="staffText"><u>AJ Hammond: Chef de cuisine</u></h2>
                    <br />
                    <p class="staffQuotes">"I spent my whole life studying and preparing myself to be an ethical
                    hacker. But then I took a bite of the scrumptious netbeans taco. And from
                    that moment on, I knew I wanted to work at Cindric’s Taco Palace."<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp - AJ Hammond</p>
                </td>
            </tr>
            <tr>
                 <td>
                    <image class="StaffImgKS" src="Image/kylechef.jpg"></image>
                 </td>
                 <td>
                    <h2 class="staffText"><u>Kyle Spencer: Sous Chef</u></h2>
                    <br />
                    <p class="staffQuotes">"I want to be... where the tacos are"<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp - Kyle Spencer</p>
                 </td>
            </tr>
            <tr>
                 <td>
                    <image class="StaffImgN"></image>
                  </td>
                  <td>
                     <h2 class="staffText"><u>Nathon Williams: Lead Bartender</u></h2>
                     <br />
                     <p class="staffQuotes">"After consuming many amazing and jucy tacos from Cindric's Taco Palace, I have inherited the ability to grow a mustache in an instant.
                     Take your cursor over my picture to see!"<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp - Nathon Williams</p>
                  </td>
            </tr>
        </table>
    </body>
</html>
