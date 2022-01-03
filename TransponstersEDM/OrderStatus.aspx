<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="OrderStatus.aspx.vb" Inherits="TransponstersEDM.OrderStatus" %>

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
        <div>
            <br />
            <br />
            <br />
            Current Orders<br />
        </div>
        <asp:GridView ID="GridView1" CssClass="myGridClass" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="CARTID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                <asp:BoundField DataField="CARTID" HeaderText="Order ID" SortExpression="CARTID" />
                <asp:BoundField DataField="CARTSTATUS" HeaderText="Order Status" SortExpression="CARTSTATUS" />
                <asp:BoundField DataField="ORDERDATE" HeaderText="Order Date" SortExpression="ORDERDATE" />
                <asp:BoundField DataField="ESTIMATEDDELIVERYDATE" HeaderText="Estimated Delivery Date" SortExpression="ESTIMATEDDELIVERYDATE" />
                <asp:BoundField DataField="TOTALCARTITEMS" HeaderText="Total Items" SortExpression="TOTALCARTITEMS" />
                <asp:BoundField DataField="TOTALAMOUNT" HeaderText="Total Amount" SortExpression="TOTALAMOUNT"></asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyProjectCS %>" ProviderName="<%$ ConnectionStrings:MyProjectCS.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;ORDERDATE&quot;, &quot;ESTIMATEDDELIVERYDATE&quot;, &quot;TOTALCARTITEMS&quot;, &quot;CARTSTATUS&quot;, &quot;CARTID&quot;, &quot;TOTALAMOUNT&quot; FROM &quot;V_ORDER_SUMMARY&quot; WHERE (&quot;CUSTID&quot; = :CUSTID)">
            <SelectParameters>
                <asp:SessionParameter Name="CUSTID" SessionField="UIDLI" />
            </SelectParameters>
        </asp:SqlDataSource>
        <p>
            Current Order Details</p>
        <p>
            <asp:GridView ID="GridView3" CssClass="myGridClass" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="CARTID" HeaderText="CARTID" SortExpression="CARTID"></asp:BoundField>
                    <asp:BoundField DataField="CUSTID" HeaderText="CUSTID" InsertVisible="False" SortExpression="CUSTID" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME"></asp:BoundField>
                    <asp:BoundField DataField="ORDERDATE" HeaderText="ORDERDATE" SortExpression="ORDERDATE"></asp:BoundField>
                    <asp:BoundField DataField="ESTIMATEDDELIVERYDATE" HeaderText="ESTIMATEDDELIVERYDATE" SortExpression="ESTIMATEDDELIVERYDATE"></asp:BoundField>
                    <asp:BoundField DataField="TOTALCARTITEMS" HeaderText="TOTALCARTITEMS" InsertVisible="False" SortExpression="TOTALCARTITEMS" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="TOTALAMOUNT" HeaderText="TOTALAMOUNT" InsertVisible="False" SortExpression="TOTALAMOUNT" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="CARTSTATUS" HeaderText="CARTSTATUS" SortExpression="CARTSTATUS"></asp:BoundField>
                    <asp:BoundField DataField="PRODUCTID" HeaderText="PRODUCTID" InsertVisible="False" SortExpression="PRODUCTID" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="PRODUCTNAME" HeaderText="PRODUCTNAME" SortExpression="PRODUCTNAME"></asp:BoundField>
                    <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" SortExpression="QUANTITY"></asp:BoundField>
                    <asp:BoundField DataField="UNITPRICE" HeaderText="UNITPRICE" SortExpression="UNITPRICE"></asp:BoundField>
                    <asp:BoundField DataField="LINEPRICE" HeaderText="LINEPRICE" SortExpression="LINEPRICE"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MyProjectCS %>" ProviderName="<%$ ConnectionStrings:MyProjectCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;V_ORDER_SUMMARY&quot; WHERE ((&quot;CUSTID&quot; = :CUSTID) AND (&quot;CARTID&quot; = :CARTID))">
                <SelectParameters>
                    <asp:SessionParameter Name="CUSTID" SessionField="UIDLI" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="CARTID" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        &nbsp;</p>
        <p>
            &nbsp;<asp:Button ID="Button5" runat="server" Text="Cancel" Visible="False" />
        </p>
        <p>
            Old Orders</p>
        <p>
            <asp:GridView ID="GridView2" runat="server" CssClass="myGridClass" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CARTID" HeaderText="CARTID" SortExpression="CARTID" InsertVisible="False" Visible="False" />
                    <asp:BoundField DataField="CUSTID" HeaderText="CUSTID" SortExpression="CUSTID" InsertVisible="False" Visible="False" />
                    <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
                    <asp:BoundField DataField="ORDERDATE" HeaderText="ORDERDATE" SortExpression="ORDERDATE" />
                    <asp:BoundField DataField="DELIVERYDATE" HeaderText="DELIVERYDATE" SortExpression="DELIVERYDATE"></asp:BoundField>
                    <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS"></asp:BoundField>
                    <asp:BoundField DataField="TOTALAMOUNT" HeaderText="TOTALAMOUNT" SortExpression="TOTALAMOUNT"></asp:BoundField>
                    <asp:BoundField DataField="PRODUCTID" HeaderText="PRODUCTID" InsertVisible="False" SortExpression="PRODUCTID" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="PRODUCTNAME" HeaderText="PRODUCTNAME" SortExpression="PRODUCTNAME"></asp:BoundField>
                    <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" SortExpression="QUANTITY"></asp:BoundField>
                    <asp:BoundField DataField="UNITPRICE" HeaderText="UNITPRICE" SortExpression="UNITPRICE"></asp:BoundField>
                    <asp:BoundField DataField="LINEPRICE" HeaderText="LINEPRICE" SortExpression="LINEPRICE"></asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyProjectCS %>" ProviderName="<%$ ConnectionStrings:MyProjectCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;V_ORDER_HISTORY&quot; WHERE (&quot;CUSTID&quot; = :CUSTID)">
            <SelectParameters>
                <asp:SessionParameter Name="CUSTID" SessionField="UIDLI" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        <asp:Button ID="Button4" runat="server" Text="Home" Class="homebtn"/>
    </form>
</body>
</html>
