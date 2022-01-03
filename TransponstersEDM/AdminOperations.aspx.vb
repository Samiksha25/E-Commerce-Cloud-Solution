'Imports System.Windows.Forms
Imports Oracle.ManagedDataAccess.Client

Public Class AdminOperations
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("PurchaseOrder.aspx")

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("NewProduct.aspx")

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("MarkDelivered.aspx")

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Try
            Dim oradb As String = "TNS_ADMIN=C:\Users\91809\Oracle\network\admin;USER ID=MIS531GROUP02;PASSWORD=O1:8ml2,7;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"


            Dim conn As New OracleConnection(oradb)
            conn.Open()
            Dim cmd As New OracleCommand()
            cmd.Parameters.Clear()

            cmd.Connection = conn
            cmd.CommandText = "UPDATEAGEPERIODICALLY"
            cmd.CommandType = CommandType.StoredProcedure
            cmd.ExecuteNonQuery()
            'MessageBox.Show("Age of the users updated successfully.")
            conn.Close()
        Catch ex As Exception When ex.Message <> "Thread was being aborted."
            'MessageBox.Show("Please try again!")

        End Try


    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Response.Redirect("Default.aspx")
    End Sub
End Class