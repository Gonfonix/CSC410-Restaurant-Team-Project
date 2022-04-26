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
        let tablesReserved = []; // The current tables reserved (includes also dates and times). Example: other|Table1|2022-04-23T09:00 (other/self indicates if the reservation is yours or another user's reservation).

        /*
         * Things to Consider Checking on Server End:
         *
         * 1 - Is the date and time selected valid (old date, invalid time, is the store closed on this day)?
         * 2 - Is the table selected valid (availabe and does exist)?
         * 3 - Check if table that is being unreserved is currently reserved first.
         * 4 - Ensure two users can't have the same reservation.
         * 5 - ..?
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
                try {
                    // Test Data
                    tablesReserved.push("self|Table3|2022-04-25T09:00");
                    tablesReserved.push("other|Table1|2022-04-25T09:00");
                    tablesReserved.push("other|Table4|2022-04-25T09:00");
                    tablesReserved.push("other|Table2|2022-04-25T09:15");
                    tablesReserved.push("other|Table1|2022-04-26T09:00");

                    /*
                     * For some reason, the reservation timelines are bugged once they run... therefore, we will set their times then play them all in reverse to "fix" them.
                    */
                    for (let i = 1; i <= 4; i++) {
                        hypeDocument.goToTimeInTimelineNamed(1, "Table " + i + " Reserved");
                        hypeDocument.goToTimeInTimelineNamed(1, "Table " + i + " Reserved (By You)");
                    }

                    for (let i = 1; i <= 4; i++) {
                        hypeDocument.startTimelineNamed("Table " + i + " Reserved", hypeDocument.kDirectionReverse);
                        hypeDocument.startTimelineNamed("Table " + i + " Reserved (By You)", hypeDocument.kDirectionReverse);
                    }

                    // Setup the reservation screen based on gathered data.
                    hypeDocument.dateAndTimeSelected(null, false);
                } catch (e) {
                    statusLabel2.style.pointerEvents = "auto";
                    statusLabel2.innerHTML = "An error occurred when loading reservations.";
                    console.log(e);
                    statusLabel2.style.color = "red";
                    statusLabel2.style.opacity = 1.0;
                }
            }

            /*
               * The Function Called When a Date and Time is Selected. Also, is Called on Document Load to Build the Reservation Screen.
            */
            hypeDocument.dateAndTimeSelected = function (event, calledFromConfirmReservation) {
                // ID of Date and Time Selector Element: reserveDateAndTime.

                try {
                    let today = new Date();
                    let dateAndTimeSelectedFromSelector = new Date(reserveDateAndTime.value);

                    let dd = today.getDate();
                    let mm = today.getMonth() + 1;
                    let yyyy = today.getFullYear();
                    let hours = today.getHours();
                    let minutes = today.getMinutes();
                    let seconds = today.getSeconds();

                    if (dd < 10) {
                        dd = '0' + dd;
                    }

                    if (mm < 10) {
                        mm = '0' + mm;
                    }

                    if (hours < 10) {
                        hours = '0' + hours;
                    }

                    if (minutes < 10) {
                        minutes = '0' + minutes;
                    }

                    if (seconds < 10) {
                        seconds = '0' + seconds;
                    }

                    let todayWithoutTime = yyyy + '-' + mm + '-' + dd;
                    let todayWithTime = yyyy + '-' + mm + '-' + dd + "T" + hours + ":" + minutes;

                    today = new Date(todayWithTime);

                    // If the date and time selected is invalid, auto correct...
                    if (today > dateAndTimeSelectedFromSelector) {
                        if (event !== null) {
                            statusLabel.style.pointerEvents = "auto";
                            statusLabel.style.color = "red";
                            statusLabel.style.opacity = 1.0;
                        }

                        reserveDateAndTime.value = todayWithTime;
                    } else {
                        if (!calledFromConfirmReservation) {
                            statusLabel.style.pointerEvents = "none";
                            statusLabel.style.opacity = 0.0;
                        }
                    }

                    let foundTableReservedBySelf = false; // can be removed.
                    let currentTimeAndDateTableReserveStatus = [false, false, false, false];

                    let previousTableIDReserved = 0;
                    if (tableIDReserved !== 0 || tableDateAndTimeReserved !== "") {
                        previousTableIDReserved = tableIDReserved;
                        tableHasBeenReserved = false;
                        tableDateAndTimeReserved = "";
                        reserveTableButton.innerHTML = "Reserve Table";
                        switch (tableIDReserved) {
                            case 1:
                                if (!tableReserveStatus[0]) {
                                    Table1Text.style.opacity = 1.0;
                                }
                                break;
                            case 2:
                                if (!tableReserveStatus[1]) {
                                    Table2Text.style.opacity = 1.0;
                                }
                                break;
                            case 3:
                                if (!tableReserveStatus[2]) {
                                    Table3Text.style.opacity = 1.0;
                                }
                                break;
                            case 4:
                                if (!tableReserveStatus[3]) {
                                    Table4Text.style.opacity = 1.0;
                                }
                                break;
                            default:
                                break;
                        }
                        tableIDReserved = 0;
                    }

                    dateAndTimeSelectedFromSelector = new Date(reserveDateAndTime.value);

                    dd = dateAndTimeSelectedFromSelector.getDate();
                    mm = dateAndTimeSelectedFromSelector.getMonth() + 1;
                    yyyy = dateAndTimeSelectedFromSelector.getFullYear();

                    if (dd < 10) {
                        dd = '0' + dd
                    }

                    if (mm < 10) {
                        mm = '0' + mm
                    }

                    let dateNoTime = yyyy + '-' + mm + '-' + dd;

                    let earliestTime = new Date(dateNoTime + "T09:00");
                    let latestTime = new Date(dateNoTime + "T20:30");

                    if (dateAndTimeSelectedFromSelector >= earliestTime && dateAndTimeSelectedFromSelector <= latestTime && dateAndTimeSelectedFromSelector.getDay() != 6 && dateAndTimeSelectedFromSelector.getDay() != 0) {
                        if (RestaurantClosedGroup.style.pointerEvents === "auto") {
                            hypeDocument.startTimelineNamed("RestaurantClosed", hypeDocument.kDirectionReverse);

                            RestaurantClosedGroup.style.pointerEvents = "none";
                            RestaurantClosed.style.pointerEvents = "none";
                            RestaurantClosedText.style.pointerEvents = "none";
                            RestaurantClosedTextBackground.style.pointerEvents = "none";
                        }

                        reserveTableButton.style.pointerEvents = "auto";

                        for (let i = 0; i < tablesReserved.length; i++) {
                            // If the current date and time matches the current reservation, continue.
                            if (reserveDateAndTime.value === tablesReserved[i].split("|")[2]) {
                                let isTableReservedBySelf = tablesReserved[i].split("|")[0] === "self" ? true : false; // Is the current reservation reserved by the current user?
                                let tableReserved = tablesReserved[i].split("|")[1]; // Gather the table being reserved.
                                switch (tableReserved) {
                                    case "Table1":
                                        Table1Text.style.opacity = 0.0;

                                        if (isTableReservedBySelf) {
                                            if (tableHasBeenReserved && tableIDReserved !== 0 && hypeDocument.currentDirectionForTimelineNamed("Table " + tableIDReserved + " Reserved (By You)") < 1) {
                                                hypeDocument.startTimelineNamed("Table " + tableIDReserved + " Reserved (By You)", hypeDocument.kDirectionReverse);
                                            }

                                            foundTableReservedBySelf = true;
                                            tableIDReserved = 1;
                                            tableHasBeenReserved = true;

                                            tableDateAndTimeReserved = "self|Table" + tableIDReserved + "|" + reserveDateAndTime.value; // Record the date and time of the reservation for the table reserved by the user.

                                            reserveTableButton.innerHTML = "Unreserve Table";

                                            if (hypeDocument.currentDirectionForTimelineNamed("Table 1 Reserved (By You)") > 0) {
                                                hypeDocument.startTimelineNamed("Table 1 Reserved (By You)", hypeDocument.kDirectionForward);
                                            }
                                        } else {
                                            if (!tableHasBeenReserved) {
                                                reserveTableButton.innerHTML = "Reserve Table";
                                            }
                                            if (hypeDocument.currentDirectionForTimelineNamed("Table 1 Reserved") > 0) {
                                                hypeDocument.startTimelineNamed("Table 1 Reserved", hypeDocument.kDirectionForward);
                                            }
                                            tableReserveStatus[0] = true;
                                            currentTimeAndDateTableReserveStatus[0] = true;
                                        }
                                        break;
                                    case "Table2":
                                        Table2Text.style.opacity = 0.0;

                                        if (isTableReservedBySelf) {
                                            if (tableHasBeenReserved && tableIDReserved !== 0 && hypeDocument.currentDirectionForTimelineNamed("Table " + tableIDReserved + " Reserved (By You)") < 1) {
                                                hypeDocument.startTimelineNamed("Table " + tableIDReserved + " Reserved (By You)", hypeDocument.kDirectionReverse);
                                            }

                                            foundTableReservedBySelf = true;
                                            tableIDReserved = 2;
                                            tableHasBeenReserved = true;

                                            tableDateAndTimeReserved = "self|Table" + tableIDReserved + "|" + reserveDateAndTime.value; // Record the date and time of the reservation for the table reserved by the user.

                                            reserveTableButton.innerHTML = "Unreserve Table";

                                            if (hypeDocument.currentDirectionForTimelineNamed("Table 2 Reserved (By You)") > 0) {
                                                hypeDocument.startTimelineNamed("Table 2 Reserved (By You)", hypeDocument.kDirectionForward);
                                            }
                                        } else {
                                            if (!tableHasBeenReserved) {
                                                reserveTableButton.innerHTML = "Reserve Table";
                                            }
                                            if (hypeDocument.currentDirectionForTimelineNamed("Table 2 Reserved") > 0) {
                                                hypeDocument.startTimelineNamed("Table 2 Reserved", hypeDocument.kDirectionForward);
                                            }
                                            tableReserveStatus[1] = true;
                                            currentTimeAndDateTableReserveStatus[1] = true;
                                        }
                                        break;
                                    case "Table3":
                                        Table3Text.style.opacity = 0.0;

                                        if (isTableReservedBySelf) {
                                            if (tableHasBeenReserved && tableIDReserved !== 0 && hypeDocument.currentDirectionForTimelineNamed("Table " + tableIDReserved + " Reserved (By You)") < 1) {
                                                hypeDocument.startTimelineNamed("Table " + tableIDReserved + " Reserved (By You)", hypeDocument.kDirectionReverse);
                                            }

                                            foundTableReservedBySelf = true;
                                            tableIDReserved = 3;
                                            tableHasBeenReserved = true;

                                            tableDateAndTimeReserved = "self|Table" + tableIDReserved + "|" + reserveDateAndTime.value; // Record the date and time of the reservation for the table reserved by the user.

                                            reserveTableButton.innerHTML = "Unreserve Table";

                                            if (hypeDocument.currentDirectionForTimelineNamed("Table 3 Reserved (By You)") > 0) {
                                                hypeDocument.startTimelineNamed("Table 3 Reserved (By You)", hypeDocument.kDirectionForward);
                                            }
                                        } else {
                                            if (!tableHasBeenReserved) {
                                                reserveTableButton.innerHTML = "Reserve Table";
                                            }
                                            if (hypeDocument.currentDirectionForTimelineNamed("Table 3 Reserved") > 0) {
                                                hypeDocument.startTimelineNamed("Table 3 Reserved", hypeDocument.kDirectionForward);
                                            }
                                            tableReserveStatus[2] = true;
                                            currentTimeAndDateTableReserveStatus[2] = true;
                                        }
                                        break;
                                    case "Table4":
                                        Table4Text.style.opacity = 0.0;

                                        if (isTableReservedBySelf) {
                                            if (tableHasBeenReserved && tableIDReserved !== 0 && hypeDocument.currentDirectionForTimelineNamed("Table " + tableIDReserved + " Reserved (By You)") < 1) {
                                                hypeDocument.startTimelineNamed("Table " + tableIDReserved + " Reserved (By You)", hypeDocument.kDirectionReverse);
                                            }

                                            foundTableReservedBySelf = true;
                                            tableIDReserved = 4;
                                            tableHasBeenReserved = true;

                                            tableDateAndTimeReserved = "self|Table" + tableIDReserved + "|" + reserveDateAndTime.value; // Record the date and time of the reservation for the table reserved by the user.

                                            reserveTableButton.innerHTML = "Unreserve Table";

                                            if (hypeDocument.currentDirectionForTimelineNamed("Table 4 Reserved (By You)") > 0) {
                                                hypeDocument.startTimelineNamed("Table 4 Reserved (By You)", hypeDocument.kDirectionForward);
                                            }
                                        } else {
                                            if (!tableHasBeenReserved) {
                                                reserveTableButton.innerHTML = "Reserve Table";
                                            }
                                            if (hypeDocument.currentDirectionForTimelineNamed("Table 4 Reserved") > 0) {
                                                hypeDocument.startTimelineNamed("Table 4 Reserved", hypeDocument.kDirectionForward);
                                            }
                                            tableReserveStatus[3] = true;
                                            currentTimeAndDateTableReserveStatus[3] = true;
                                        }
                                        break;
                                    default:
                                        break; // No valid table for timeslot.
                                }
                            }
                        }
                    } else {
                        if (RestaurantClosedGroup.style.pointerEvents !== "auto") {
                            hypeDocument.startTimelineNamed("RestaurantClosed", hypeDocument.kDirectionForward);

                            RestaurantClosedGroup.style.pointerEvents = "auto";
                            RestaurantClosed.style.pointerEvents = "auto";
                            RestaurantClosedText.style.pointerEvents = "auto";
                            RestaurantClosedTextBackground.style.pointerEvents = "auto";
                        }

                        reserveTableButton.style.pointerEvents = "none";
                    }

                    if (tableIDReserved !== previousTableIDReserved && previousTableIDReserved !== 0) {
                        hypeDocument.startTimelineNamed("Table " + previousTableIDReserved + " Reserved (By You)", hypeDocument.kDirectionReverse);
                    }

                    for (let i = 0; i < currentTimeAndDateTableReserveStatus.length; i++) {
                        if (!currentTimeAndDateTableReserveStatus[i] && tableReserveStatus[i]) {
                            tableReserveStatus[i] = false;
                            hypeDocument.startTimelineNamed("Table " + (i + 1) + " Reserved", hypeDocument.kDirectionReverse);
                            switch (i + 1) {
                                case 1:
                                    if (tableIDReserved !== i + 1) {
                                        Table1Text.style.opacity = 1.0;
                                    }
                                    break;
                                case 2:
                                    if (tableIDReserved !== i + 1) {
                                        Table2Text.style.opacity = 1.0;
                                    }
                                    break;
                                case 3:
                                    if (tableIDReserved !== i + 1) {
                                        Table3Text.style.opacity = 1.0;
                                    }
                                    break;
                                case 4:
                                    if (tableIDReserved !== i + 1) {
                                        Table4Text.style.opacity = 1.0;
                                    }
                                    break;
                                default:
                                    break;
                            }
                        }
                    }
                } catch (e) {
                    statusLabel2.style.pointerEvents = "auto";
                    statusLabel2.innerHTML = "An error occurred when loading reservations.";
                    console.log(e);
                    statusLabel2.style.color = "red";
                    statusLabel2.style.opacity = 1.0;
                }
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

	<!-- copy these lines to your document: -->

	<div id="default_hype_container" class="HYPE_document" style="margin:auto;position:relative;width:100%;height:100%;overflow:hidden;">
		<script type="text/javascript" charset="utf-8" src="js/default_hype_generated_script.js?46466"></script>
	</div>

	<!-- end copy -->
	


	<!-- text content for search engines: -->

	<div style="display:none" aria-hidden=true>

		<div>



RESERVED
</div>
		<div>SORRY,
RESERVATIONS ARE CLOSED FOR THE SELECTED DATE AND TIME!
</div>
		<div>Table 2</div>
		<div>Table 4</div>
		<div>== Table
NOT Reservable</div>
		<div>Reserved Table: None
</div>
		<div>Table 3</div>
		<div>Table 1</div>
		<div>

  Entrance</div>
		<div>== Table
Reserved (BY YOU)</div>
		<div>



RESERVED
(BY YOU)
</div>
		<div>
NOT RESERVABLE</div>
		<div></div>
		<div>


RESERVED
(BY YOU)
</div>
		<div>
RESERVED
(BY YOU)
</div>
		<div>


NOT RESERVABLE</div>
		<div></div>
		<div></div>
		<div>


RESERVED
</div>
		<div>Select a Date and Time





Then, click on a table to
reserve it. Lastly, click on the “Reserve Table” button below.

To unreserve a table, click on the table or unclick it and click on the “Unreserve Table” button below.

Reserving a new table automatically unreserves any others.
</div>
		<div>Error: Table Reserved Already
</div>
		<div>Error: Invalid Date or Time. Fixed it!
</div>
		<div>
RESERVED</div>
		<div>Reserve Table</div>
		<div>== Table
Reserved</div>
		<div>
</div>

	</div>

	<!-- end text content: -->

  </body>
</html>