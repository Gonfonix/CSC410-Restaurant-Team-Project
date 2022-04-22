<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resveration.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.Resveration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="chrome=1,IE=edge" />
	<title>Make your Reservation</title>
	<style>
		html {
			height:100%;
		}
		body {
			background-color:#424242;
			margin:0;
			height:100%;
		}
	</style>
	<!-- copy these lines to your document head: -->

	<meta name="viewport" content="user-scalable=yes, width=1000" />
	
	<link rel="stylesheet" href="Style.css" />
	<script>
        /*
         * The Function Called on Document Load
        */
        function callBack(hypeDocument, element, event) {
            window.hypeDocument = hypeDocument;

            hypeDocument.reserveTable = function (element, event) {
                console.log(element);
            }
        }

        if ("HYPE_eventListeners" in window === false) {
            window.HYPE_eventListeners = Array();
        }

        window.HYPE_eventListeners.push({ "type": "HypeDocumentLoad", "callback": callBack });
	</script>

	<!-- end copy -->
  </head>
  <body>
	<!-- copy these lines to your document: -->

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
               <!--<br />
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
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RadioButtonList ID="rblChooseTable" runat="server">
                                <asp:ListItem Value="1">Reserve a Single Table.</asp:ListItem>
                                <asp:ListItem Value="2">Reserve the Whole Room.</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </table>-->

            </form>
        </div>

        <!--<br />-->

	<div id="default_hype_container" class="HYPE_document" style="margin:auto;position:relative;width:100%;height:100%;overflow:hidden;">
		<script type="text/javascript" charset="utf-8" src="Default.hyperesources/default_hype_generated_script.js?6300"></script>
	</div>

	<!-- end copy -->
	


	<!-- text content for search engines: -->

	<div style="display:none" aria-hidden=true>

		<div>== Table
Reserved</div>
		<div>== Table
NOT Reservable</div>
		<div>
NOT RESERVABLE</div>
		<div></div>
		<div></div>
		<div>Entrance</div>
		<div>


NOT RESERVABLE</div>

	</div>

	<!-- end text content: -->

  </body>
</html>
