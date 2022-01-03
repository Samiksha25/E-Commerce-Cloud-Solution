Imports System.Data.OleDb
'Imports System.Windows.Forms
Imports System.Data.SqlClient
Imports Oracle.ManagedDataAccess.Client


Public Class AdminSignUp
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub CheckUser_Click(sender As Object, e As EventArgs) Handles CheckUser.Click
        Try
            Dim oradb As String = "TNS_ADMIN=C:\Users\91809\Oracle\network\admin;USER ID=MIS531GROUP02;PASSWORD=O1:8ml2,7;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"
            Dim conn As New OracleConnection(oradb)


            Dim cmd As New OracleCommand()
            'Dim reader As OracleDataReader
            conn.Open()
            cmd.Connection = conn

            Dim lname As String = LastName.Text
            Dim mname As String = MiddleName.Text
            Dim fname As String = FirstName.Text
            Dim gen As String = Gender.Text
            Dim datebirth As Date = DOB.Text
            Dim ugid As String = GroupID.Text
            Dim uemail As String = Email.Text
            Dim uid As String = "1"

            cmd.CommandText = "P_INSERT_NEW_USER"
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.Add(New OracleParameter("v_fname", OracleDbType.Varchar2)).Value = fname
            cmd.Parameters.Add(New OracleParameter("v_mname", OracleDbType.Varchar2)).Value = mname
            cmd.Parameters.Add(New OracleParameter("v_lname", OracleDbType.Varchar2)).Value = lname
            cmd.Parameters.Add(New OracleParameter("v_gender", OracleDbType.Char)).Value = gen
            cmd.Parameters.Add(New OracleParameter("v_dob", OracleDbType.Date)).Value = datebirth
            cmd.Parameters.Add(New OracleParameter("v_ugroupid", OracleDbType.Char)).Value = ugid
            cmd.Parameters.Add(New OracleParameter("v_uemail", OracleDbType.Varchar2)).Value = uemail
            cmd.ExecuteNonQuery()
            conn.Close()
            'MessageBox.Show("User Registered")

        Catch ex As Exception

            'MessageBox.Show("User already exists")

        End Try
    End Sub

    Protected Sub CreateUser_Click(sender As Object, e As EventArgs) Handles CreateUser.Click
        Try
            Dim oradb As String = "TNS_ADMIN=C:\Users\91809\Oracle\network\admin;USER ID=MIS531GROUP02;PASSWORD=O1:8ml2,7;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"
            Dim conn As New OracleConnection(oradb)


            Dim cmd As New OracleCommand()
            Dim reader As OracleDataReader
            conn.Open()
            cmd.Connection = conn

            Dim sql As String = "select 'USR' || userIDSeq.currval from dual"

            cmd = New OracleCommand(sql, conn)
            cmd.CommandType = CommandType.Text

            reader = cmd.ExecuteReader()
            reader.Read()
            Dim v_uid As String = reader.GetString(0)

            Dim sql1 As String = "select useremail from users where userid = '" + v_uid + "'"

            cmd = New OracleCommand(sql1, conn)
            cmd.CommandType = CommandType.Text

            reader = cmd.ExecuteReader()
            reader.Read()
            Dim uemail As String = reader.GetString(0)

            Dim uphone As String = Phone.Text
            Dim pwd As String = Password.Text
            Session("UIDSU") = v_uid

            cmd.CommandText = "P_INSERT_NEW_USER_ATTR_ADMIN"
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.Add(New OracleParameter("v_uemail", OracleDbType.Varchar2)).Value = uemail
            cmd.Parameters.Add(New OracleParameter("v_userid", OracleDbType.Char)).Value = v_uid
            cmd.Parameters.Add(New OracleParameter("v_phone", OracleDbType.Decimal)).Value = uphone
            cmd.Parameters.Add(New OracleParameter("v_pwd", OracleDbType.Varchar2)).Value = pwd
            cmd.ExecuteNonQuery()

            conn.Close()
            'MessageBox.Show("You are being redirected to LogIn Page")
            Response.Redirect("LogInPage.aspx")

        Catch ex As Exception When ex.Message <> "Thread was being aborted."
            'MessageBox.Show("Please enter the details again!")
        End Try

    End Sub

End Class