Imports System.Data.OleDb
'Imports System.Windows.Forms
Imports System.Data.SqlClient
Imports Oracle.ManagedDataAccess.Client
Imports System.Threading

Public Class OrderDetails
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub SqlDataSource2_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource2.Selecting


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Dim oradb As String = "TNS_ADMIN=C:\Users\91809\Oracle\network\admin;USER ID=MIS531GROUP02;PASSWORD=O1:8ml2,7;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"


            Dim conn As New OracleConnection(oradb)
            conn.Open()

            Dim cmd As New OracleCommand
            cmd.Connection = conn
            cmd.Parameters.Clear()
            Dim v_uid As String = Session("CIDSL")



            Dim cmdCallProcedureUpdateCartsInCart As New OracleCommand()
            cmdCallProcedureUpdateCartsInCart.Parameters.Clear()

            cmdCallProcedureUpdateCartsInCart.Connection = conn
            cmdCallProcedureUpdateCartsInCart.CommandText = "p_cartStatus"
            cmdCallProcedureUpdateCartsInCart.CommandType = CommandType.StoredProcedure

            cmdCallProcedureUpdateCartsInCart.Parameters.Add(New OracleParameter("v_custid", OracleDbType.Char)).Value = Session("UIDLI")
            cmdCallProcedureUpdateCartsInCart.Parameters.Add(New OracleParameter("v_cartid", OracleDbType.Char)).Value = Session("CIDSL")
            cmdCallProcedureUpdateCartsInCart.ExecuteNonQuery()
            conn.Close()
            Button1.Enabled = False
            Button.Enabled = False
            Response.Redirect("OrderConfirmed.aspx")

        Catch ex As Exception When ex.Message <> "Thread was being aborted."
            'MessageBox.Show("Please try again!")

        End Try



    End Sub

    Protected Sub Button_Click(sender As Object, e As EventArgs) Handles Button.Click
        Response.Redirect("AddToCart.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("UserHomePage.aspx")
    End Sub
End Class