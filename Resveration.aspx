<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resveration.aspx.cs" Inherits="CSC_410_Team_Project_Restaurant.Resveration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="chrome=1,IE=edge" />
	<title>Make your Reservation</title>
	<style>
		html {
			height:100%;
		}
		body {
			background-color:#5D5D5D;
			margin:0;
			height:100%;
		}
	</style>
	<!-- copy these lines to your document head: -->

	<meta name="viewport" content="user-scalable=yes, width=1039" />
	
	<link rel="stylesheet" href="Style.css" />
	<script>
        let tableIDReserved = 0; // The table number which has been reserved; 0 means nothing reserved.
        let tableDateAndTimeReserved = ""; // The date and time the table has been reserved; "" means nothing reserved.
        let tableHasBeenReserved = false; // If true, a table has been reserved successfully.
        let tableReserveStatus = [false, false, false, false]; // The status of each table if they have been reserved by anyone else yet; false means unreserved and true means reserved.

        /*
         * Things to Consider Checking on Server End:
         *
         * 1 - Is the date and time selected valid (old date, invalid time, is the store closed on this day)?
         * 2 - Is the table selected valid (availabe and does exist)?
         * 3 - Check if table that is being unreserved is currently reserved first.
         * 4 - ..?
        */

        /*
         * The Function Called on Document Load.
        */
        function callBack(hypeDocument, element, event) {
            window.hypeDocument = hypeDocument;

            /*
               * The Function Called When Loading Current Reserved Tables (On Document Load).
               *
               * Firstly, the server will remove any old reservations that are now invalid.
               * Secondly, the server will then forward over the current valid reservation dates.
            */
            hypeDocument.loadCurrentReservations = function () {

            }

            /*
               * The Function Called When a Date and Time is Selected.
            */
            hypeDocument.dateAndTimeSelected = function (event) {
                // ID of Date and Time Selector Element: reserveDateAndTime.
            }

            /*
               * The Function Called When Unreserving any Tables.
            */
            hypeDocument.unReserveAnyTables = function () {

            }

            /*
               * The Function Called When Reserving a Table.
            */
            hypeDocument.reserveTable = function () {

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


	<div id="default_hype_container" class="HYPE_document" style="margin:auto;position:relative;width:100%;height:100%;overflow:hidden;">
		<script type="text/javascript" charset="utf-8" src="Default.hyperesources/default_hype_generated_script.js?44274"></script>
	</div>

	<!-- end copy -->
	


	<!-- text content for search engines: -->

	<div style="display:none" aria-hidden=true>

		<div>
NOT RESERVABLE</div>
		<div></div>
		<div>


RESERVED
</div>
		<div>



RESERVED
</div>
		<div>

  Entrance</div>
		<div></div>
		<div>
RESERVED</div>
		<div>Select a Date and Time




Then, click on a table to
reserve it.
</div>
		<div>== Table
Reserved (BY YOU)</div>
		<div>== Table
Reserved</div>
		<div>


RESERVED
(BY YOU)
</div>
		<div>



RESERVED
(BY YOU)
</div>
		<div>
RESERVED
(BY YOU)
</div>
		<div>== Table
NOT Reservable</div>
		<div>Error: Table Reserved Already
</div>
		<div>
</div>
		<div>SORRY,
WE’RE CLOSED TODAY!
</div>
		<div>Error: Invalid Date or Time
</div>
		<div>Reserve Table</div>
		<div></div>
		<div>


NOT RESERVABLE</div>

	</div>

	<!-- end text content: -->

  </body>
</html>
