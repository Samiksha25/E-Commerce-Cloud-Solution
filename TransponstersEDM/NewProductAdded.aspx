<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="NewProductAdded.aspx.vb" Inherits="TransponstersEDM.NewProductAdded" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
        <style>
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
        .demo-bg {
          opacity: 0.6;
          position: absolute;
          left: 0;
          top: 0;
          width: 100%;
          height: auto;
        }

        .demo-content {
          position: relative;
        }

       h1 {    
           color: #0c0c0c;
            font-family: "Great Vibes";
            font-size: 60px;
            line-height: 160px;
            font-weight: normal;
            margin-bottom: 0px;
            margin-top: 40px;
            text-align: right; }
    </style>
<body>
    <form id="form1" runat="server">
                <div class="demo-wrap">
              <img
                class="demo-bg"
                src="orderconf.jpg"
                alt="img"
              >
        <div class="demo-content">
        <div>
        <div>
            New Product Successfully Added!!!!!!!!!!!<br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Go to Admin Operations" Class="signupbtn"/>
        </div>
            </div>
            </div>
    </form>
</body>
</html>
