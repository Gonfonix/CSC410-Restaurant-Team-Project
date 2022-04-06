<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.Staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Style.css" />
    <br />
    <title>About our staff and their accomplishments</title>
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
                            <image style="height: 100px" ; src="Image/wording on logo.jpg"></image>
                        </a>
                        </div>
                    </ul>
                </div>
            </nav>
    <div class="wrapper">
    <form id="form1" runat="server">
        <div>
            <br />
            <h1>About Our Staff and the Company:</h1>
            <br />
            <h3">At Cindric's Taco Palace, we care a lot about our customers. We strive to
                give them nothing less than perfect. We have partnered with Tony Soprano, a
                significant influencer who will oversee our employees' behavior and teach them the traits of respect
                and giving. We value our employee to customer relationships. Finally, we believe excellent
                customer service goes beyond inside the walls of Cindric Taco Palace, and extends into your home. </h3><br /><br />
            <div class="quotes">
            <table>
                <tr>
                    <td>
                        <image class="StaffImgAJ" src="Image/ChefAJ.jpg"></image>
                    </td>
                    <td>
                        <h2 style="margin-left: 20px;" ><q>I spent my whole life studying and preparing myself to be an ethical
                            hacker. But then I took a bite of the scrumptious netbeans taco. And from
                            that moment on, I knew I wanted to work at Cindric’s Taco Palace.</q> </h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <image class="StaffImgKS" src="Image/kylechef.jpg"></image>
                    </td>
                    <td>
                        <h2 style="margin-left: 20px"><q>I want to be... where the tacos are.</q></h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <image class="StaffImgN" </image>
                    </td>
                    <td>
                        <h2 style="margin-left:20px";>After consuming many tacos, I have inherited the ability to grow a mustache fast.
                            Take your cursor over my picture for an example!</h2>
                    </td>
                </tr>
            </table>
            </div>
            <br />
            
            <br />
        </div>
    </form>
        
        </div>
</body>
</html>
