<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SignUpPage.aspx.vb" Inherits="TransponstersEDM.SignUpPage" EnableEventValidation="True" ValidateRequest="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp Page</title>
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
    /* Full-width input fields */
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
    <form id="form1" runat="server" submitdisabledcontrols="False" style="border:1px solid #ccc">

        <div class="container">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <br />
                <h1>Sign Up</h1>
                <p>Please fill in this form to create an account.</p>
                <hr />
                <asp:Label ID="FirstNameLabel" runat="server" AssociatedControlID="FirstName" Text="First Name: "></asp:Label>
                <asp:TextBox ID="FirstName" runat="server" type="text"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ControlToValidate="FirstName" ErrorMessage="First Name is required." ForeColor="Red" ValidateRequestMode="Enabled" ValidationGroup="SignUpPage">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="MiddleNameLabel" runat="server" AssociatedControlID="MiddleName" Text="Middle Name: "></asp:Label>
                <asp:TextBox ID="MiddleName" runat="server" type="text"></asp:TextBox>
                <br />
                <asp:Label ID="LastNameLabel" runat="server" AssociatedControlID="LastName" Text="Last Name: "></asp:Label>
                <asp:TextBox ID="LastName" runat="server" type="text"></asp:TextBox>
                <asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ControlToValidate="LastName" ErrorMessage="Last Name is required." ForeColor="Red" ValidationGroup="SignUpPage">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="GenderLabel" runat="server" AssociatedControlID="Gender" Text="Gender: "></asp:Label>
                <div class="select">
                    <asp:DropDownList ID="Gender" runat="server">
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:RequiredFieldValidator ID="GenderValidator" runat="server" ControlToValidate="Gender" ErrorMessage="Gender is required." ForeColor="Red" ValidationGroup="SignUpPage">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="DOBLabel" runat="server" Text="DOB: " ></asp:Label>
                <asp:TextBox ID="DOB" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="DOBValidator" runat="server" ControlToValidate="DOB" ErrorMessage="Date of Birth is required." ForeColor="Red" ValidationGroup="SignUpPage">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" Text="Email: "></asp:Label>
                <asp:TextBox ID="Email" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ControlToValidate="Email" ErrorMessage="Email is required." ForeColor="Red" ValidationGroup="SignUpPage">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="EmailExpressionValidator" runat="server" ControlToValidate="Email" ErrorMessage="Enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="SignUpPage"></asp:RegularExpressionValidator>
                <br />
                <asp:Button ID="CheckUser" runat="server" Text="Check User"/>
                <br /><br />
                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" Text="Password: "></asp:Label>
                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ForeColor="Red" ValidationGroup="SignUpPage">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword" Text="Confirm Password: "></asp:Label>
                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ConfirmPasswordValidator" runat="server" ControlToValidate="Password" ErrorMessage="Confirm Password is required." ForeColor="Red" ValidationGroup="SignUpPage">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="ComparePwdValidator" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="The password and confirm password entry does not match." ValidationGroup="SignUpPage">The password and confirm password entry should match.</asp:CompareValidator>
                <br />
                <asp:Label ID="PhoneLabel" runat="server" AssociatedControlID="Phone" Text="Phone: "></asp:Label>
                <asp:TextBox ID="Phone" runat="server" type="text"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PhoneValidator" runat="server" ControlToValidate="Phone" ErrorMessage="Phone Number is required." ForeColor="Red" ValidationGroup="SignUpPage">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="AddrTypeLabel" runat="server" AssociatedControlID="AddrType" Text="Address Type: "></asp:Label>
                <asp:DropDownList ID="AddrType" runat="server">
                    <asp:ListItem>Home</asp:ListItem>
                    <asp:ListItem>Work</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="AddrTypeValidator" runat="server" ControlToValidate="AddrType" ErrorMessage="Address Type is required" ForeColor="Red" ValidationGroup="SignUpPage">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="isPrimLabel" runat="server" AssociatedControlID="isPrim" Text="Primary Address"></asp:Label>
                <asp:DropDownList ID="isPrim" runat="server">
                    <asp:ListItem>Y</asp:ListItem>
                    <asp:ListItem>N</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="isPrimValidator" runat="server" ControlToValidate="isPrim" ErrorMessage="Please select if the address is a primary address." ForeColor="Red" ValidationGroup="SignUpPage">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="AddrLn1Label" runat="server" AssociatedControlID="AddrLn1" Text="Address Line 1: "></asp:Label>
                <asp:TextBox ID="AddrLn1" runat="server" type="text"></asp:TextBox>
                <asp:RequiredFieldValidator ID="AddrLn1Validator" runat="server" ControlToValidate="AddrLn1" ErrorMessage="AddrLn1 is required." ForeColor="Red" ValidationGroup="SignUpPage">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="AddrLn2Label" runat="server" AssociatedControlID="AddrLn2" Text="Address Line 2: "></asp:Label>
                <asp:TextBox ID="AddrLn2" runat="server" type="text"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="CityLabel" runat="server" AssociatedControlID="City" Text="City: "></asp:Label>
                <asp:TextBox ID="City" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="StateLabel" runat="server" AssociatedControlID="State" Text="State: "></asp:Label>
                <asp:TextBox ID="State" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="StateValidator" runat="server" ControlToValidate="State" Display="None" ErrorMessage="State is required" ForeColor="Red" InitialValue="AZ" ValidationGroup="SignUpPage">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="ZipCodeLabel" runat="server" AssociatedControlID="ZipCode" Text="ZipCode: "></asp:Label>
                <asp:TextBox ID="ZipCode" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ZipcodeValidator" runat="server" ControlToValidate="ZipCode" ErrorMessage="Zipcode is required" ForeColor="Red" ValidationGroup="SignUpPage">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="ZipCodevalidator1" runat="server" ControlToValidate="ZipCode" ErrorMessage="Enter a valid zipcode." ValidationExpression="\d{5}(-\d{4})?" ValidationGroup="SignUpPage">Enter a valid zipcode.</asp:RegularExpressionValidator>
                <br />
                <div class="clearfix">
                <asp:Button ID="CancelButton" runat="server" Text="Cancel" Class="cancelbtn" />
                <asp:Button ID="CreateUser" runat="server" Text="Create User" Class="signupbtn"/>
            </div>
                <asp:ValidationSummary ID="ValidationSummary" runat="server" ShowMessageBox="True" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="TNS_ADMIN=C:\Users\ual-laptop\Oracle\network\admin;USER ID=MIS531GROUP02;PASSWORD=O1:8ml2,7;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True" ProviderName="Oracle.ManagedDataAccess.Client" SelectCommand="SELECT * FROM &quot;USERS&quot;"></asp:SqlDataSource>
    
      
        </div>
    </form>
</body>
</html>
