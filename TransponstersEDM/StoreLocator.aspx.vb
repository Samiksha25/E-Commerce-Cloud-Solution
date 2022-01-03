Imports System.Data.OleDb
'Imports System.Windows.Forms
Imports System.Data.SqlClient
Imports Oracle.ManagedDataAccess.Client
Imports GlobalVariables


Public Class StoreLocator
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Try
            Dim sid As String = GridView1.SelectedValue

            Session("SIDSL") = sid

            Dim oradb As String = "TNS_ADMIN=C:\Users\91809\Oracle\network\admin;USER ID=MIS531GROUP02;PASSWORD=O1:8ml2,7;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"
            Dim conn As New OracleConnection(oradb)
            conn.Open()
            Dim cmd As New OracleCommand
            Dim reader As OracleDataReader
            cmd.Connection = conn

            Dim tax_sql As String = "select distinct taxrate from v_store_selector where storeid = '" + sid + "'"
            cmd = New OracleCommand(tax_sql, conn)
            cmd.CommandType = CommandType.Text
            Dim userReader As OracleDataReader
            userReader = cmd.ExecuteReader()
            userReader.Read()
            Dim tax As String = userReader.GetString(0)

            Dim ccreatedate As Date = System.DateTime.Now
            Dim crncy As String = "$"
            Dim cartflag As Integer = 1
            Dim trnstflag As Integer = 0
            Dim delflag As Integer = 0
            Dim cancflag As Integer = 0
            Dim uid As String = Session("UIDLI")


            cmd.CommandText = "Insert into carts (CARTCREATIONDATE, CURRENCY, ISINCART, ISINTRANSIT, ISDELIVERED, ISCANCELLED, CUSTID, ordertax) values (:var1, :var2, :var3, :var4, :var5, :var6, :var7, :var8)"
            cmd.Parameters.Add(New OracleParameter("var1", ccreatedate))
            cmd.Parameters.Add(New OracleParameter("var2", crncy))
            cmd.Parameters.Add(New OracleParameter("var3", cartflag))
            cmd.Parameters.Add(New OracleParameter("var4", trnstflag))
            cmd.Parameters.Add(New OracleParameter("var5", delflag))
            cmd.Parameters.Add(New OracleParameter("var6", cancflag))
            cmd.Parameters.Add(New OracleParameter("var7", uid))
            cmd.Parameters.Add(New OracleParameter("var8", tax))
            cmd.CommandType = CommandType.Text
            cmd.ExecuteNonQuery()

            Dim sql As String = "select 'CAR' || cartIDSeq.currval from dual"

            cmd = New OracleCommand(sql, conn)
            cmd.CommandType = CommandType.Text

            reader = cmd.ExecuteReader()
            reader.Read()
            Dim v_cid As String = reader.GetString(0)
            Session("CIDSL") = v_cid
            conn.Close()
            Response.Redirect("AddToCart.aspx")
        Catch ex As Exception When ex.Message <> "Thread was being aborted."
            'MessageBox.Show("Please select the store again")
        End Try


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim zip As String = TextBox1.Text
        Session("ZIPSL") = zip
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("UserHomePage.aspx")
    End Sub
End Class

