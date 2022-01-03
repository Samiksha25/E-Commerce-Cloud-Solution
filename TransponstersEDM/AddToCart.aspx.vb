Imports System.Data.OleDb
' Imports System.Windows.Forms
Imports Oracle.ManagedDataAccess.Client

Public Class AddToCart
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Dim oradb As String = "TNS_ADMIN=C:\Users\91809\Oracle\network\admin;USER ID=MIS531GROUP02;PASSWORD=O1:8ml2,7;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"
            Dim conn As New OracleConnection(oradb)
            conn.Open()
            Dim cmd As New OracleCommand
            cmd.Connection = conn

            Dim v_uid As String = Session("UIDLI")
            Dim v_cid As String = Session("CIDSL")


            Dim productID As String = DropDownList1.Text

            Dim quantity As Integer = Convert.ToDecimal(TextBox1.Text)

            If IsNothing(quantity) Then
                quantity = 0
            End If

            'cmd.CommandText = "Insert into order_lines (cartid, productid, quantity) values (:var1, :var2, :var3)"
            'cmd.Parameters.Add(New OracleParameter("var1", v_cid))
            'cmd.Parameters.Add(New OracleParameter("var2", productID))
            'cmd.Parameters.Add(New OracleParameter("var3", quantity))


            'cmd.CommandType = CommandType.Text

            'cmd.ExecuteNonQuery()



            cmd.CommandText = "P_INSERT_ORDER_LINES"
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.Add(New OracleParameter("orderCartID", OracleDbType.Char)).Value = v_cid
            cmd.Parameters.Add(New OracleParameter("orderLineProductID", OracleDbType.Char)).Value = productID
            cmd.Parameters.Add(New OracleParameter("orderLineQuantity", OracleDbType.Decimal)).Value = quantity
            cmd.ExecuteNonQuery()

            conn.Close()
            Button3.Visible = True
            'MessageBox.Show("Product Added to cart successfully.")


        Catch ex As Exception When ex.Message <> "Thread was being aborted."
            'MessageBox.Show("Please try again!")

        End Try


    End Sub

    Protected Sub SqlDataSource2_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource2.Selecting


    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Del_Payment_Method.aspx")
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("ViewCart.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("UserHomePage.aspx")
    End Sub
End Class