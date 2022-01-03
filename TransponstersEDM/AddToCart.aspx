<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddToCart.aspx.vb" Inherits="TransponstersEDM.AddToCart" %>
<%@ PreviousPageType VirtualPath="~/StoreLocator.aspx"%>
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
                
    form {
        text-align: center;
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
        background-color: #f59191 ;
    }

    .signupbtn {
        padding: 14px 20px;
        background-color: #04AA6D;
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

input[type=text], input[type=password], input[type=Email], input[type=Phone], input[type=date] {
		width: 20em;
		height: 2em;
		line-height: 3;
		background:  #ddd;
		overflow: hidden;
		border-radius: .25em;
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
    /* Change styles for cancel button and signup button on extra small screens */
    @media screen and (max-width: 300px) {
        .cancelbtn, .signinbtn {
            width: 100%;
        }
    }

        .myGridClass {
              width: 100%;
              /*this will be the color of the odd row*/
              background-color: #d5e8f2;
              margin: 5px 0 10px 0;
              border: solid 1px #1e516b;
              border-collapse:collapse;
              font-family: 'Montserrat', sans-serif;
            }

        .myGridClass td {
              padding: 2px;
              font-size:11px;
              text-align:center;
              line-height:22px;
              border: solid 1px #1e516b;
              color: #000;
            }
        .myGridClass th {
          padding: 4px 2px;
          color: #fff;
          text-align:center;
          line-height:25px;
          font-weight:600;
          font-size:10px;
          background: #1e516b;
          border-left: solid 1px #1e516b;
        }
        .myGridClass .myAltRowClass { background: #1e516b repeat-x top; }
        .myGridClass .myPagerClass { background: #1e516b; }
        .myGridClass .myPagerClass table { margin: 5px 0; }
        .myGridClass .myPagerClass td {
          border-width: 0;
          padding: 0 6px;
          border-left: solid 1px #666;
          font-weight: bold;
          color: #fff;
          line-height: 12px;
        }
        .myGridClass .myPagerClass a { color: #666; text-decoration: none; }
        .myGridClass .myPagerClass a:hover { color: #000; text-decoration: none; } 
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
            <h1>Shopping Cart</h1><br />
        <div>
        </div>
        <p>
            &nbsp;</p>
        <p>
            Available Products in the Store</p>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" CssClass="myGridClass" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="PRODUCTID" HeaderText="PRODUCTID" SortExpression="PRODUCTID" InsertVisible="False" Visible="False" />
                <asp:BoundField DataField="PRODUCTNAME" HeaderText="Product Name" SortExpression="PRODUCTNAME" />
                <asp:BoundField DataField="UNITPRICE" HeaderText="Unit Price" SortExpression="UNITPRICE" />
                <asp:BoundField DataField="REMAININGQTY" HeaderText="Available Quantity" SortExpression="REMAININGQTY" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MyProjectCS %>" ProviderName="<%$ ConnectionStrings:MyProjectCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;ORDER_LINES&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyProjectCS %>" ProviderName="<%$ ConnectionStrings:MyProjectCS.ProviderName %>" SelectCommand="SELECT &quot;PRODUCTID&quot;, &quot;UNITPRICE&quot;, &quot;PRODUCTNAME&quot;, &quot;REMAININGQTY&quot; FROM &quot;V_PRODUCTS_LIST&quot; WHERE (&quot;STOREID&quot; = :STOREID)">
            <SelectParameters>
                <asp:SessionParameter Name="STOREID" SessionField="SIDSL" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        Add the items in your cart<br />
        <br />
             <asp:Label ID="SelectProduct" runat="server" Text="Select Product "></asp:Label><br />
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="ProductName" DataValueField="ProductID" Height="25px" Width="216px">
        </asp:DropDownList>
            <br />
            <asp:Label ID="EnterQty" runat="server" Text=" Enter Quantity"></asp:Label><br />
      
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Add To Cart" Class="signupbtn"/>
        <br />
        <asp:Button ID="Button3" runat="server" Text="View Cart" Visible="False" Class="cancelbtn"/>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Go To Payments" Class="cancelbtn" />
               <br />
            <asp:Button ID="Button4" runat="server" Text="Home" Class="homebtn"/>
               </div>
            </div>  
    </form>
</body>
</html>
