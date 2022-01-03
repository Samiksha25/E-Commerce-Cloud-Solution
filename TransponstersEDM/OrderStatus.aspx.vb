'Imports System.Windows.Forms
Imports Oracle.ManagedDataAccess.Client

Public Class OrderStatus
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Try
            'Dim oradb As String = "TNS_ADMIN=C:\Users\91809\Oracle\network\admin;USER ID=MIS531GROUP02;PASSWORD=O1:8ml2,7;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"
            'Dim conn As New OracleConnection(oradb)
            'conn.Open()
            'Dim selectedCartId As String = GridView1.SelectedValue

            'Dim cmdUpdateCartsToIsDeleted As New OracleCommand
            'cmdUpdateCartsToIsDeleted.Connection = conn
            'cmdUpdateCartsToIsDeleted.Parameters.Clear()
            'cmdUpdateCartsToIsDeleted.Connection = conn
            'cmdUpdateCartsToIsDeleted.CommandText = "Update Carts SET isCancelled = 1,  isintransit = 0 WHERE cartid = '" + selectedCartId + "'"
            'cmdUpdateCartsToIsDeleted.CommandType = CommandType.Text
            'cmdUpdateCartsToIsDeleted.ExecuteNonQuery()
            'conn.Close()
            Button5.Visible = True
        Catch ex As Exception When ex.Message <> "Thread was being aborted."
            'MessageBox.Show("Please try again!")

        End Try

    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("UserHomePage.aspx")
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Try
            Dim oradb As String = "TNS_ADMIN=C:\Users\91809\Oracle\network\admin;USER ID=MIS531GROUP02;PASSWORD=O1:8ml2,7;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"
            Dim conn As New OracleConnection(oradb)
            conn.Open()
            Dim selectedCartId As String = GridView1.SelectedValue

            Dim cmdUpdateCartsToIsDeleted As New OracleCommand
            cmdUpdateCartsToIsDeleted.Connection = conn
            cmdUpdateCartsToIsDeleted.Parameters.Clear()
            cmdUpdateCartsToIsDeleted.Connection = conn
            cmdUpdateCartsToIsDeleted.CommandText = "Update Carts SET isCancelled = 1,  isintransit = 0 WHERE cartid = '" + selectedCartId + "'"
            cmdUpdateCartsToIsDeleted.CommandType = CommandType.Text
            cmdUpdateCartsToIsDeleted.ExecuteNonQuery()
            conn.Close()
        Catch ex As Exception When ex.Message <> "Thread was being aborted."
            'MessageBox.Show("Please try again!")

        End Try
    End Sub
End Class