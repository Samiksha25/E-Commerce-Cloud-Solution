'Imports System.Windows.Forms
Imports Oracle.ManagedDataAccess.Client

Public Class MarkDelivered
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Dim oradb As String = "TNS_ADMIN=C:\Users\91809\Oracle\network\admin;USER ID=MIS531GROUP02;PASSWORD=O1:8ml2,7;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"

            Label1.Enabled = False
            Dim conn As New OracleConnection(oradb)
            conn.Open()

            Dim cmd As New OracleCommand
            cmd.Connection = conn
            cmd.Parameters.Clear()

            Dim cartId As String = DropDownList1.Text
            Dim cmd_update_carts As New OracleCommand

            cmd_update_carts.Connection = conn
            cmd_update_carts.CommandText = "Update Carts SET isdelivered = 1, isintransit = 0, isCancelled = 0 WHERE cartid = '" + cartId + "'"
            cmd_update_carts.CommandType = CommandType.Text
            cmd_update_carts.ExecuteNonQuery()
            Label1.Visible = True
            conn.Close()
        Catch ex As Exception When ex.Message <> "Thread was being aborted."
            'MessageBox.Show("Please try again!")

        End Try

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Label1.Visible = False
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("AdminOperations.aspx")
    End Sub
End Class