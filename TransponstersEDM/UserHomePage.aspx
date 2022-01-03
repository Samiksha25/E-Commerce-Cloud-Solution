<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UserHomePage.aspx.vb" Inherits="TransponstersEDM.UserHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Homepage</title>
</head>
    <style>
    body {font-family: Arial, Helvetica, sans-serif;}
    * {box-sizing: border-box}
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
        .logOutbtn {
       line-height: 12px;
     width: 50px;
     font-size: 8pt;
     font-family: tahoma;
     margin-top: 1px;
     margin-right: 60px;
     position:absolute;
     top:0;
     right:0;
  background-color: #04AA6D;
}
    /* Full-width input fields */
    input[type=Email], input[type=password] {
        width: 100%;
        padding: 15px;
        margin: 5px 0 22px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

    input[type=Email]:focus, input[type=password]:focus {
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
        background-color: white;
    }

     /* Extra styles for the cancel button */
    .signinbtn {
        padding: 14px 20px;
        background-color: #04AA6D;
    }

    /* Float cancel and signup buttons and add an equal width */
    .cancelbtn, .signinbtn {
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

    /* Change styles for cancel button and signup button on extra small screens */
    @media screen and (max-width: 300px) {
        .cancelbtn, .signinbtn {
            width: 100%;
        }
    }
                           .demo-bg {
          opacity: 0.5;
          position: absolute;
          left: 0;
          top: 0;
          width: 100%;
          height: auto;
        }

    .demo-content {
          position: relative;
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
           <h1> User Homepage</h1><br />
            <br />
        <asp:Button ID="StoreLocator" runat="server" Text="Store Locator" Class="cancelbtn"/>
        <br />
                <br />        <br />


        <br />
        <asp:Button ID="OrderSummary" runat="server" Text="Order Summary" Class="cancelbtn"/>
        <br />
        <br />
                <br />

                <br />

        <asp:Button ID="OrderHistory" runat="server" Text="Order History" Class="cancelbtn"/>
            
        <asp:Button ID="Button4" runat="server" Text="Home" Class="homebtn"/>
            <asp:Button ID="Button5" runat="server" Text="Logout" Class="logOutbtn"/>
            </div>
                    </div>
   
                    
    
    </form>
</body>
</html>
