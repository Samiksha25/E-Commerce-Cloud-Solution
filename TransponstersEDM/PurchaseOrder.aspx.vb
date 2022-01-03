'Imports System.Windows.Forms
Imports Oracle.ManagedDataAccess.Client

Public Class PurchaseOrder
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Dim oradb As String = "TNS_ADMIN=C:\Users\91809\Oracle\network\admin;USER ID=MIS531GROUP02;PASSWORD=O1:8ml2,7;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"
            Dim conn As New OracleConnection(oradb)
            conn.Open()

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
            Dim productID As String = DropDownList1.Text
            Dim quantity As Integer = Convert.ToDecimal(TextBox1.Text)

            Dim cmdCreatePurchaseOrderDetails As New OracleCommand
            cmdCreatePurchaseOrderDetails.Connection = conn

            cmdCreatePurchaseOrderDetails.CommandText = "Insert into purchase_order_details (purchaseorderid, productid, quantity) 
                                values (:var1, :var2, :var3)"

            cmdCreatePurchaseOrderDetails.Parameters.Add(New OracleParameter("var1", purchaseOrderId))
            cmdCreatePurchaseOrderDetails.Parameters.Add(New OracleParameter("var2", productID))
            cmdCreatePurchaseOrderDetails.Parameters.Add(New OracleParameter("var3", quantity))
            cmdCreatePurchaseOrderDetails.ExecuteNonQuery()
            'MessageBox.Show("Purchase order created successfully.")
            conn.Close()
        Catch ex As Exception When ex.Message <> "Thread was being aborted."
            'MessageBox.Show("Please try again!")

        End Try


    End Sub



    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("NewProduct.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("AdminOperations.aspx")

    End Sub
End Class