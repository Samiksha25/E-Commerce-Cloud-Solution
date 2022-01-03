<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="NewProduct.aspx.vb" Inherits="TransponstersEDM.NewProduct" %>

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
    <form id="form1" runat="server">
              <div class="demo-wrap">
              <img
                class="demo-bg"
                src="imgbg.jpg"
                alt="img"
              >
        <div class="demo-content">
            <h1>Enter Supplier</h1><br />
            Supplier Name<br />
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="SUPPLIERNAME" DataValueField="SUPPLIERID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MyProjectCS %>" ProviderName="<%$ ConnectionStrings:MyProjectCS.ProviderName %>" SelectCommand="SELECT &quot;SUPPLIERNAME&quot;, &quot;SUPPLIERID&quot;, &quot;SUPPLIERTYPE&quot; FROM &quot;SUPPLIERS&quot;"></asp:SqlDataSource>
        <p>
            <h1>Add New Product</h1></p>
        <p>
            Enter the Product Details</p>
        <p>
&nbsp;Product Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tb_productname" runat="server"></asp:TextBox>
        </p>
        <p>
            Manufacturer:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tb_manufacturer" runat="server"></asp:TextBox>
        </p>
        <p>
            Brand:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tb_brand" runat="server"></asp:TextBox>
        </p>
        <p>
            Sub Brand:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tb_subbrand" runat="server"></asp:TextBox>
        </p>
        <p>
            Product Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tb_producttype" runat="server"></asp:TextBox>
        </p>
        <p>
            Product Size:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tb_productsize" runat="server"></asp:TextBox>
        </p>
        <p>
            Unit of Measure:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tb_unitofmeasure" runat="server"></asp:TextBox>
        </p>
        <p>
            Unit Price *:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tb_unitprice" runat="server"></asp:TextBox>
        </p>
        <p>
            Quantity To Add:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tb_quantity" runat="server"></asp:TextBox>
        </p>
        
        <p>
            <asp:Button ID="Button3" runat="server" Text="Go to Admin Operations" Class="signupbtn"/>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="Add Product and Inventory" Class="cancelbtn"/>
        </p>
            
            </div>
                  </div>
    </form>
</body>
</html>
