<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MarkDelivered.aspx.vb" Inherits="TransponstersEDM.MarkDelivered" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
            <style>
    body {font-family: Arial, Helvetica, sans-serif;}
    * {box-sizing: border-box}
                .demo-bg {
          opacity: 0.5;
          position: absolute;
          left: 0;
          top: 0;
          width: 100%;
          height: auto;
        }

                .homebtn {
       line-height: 12px;
     width: 50px;
     font-size: 8pt;
     font-family: tahoma;
     margin-top: 1px;
     margin-right: 2px;
     position:absolute;
     top:0;
     right:0;
  background-color: #04AA6D;
}

    .demo-content {
          position: relative;
        }
    /* Full-width input fields */
    input[type=text], input[type=password], input[type=Email], input[type=Phone], input[type=date] {
        width: 100%;
        padding: 10px;
        margin: 5px 0 5px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

    input[type=text]:focus, input[type=password]:focus, input[type=Email]:focus,  input[type=Phone]:focus {
        background-color: #ddd;
        outline: none;
    }

    hr {
        border: 1px solid #f1f1f1;
        margin-bottom: 25px;
    }

    /* Set a style for all buttons */
    button {
        background-color: #04AA6D;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
        opacity: 0.9;
    }

    button:hover {
        opacity:1;
    }

    /* Extra styles for the cancel button */
    .cancelbtn {
        padding: 14px 20px;
        background-color: #f44336;
    }

    .signupbtn {
        padding: 14px 20px;
        background-color: #04AA6D;
    }

    /* Float cancel and signup buttons and add an equal width */
    .cancelbtn, .signupbtn {
        float: left;
        width: 50%;
    }

    /* Add padding to container elements */
    .container {
        padding: 16px;
    }

    /* Clear floats */
    .clearfix::after {
        content: "";
        clear: both;
        display: table;
    }

    select {
		-webkit-appearance: none;
		-moz-appearance: none;
		-ms-appearance: none;
		appearance: none;
		outline: 0;
		background: #ddd;
		background-image: none;
		border: 1px solid black;
	}
	
	.select {
		position: relative;
		display: block;
		width: 20em;
		height: 3em;
		line-height: 3;
		background:  #ddd;
		overflow: hidden;
		border-radius: .25em;
	}

	
	select::-ms-expand {
		display: none;
	}
	
	.select::after {
		content: '\25BC';
		position: absolute;
		top: 0;
		right: 0;
		bottom: 0;
		padding: 0 1em;
		background:  #ddd;
		pointer-events: none;
	}
	
	.select:hover::after {
		color:  #ddd;
	}
	
	<!-- For different browsers --> .select::after {
		-webkit-transition: .25s all ease;
		-o-transition: .25s all ease;
		transition: .25s all ease;
	}

    /* Change styles for cancel button and signup button on extra small screens */
    @media screen and (max-width: 300px) {
        .cancelbtn, .signupbtn {
            width: 100%;
        }
    }
</style>
<body>
    <form id="form1" runat="server">
              <div class="demo-wrap">
              <img
                class="demo-bg"
                src="imgbg.jpg"
                alt="img"
              >
        <div class="demo-content">
        <p>
        <h1>    Mark Orders to Delivered</h1></p>
        <p>
            &nbsp;</p>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CARTID" DataValueField="CARTID" Height="20px" Width="178px">
        </asp:DropDownList>
            <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyProjectCS %>" ProviderName="<%$ ConnectionStrings:MyProjectCS.ProviderName %>" SelectCommand="SELECT CARTID FROM MIS531GROUP02.CARTS WHERE (ISINTRANSIT = 1) AND (ISDELIVERED = 0) AND (ISCANCELLED = 0)"></asp:SqlDataSource>
        <br />
            <asp:Button ID="Button1" runat="server" Text="Deliver Order" Class="signupbtn" />
        <br />
        <asp:Label ID="Label1" runat="server" BackColor="#66FF66" BorderColor="#FF0066" Text="Order Delivered successfully!!" Visible="False"></asp:Label><br />
        <p>
            <asp:Button ID="Button2" runat="server" Text="Go to Admin Operations" Class="signupbtn" />
        </p>
            
            </div></div>
    </form>
</body>
</html>
