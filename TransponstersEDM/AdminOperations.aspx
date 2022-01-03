<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminOperations.aspx.vb" Inherits="TransponstersEDM.AdminOperations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            margin-left: 0px;
             text-align: center;
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
          input[type=text], input[type=password], input[type=Email], input[type=Phone], input[type=date] {
        width: 100%;
        padding: 15px;
        margin: 5px 0 22px 0;
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
</head>
<body>
    <form id="form1" runat="server">
               <div class="demo-wrap">
              <img
                class="demo-bg"
                src="imgbg.jpg"
                alt="img"
              >
        <div class="demo-content">
            <h1> Admin Dashboard</h1>
         Purchase Order:
        <br />
        <asp:Button ID="Button1" runat="server" Text="Purchase Order Existing Items" />
        <br />
        <br />
        <br />
        New Product and Increase Inventory:<p>
            <asp:Button ID="Button2" runat="server" Text="New Product and Purchase Orders" />
        </p>
        <p>
            &nbsp;Deliver Ordered Orders:</p>
        <p>
            <asp:Button ID="Button3" runat="server" Text="Deliver Orders" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            Update Users Age
        </p>
        <p>
            <asp:Button ID="Button4" runat="server" Text="Update Age" />
        </p>
            <asp:Button ID="Button5" runat="server" Text="Home" Class="homebtn"/>
            <asp:Button ID="Button6" runat="server" Text="Logout" Class="logOutbtn"/>
            </div>
    </div>
               

               
                   </form>
</body>
</html>
