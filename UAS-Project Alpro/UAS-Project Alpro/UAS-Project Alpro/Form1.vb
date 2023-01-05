Imports MySql.Data.MySqlClient
Public Class Form1

    Dim koneksi As New MySqlConnection
    Dim dtabelmhs As New DataTable
    Dim xadapter As New MySqlDataAdapter
    Dim xreader As MySqlDataReader
    Dim xcommand As New MySqlCommand

    Dim Isilist As ListViewItem
    Dim baris As Integer
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load


        buatKoneksi()
        loadListView()
        TampilDataList()
    End Sub

    Sub buatKoneksi()
        Try
            koneksi.ConnectionString = "server=localhost;" _
                                    & "user id=root; " _
                                    & "password=;" _
                                    & "database=dbmahasiswa"
            koneksi.Open()
            With xcommand
                .Connection = koneksi
                .CommandType = CommandType.Text
                .CommandText = "SELECT * FROM tmahasiswa"
            End With

            MsgBox("koneksi sukses")
        Catch ex As MySqlException
            MsgBox("gagal koneksi. - " & ex.ErrorCode)
        Finally
            koneksi.Close()
            koneksi.Dispose()
        End Try

    End Sub

    Sub loadListView()
        With ListView1
            .View = View.Details
            .GridLines = True
            .FullRowSelect = True
            .Scrollable = True
        End With
        With ListView1.Columns
            .Add("NIM", 80)
            .Add("Nama", 140)
            .Add("J. Kelamin", 60)
            .Add("Tgl Lahir", 80)
            .Add("Alamat Asal", 110)
            .Add("Kota Asal", 100)
            .Add("Alamat Malang", 100)
            .Add("Agama", 60)
            .Add("Thn Lulus SMA", 100)
            .Add("Program Kelas", 100)
            .Add("Email", 100)
            .Add("Kelas", 100)

        End With
    End Sub

    Sub TampilDataList()
        xcommand.CommandText = "SELECT * FROM tmahasiswa"
        If koneksi.State = 0 Then koneksi.Open() 'read field per baris
        xreader = xcommand.ExecuteReader
        If xreader.HasRows = True Then 'jika query berhasil
            While xreader.Read()
                With ListView1
                    Isilist = .Items.Add(xreader(0)) 'NIM
                    .Items(baris).SubItems().Add(xreader(1)) 'Nama lengkap
                    .Items(baris).SubItems().Add(xreader(2)) 'Jenis kelamin 
                    .Items(baris).SubItems().Add(xreader(3)) 'Tgl lahir
                    .Items(baris).SubItems().Add(xreader(4)) 'Alamat asal
                    .Items(baris).SubItems().Add(xreader(5)) 'Kota Asal

                    If xreader(6).ToString() <> "" Then
                        .Items(baris).SubItems().Add(xreader(6)) 'Alamat malang
                    Else
                        .Items(baris).SubItems().Add("")
                    End If

                    .Items(baris).SubItems().Add(xreader(7)) 'Agama
                    .Items(baris).SubItems().Add(xreader(8).ToString()) 'Tahun lulus sma
                    .Items(baris).SubItems().Add(xreader(9)) 'Program kelas
                    If xreader(10).ToString() <> "" Then
                        .Items(baris).SubItems().Add(xreader(10)) 'Alamat malang
                    Else
                        .Items(baris).SubItems().Add("")
                    End If

                    .Items(baris).SubItems().Add(xreader(11)) 'Kelas
                End With
                baris += 1
            End While
        Else
            MsgBox("Tidak ada record dalam tabel")
        End If
        xreader.Close()
        koneksi.Close()
    End Sub

    Sub simpanData()
        Dim vnim, vnama, vjk, vtgllahir, valamatasal, vkotaasal, valamatmlg As String
        Dim vagama, vprogram, vemail, vkelas, vpwd As String
        Dim vlulus As String

        vnim = txtnim.Text
        vnama = txtnama.Text
        vjk = cbojk.Text
        vtgllahir = Format(dtplahir.Value, "yyyy-MM-dd")
        valamatasal = txtalamatasal.Text
        vkotaasal = txtkotaasal.Text
        valamatmlg = txtalamatmalang.Text
        vagama = cboagama.Text
        vlulus = Val(txtlulussma.Text)
        vprogram = cboprogram.Text
        vemail = txtemail.Text
        vkelas = cbokelas.Text
        vpwd = vnim

        'Query insert
        Dim sqlku As String
        sqlku = "INSERT INTO tmahasiswa VALUES ('" & vnim & "','" &
        vnama & "','" &
        vjk & "','" &
        vtgllahir & "','" &
        valamatasal & "','" &
        vkotaasal & "','" &
        valamatmlg & "','" &
        vagama & "'," &
        vlulus & ",'" &
        vprogram & "','" &
        vemail & "','" &
        vkelas & "','" &
        vpwd & "')"

        Try
            xadapter = New MySqlDataAdapter(sqlku, koneksi)
            xcommand.CommandText = sqlku

            If koneksi.State = 0 Then
                koneksi.Open()
            End If
            xcommand.ExecuteNonQuery()
            MsgBox("Data Tersimpan", vbInformation, "Pesan")
        Catch ex As Exception
            MsgBox(Err.Description)
            Exit Sub
        Finally
            koneksi.Close()
        End Try
    End Sub

    Private Sub btnrefresh_Click(sender As Object, e As EventArgs) Handles btnrefresh.Click
        ListView1.Items.Clear()
        baris = 0
        TampilDataList()
    End Sub

    Private Sub btnsimpan_Click(sender As Object, e As EventArgs) Handles btnsimpan.Click
        simpanData()
    End Sub

    Private Sub btnkosongkan_Click(sender As Object, e As EventArgs) Handles btnkosongkan.Click
        txtnim.Text = ""
        txtnama.Text = ""
        txtalamatasal.Text = ""
        txtalamatmalang.Text = ""
        txtemail.Text = ""
        txtkotaasal.Text = ""
        txtlulussma.Text = ""
        cboagama.SelectedIndex = 0
        cbojk.SelectedIndex = 0
        cbokelas.SelectedIndex = 0
        cboprogram.SelectedIndex = 0
    End Sub
End Class
