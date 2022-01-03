<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="OrderConfirmed.aspx.vb" Inherits="TransponstersEDM.OrderConfirmed" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
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
            <h1>Order Placed!</h1><br />
        </div>
        </div>
            
        <asp:Button ID="Button4" runat="server" Text="Home" Class="homebtn"/>
    </div>
    <div>
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
