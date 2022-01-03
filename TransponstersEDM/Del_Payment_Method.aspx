<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Del_Payment_Method.aspx.vb" Inherits="TransponstersEDM.Del_Payment_Method" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>

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

    body {font-family: Arial, Helvetica, sans-serif;}
    * {box-sizing: border-box}

    /* Full-width input fields */
    input[type=text], input[type=password], input[type=Email], input[type=Phone], input[type=date] {
        width: 100%;
        padding: 15px;
        margin: 5px 0 22px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

    form {
        text-align: center;
    }

    h1 {
        display: block;
        font-size: 1.5em;
        margin-block-start: 0.67em;
        margin-block-end: 0.67em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
        font-weight: bold;
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

    .signupbtn {
        padding: 14px 20px;
        background-color: #398744;
    }

    /* Float cancel and signup buttons and add an equal width */
    .cancelbtn, .signupbtn {
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
		position: absolute;
		display: block;
		width: 20em;
		height: 3em;
		line-height: 3;
		background:  #ddd;
		overflow: hidden;
		border-radius: .25em;
	}
	
	select {
	    width: 100%;
        height: 100%;
        margin: 5px 0 22px 0;
        padding: 15px;
        color: #121212;
        cursor: pointer;
        display: inline-block;
        border: none;
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
    <form id="form1" runat="server" tyle="border:1px solid #ccc">
        <div class="demo-wrap">
              <img
                class="demo-bg"
                src="imgbg.jpg"
                alt="img"
              >
        <div class="demo-content">
        <div class="container">
        <h1>Enter the Payment Method</h1>

        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="PAYMENTMODEDESC" DataValueField="PAYMENTMODEID" Width="208px">
        </asp:DropDownList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyProjectCS %>" ProviderName="<%$ ConnectionStrings:MyProjectCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;PAYMENT_METHOD&quot;"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" class="signupbtn" Text="Select Payment Method" />
        <br/>
        <br/>
         <br/>
        <hr />
        <h1>Enter the Delivery Mode</h1>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="DELIVERYMODEDESC" DataValueField="DELIVERYMODEID" Width="217px">
        </asp:DropDownList>
         <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyProjectCS %>" ProviderName="<%$ ConnectionStrings:MyProjectCS.ProviderName %>" SelectCommand="SELECT &quot;DELIVERYMODEID&quot;, &quot;DELIVERYMODEDESC&quot;, &quot;DELIVERYCHARGES&quot;, &quot;THRESHHOLDAMOUNT&quot; FROM &quot;DELIVERY_METHOD&quot;"></asp:SqlDataSource>
       <br/>
            <asp:Button ID="Button2" runat="server" Text="Select Delivery Method" class="signupbtn" />
        
        <asp:Button ID="Button4" runat="server" Text="Home" Class="homebtn"/>
            </div>
            </div>
            </div>

    </form>
    <p>
        &nbsp;</p>
</body>
</html>
