Imports MySql.Data.MySqlClient

Public Class FormLogin


    Dim koneksi As New MySqlConnection
    Dim dtabelmhs As New DataTable
    Dim xadapter As New MySqlDataAdapter
    Dim xreader As MySqlDataReader
    Dim xcommand As New MySqlCommand

    Dim strNIM, strPwd As String

    Sub buatKoneksi()
        Try
            koneksi.ConnectionString = "server=localhost;" _
                                    & "user id=root;" _
                                    & "password=;" _
                                    & "database=dbmahasiswa"
            koneksi.Open()
            With xcommand
                .Connection = koneksi
                .CommandType = CommandType.Text
                .CommandText = "SELECT * FROM tmahasiswa"
            End With

        Catch ex As MySqlException
            MsgBox("gagal koneksi. - " & ex.ErrorCode)
        Finally
            koneksi.Close()
            koneksi.Dispose()
        End Try

    End Sub

    Sub ceklogin() 'panggil di button Login
        strNIM = txtNIM.Text
        strPwd = txtPwd.Text

        Dim nimuser, pwduser As String
        xcommand.CommandText = "select * from tmahasiswa where nim ='" & strNIM & "'"
        If koneksi.State = 0 Then koneksi.Open()
        xreader = xcommand.ExecuteReader
        If xreader.HasRows = True Then
            xreader.Read()
            nimuser = xreader(0) ' index field nim
            pwduser = xreader(12) 'field pwd di tmahasiswa

            'Cek kecocokan antara inputan pwd user dengan pwd dari tabel
            If strPwd = pwduser Then
                MsgBox("LOGIN SUKSES - NIM: " & nimuser)
            Else
                MsgBox("Password salah. Login gagal")
            End If
        Else
            'jika di tmahasiswa tidak ditemukan NIM yang diinputkan 
            MsgBox("Login gagal.: NIM tidak ditemukan di database.")
        End If
        xreader.Close() 'tutup pembacaan record
        koneksi.Close()

    End Sub



    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        ceklogin()
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Me.Close()
    End Sub

    Private Sub FormLogin_Load(sender As Object, e As EventArgs) Handles Me.Load
        buatKoneksi()
    End Sub
End Class