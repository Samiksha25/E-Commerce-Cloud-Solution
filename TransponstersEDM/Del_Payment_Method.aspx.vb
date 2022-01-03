'Imports System.Windows.Forms
Imports Oracle.ManagedDataAccess.Client

Public Class Del_Payment_Method
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Dim oradb As String = "TNS_ADMIN=C:\Users\91809\Oracle\network\admin;USER ID=MIS531GROUP02;PASSWORD=O1:8ml2,7;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"
            Dim conn As New OracleConnection(oradb)
            conn.Open()
            Dim cmd As New OracleCommand
            cmd.Connection = conn

            Dim paymentMethodID As String = DropDownList1.Text

            'Dim userId_sql As String = "select max(cartid) from carts"
            'cmd = New OracleCommand(userId_sql, conn)
            'cmd.CommandType = CommandType.Text
            'Dim reader As OracleDataReader
            'reader = cmd.ExecuteReader()
            'reader.Read()
            'Dim v_uid As String = reader.GetString(0)
            Dim v_uid As String = Session("CIDSL")

            ' Dim sql1 As String = "select useremail from users where userid = '" + v_uid + "'"
            cmd.CommandText = "Update Carts SET paymentmodeid = '" + paymentMethodID + "' WHERE cartid = '" + v_uid + "'"
            ' cmd.Parameters.Add(New OracleParameter("var1", paymentMethodID))
            ' cmd.Parameters.Add(New OracleParameter("var2", c_id))


            cmd.CommandType = CommandType.Text
            cmd.ExecuteNonQuery()
            conn.Close()
            'MessageBox.Show("Payment Mode Updated successfully")
        Catch ex As Exception When ex.Message <> "Thread was being aborted."
            'MessageBox.Show("Please try again!")

        End Try


    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList2.SelectedIndexChanged

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Try
            Dim oradb As String = "TNS_ADMIN=C:\Users\91809\Oracle\network\admin;USER ID=MIS531GROUP02;PASSWORD=O1:8ml2,7;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"


            Dim conn As New OracleConnection(oradb)
            conn.Open()

            Dim cmd As New OracleCommand
            cmd.Connection = conn
            cmd.Parameters.Clear()
            Dim reader As OracleDataReader

            ' Dim userId_sql As String = "select max(cartid) from carts"
            'cmd = New OracleCommand(userId_sql, conn)
            'cmd.CommandType = CommandType.Text
            'Dim userReader As OracleDataReader
            'userReader = cmd.ExecuteReader()
            'userReader.Read()
            Dim v_uid As String = Session("CIDSL")

            Dim deliveryMethodId As String = DropDownList2.Text
            Dim c_id As String = "CAR100"
            ' Dim sql1 As String = "select useremail from users where userid = '" + v_uid + "'"

            Dim usersql As String = "select totalamount from carts where cartid = '" + v_uid + "'"

            cmd = New OracleCommand(usersql, conn)
            cmd.CommandType = CommandType.Text

            reader = cmd.ExecuteReader()
            reader.Read()

            Dim total_amount As Double = reader.GetDecimal(0)
            Dim selected_delivery_method As String = DropDownList2.Text

            Console.WriteLine(reader.GetString(0))
            If total_amount < 50 Then
                If String.Compare("DEL101 ", selected_delivery_method) = 0 Then
                    'MessageBox.Show("Can't use this delivery method As Order Total Is less than $50")
                    DropDownList2.Text = "DEL100 "
                End If
            End If

            reader.Close()

            Dim delivery_method_final As String = DropDownList2.Text
            Dim cmd_update_carts As New OracleCommand
            cmd_update_carts.Connection = conn
            cmd_update_carts.Connection = conn
            cmd_update_carts.CommandText = "Update Carts SET deliverymodeid = '" + delivery_method_final + "' WHERE cartid = '" + v_uid + "'"
            cmd_update_carts.CommandType = CommandType.Text
            cmd_update_carts.ExecuteNonQuery()
            'MessageBox.Show("Delivery Method Updated Successfully!")
            Response.Redirect("OrderDetails.aspx")

        Catch ex As Exception When ex.Message <> "Thread was being aborted."
            'MessageBox.Show("Please try again!")
        End Try


    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("UserHomePage.aspx")
    End Sub
End Class