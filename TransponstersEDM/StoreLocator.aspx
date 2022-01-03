<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StoreLocator.aspx.vb" Inherits="TransponstersEDM.StoreLocator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>StoreLocator</title>
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
    <form id="form1" runat="server" role="search">
        <div class="demo-wrap">
              <img
                class="demo-bg"
                src="imgbg.jpg"
                alt="img"
              >
        <div class="demo-content">
            <h1>Store Locator:</h1><br />
            <label for="search">Enter zipcode to search</label>
            <asp:TextBox ID="TextBox1" runat="server" Text="Search" type="search" placeholder="Search..."></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Go"/><br />
        <br /><br />
        <div class="container">
            <asp:GridView ID="GridView1" runat="server" CssClass="myGridClass" DataKeyNames ="StoreID" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="STOREID" HeaderText="STORE ID" SortExpression="STOREID" InsertVisible="False" Visible="False" />
                    <asp:BoundField DataField="STORENAME" HeaderText="STORE NAME" SortExpression="STORENAME" />
                    <asp:BoundField DataField="STOREADDRLINE1" HeaderText="STORE ADDRLINE 1" SortExpression="STOREADDRLINE1" />
                    <asp:BoundField DataField="STOREADDRLINE2" HeaderText="STORE ADDRLINE 2" SortExpression="STOREADDRLINE2" />
                    <asp:BoundField DataField="STORECITY" HeaderText="STORE CITY" SortExpression="STORECITY" />
                    <asp:BoundField DataField="STORESTATE" HeaderText="STORE STATE" SortExpression="STORESTATE" />
                    <asp:BoundField DataField="STOREZIPCODE" HeaderText="STORE ZIPCODE" SortExpression="STOREZIPCODE" />
                    <asp:BoundField DataField="TAXRATE" HeaderText="TAX RATE" SortExpression="TAXRATE" InsertVisible="False" Visible="False" />
                    <asp:BoundField DataField="STORESELECTORINPUT" HeaderText="STORE SELECTOR INPUT" SortExpression="STORESELECTORINPUT" InsertVisible="False" Visible="False" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyProjectCS %>" ProviderName="<%$ ConnectionStrings:MyProjectCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;V_STORE_SELECTOR&quot; WHERE (&quot;STORESELECTORINPUT&quot; = :TextBox1)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="STORESELECTORINPUT" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" CssClass="myGridClass" runat="server" DataSourceID="SqlDataSource2"/>           
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyProjectCS %>" ProviderName="<%$ ConnectionStrings:MyProjectCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;V_PRODUCTS_LIST&quot; WHERE (&quot;STOREID&quot; = :GridView1)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="STOREID" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            
                 </div>
               </div>
            </div>  
        <p>
            <asp:Button ID="Button2" runat="server" Text="Home" Class="homebtn"/>
        </p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
