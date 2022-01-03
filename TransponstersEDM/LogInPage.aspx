<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LogInPage.aspx.vb" Inherits="TransponstersEDM.LogInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LogIn Page</title>
</head>
<style>
    body {font-family: Arial, Helvetica, sans-serif;}
    * {box-sizing: border-box}
      .demo-bg {
          opacity: 0.3;
          position: absolute;
          left: 0;
          top: 0;
          width: 100%;
          height: auto;
        }

        .demo-content {
          position: relative;
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
        background-color: #f44336;
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
</style>

<body>
    <form id="form1" runat="server" style="border:1px solid #ccc">
         <div class="container">
             <h1>Sign In</h1>
                <p>
                    Sign In now, Let's start your Grocery Shopping. Don't have an account?
                    <a href="signuppage.aspx">
                        Sign Up Now</a>
                </p>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </ContentTemplate>
            </asp:UpdatePanel>
                <asp:Label ID="UserEmailLoginLabel" runat="server" AssociatedControlID="UserEmailLogin" Text="User Email: "></asp:Label>
                <asp:TextBox ID="UserEmailLogin" runat="server" type="text" TextMode="Email" placeholder="Enter Email ID" required="true"></asp:TextBox>
                   <br/>
                <asp:Label ID="LoginPwdLabel" runat="server" AssociatedControlID="PwdInput" Text="Password: "></asp:Label>
                <asp:TextBox ID="PwdInput" runat="server" type="password" TextMode="Password" placeholder="Enter your password" required="true"/>

            <div class="clearfix">
                <asp:Button ID="CancelButton" runat="server" Text="Cancel" Class="cancelbtn" />
                <asp:Button ID="Login" runat="server" Text="Login" type="submit" class="signinbtn"/>

            </div>
         </div>
    </form>
</body>
</html>
