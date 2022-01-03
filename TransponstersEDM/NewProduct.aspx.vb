'Imports System.Windows.Forms
Imports Oracle.ManagedDataAccess.Client

Public Class NewProduct
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Try
            Dim oradb As String = "TNS_ADMIN=C:\Users\91809\Oracle\network\admin;USER ID=MIS531GROUP02;PASSWORD=O1:8ml2,7;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"
            Dim conn As New OracleConnection(oradb)
            conn.Open()

            Dim productName As String = tb_productname.Text
            Dim manufacturer As String = tb_manufacturer.Text
            Dim brand As String = tb_brand.Text
            Dim subbrand As String = tb_subbrand.Text
            Dim producttype As String = tb_producttype.Text
            Dim productsize As String = tb_productsize.Text
            Dim unitofmeasure As String = tb_unitofmeasure.Text
            Dim unitprice As Double = Convert.ToDouble(tb_unitprice.Text)
            Dim quantity As Integer = Convert.ToDecimal(tb_quantity.Text)

            Dim cmdCreateProduct As New OracleCommand
            cmdCreateProduct.Connection = conn

            cmdCreateProduct.CommandText = "Insert into products (productid, productname, manufacturer, brand, subbrand, producttype, 
                                        productsize, unitofmeasure, unitprice) 
                                values (:var1, :var2, :var3, :var4, :var5, :var6, :var7, :var8, :var9)"

            cmdCreateProduct.Parameters.Add(New OracleParameter("var1", "1"))
            cmdCreateProduct.Parameters.Add(New OracleParameter("var2", productName))
            cmdCreateProduct.Parameters.Add(New OracleParameter("var3", manufacturer))
            cmdCreateProduct.Parameters.Add(New OracleParameter("var4", brand))
            cmdCreateProduct.Parameters.Add(New OracleParameter("var5", subbrand))
            cmdCreateProduct.Parameters.Add(New OracleParameter("var6", producttype))
            cmdCreateProduct.Parameters.Add(New OracleParameter("var7", productsize))
            cmdCreateProduct.Parameters.Add(New OracleParameter("var8", unitofmeasure))
            cmdCreateProduct.Parameters.Add(New OracleParameter("var9", unitprice))
            cmdCreateProduct.ExecuteNonQuery()

            Dim cmdGetProductId As New OracleCommand
            cmdGetProductId.Connection = conn

            Dim productId_sql As String = "select max(productId) from products"
            cmdGetProductId = New OracleCommand(productId_sql, conn)
            cmdGetProductId.CommandType = CommandType.Text
            Dim productIDReader As OracleDataReader
            productIDReader = cmdGetProductId.ExecuteReader()
            productIDReader.Read()

            Dim newProductId As String = productIDReader.GetString(0)

            Dim supplierID As String = DropDownList2.Text
            Dim CurrentDateTime As String = DateTime.Now.ToString("dd-MMM-yyyy")

            Dim cmdCreatePurchaseOrder As New OracleCommand
            cmdCreatePurchaseOrder.Connection = conn

            cmdCreatePurchaseOrder.CommandText = "Insert into purchase_orders (purchaseorderid, purchaseorderdate, supplierid) 
                                values (:var1, :var2, :var3)"

            cmdCreatePurchaseOrder.Parameters.Add(New OracleParameter("var1", "1"))
            cmdCreatePurchaseOrder.Parameters.Add(New OracleParameter("var2", CurrentDateTime))
            cmdCreatePurchaseOrder.Parameters.Add(New OracleParameter("var3", supplierID))
            cmdCreatePurchaseOrder.ExecuteNonQuery()

            Dim cmdGetPurchaseOrderId As New OracleCommand
            cmdGetPurchaseOrderId.Connection = conn

            Dim purchaseOrderId_sql As String = "select max(purchaseorderid) from purchase_orders"
            cmdGetPurchaseOrderId = New OracleCommand(purchaseOrderId_sql, conn)
            cmdGetPurchaseOrderId.CommandType = CommandType.Text
            Dim purchaseOrderIDReader As OracleDataReader
            purchaseOrderIDReader = cmdGetPurchaseOrderId.ExecuteReader()
            purchaseOrderIDReader.Read()

            Dim purchaseOrderId As String = purchaseOrderIDReader.GetString(0)

            Dim cmdCreatePurchaseOrderDetails As New OracleCommand
            cmdCreatePurchaseOrderDetails.Connection = conn

            cmdCreatePurchaseOrderDetails.CommandText = "Insert into purchase_order_details (purchaseorderid, productid, quantity) 
                                values (:var1, :var2, :var3)"

            cmdCreatePurchaseOrderDetails.Parameters.Add(New OracleParameter("var1", purchaseOrderId))
            cmdCreatePurchaseOrderDetails.Parameters.Add(New OracleParameter("var2", newProductId))
            cmdCreatePurchaseOrderDetails.Parameters.Add(New OracleParameter("var3", quantity))
            cmdCreatePurchaseOrderDetails.ExecuteNonQuery()
            conn.Close()
            'MessageBox.Show("New product order created successfully.")
            Response.Redirect("NewProductAdded.aspx")
        Catch ex As Exception When ex.Message <> "Thread was being aborted."
            'MessageBox.Show("Please try again!")

        End Try

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("AdminOperations.aspx")

    End Sub
End Class