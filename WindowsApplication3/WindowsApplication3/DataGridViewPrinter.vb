Public Class DataGridViewPrinter
    Dim MyDataGridViewPrinter As DataGridViewPrinter
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Dim con As SqlConnection = New SqlConnection("Data Source=.;Integrated Security=True;AttachDbFilename=|DataDirectory|\SqlDatabase.mdf")
        Dim cmd As SqlCommand = New SqlCommand("SELECT ID, FirstName, LastName, Address FROM CustomerTable", con)
        con.Open()
        Dim myDA As SqlDataAdapter = New SqlDataAdapter(cmd)
        Dim myDataSet As DataSet = New DataSet()
        myDA.Fill(myDataSet, "MyTable")
        DataGridView1.DataSource = myDataSet.Tables("MyTable").DefaultView
        con.Close()
        con = Nothing
    End Sub
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If SetupThePrinting() Then
            PrintDocument1.Print()
        End If
    End Sub

    'The PrintPage action for the PrintDocument control  
    Private Sub PrintDocument1_PrintPage(ByVal sender As System.Object, ByVal e As System.Drawing.Printing.PrintPageEventArgs) Handles PrintDocument1.PrintPage
        Dim more As Boolean = MyDataGridViewPrinter.DrawDataGridView(e.Graphics)
        If more = True Then
            e.HasMorePages = True
        End If
    End Sub

    'The PrintView button  
    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        If SetupThePrinting() Then
            Dim MyPrintPreviewDialog As PrintPreviewDialog = New PrintPreviewDialog()
            MyPrintPreviewDialog.Document = PrintDocument1
            MyPrintPreviewDialog.ShowDialog()
        End If
    End Sub

    Private Function SetupThePrinting() As Boolean
        Dim MyPrintDialog As PrintDialog = New PrintDialog()
        MyPrintDialog.AllowCurrentPage = False
        MyPrintDialog.AllowPrintToFile = False
        MyPrintDialog.AllowSelection = False
        MyPrintDialog.AllowSomePages = False
        MyPrintDialog.PrintToFile = False
        MyPrintDialog.ShowHelp = False
        MyPrintDialog.ShowNetwork = False

        If MyPrintDialog.ShowDialog() <> DialogResult.OK Then
            Return False
        End If

        PrintDocument1.DocumentName = "Customers Report"
        PrintDocument1.PrinterSettings = MyPrintDialog.PrinterSettings
        PrintDocument1.DefaultPageSettings = MyPrintDialog.PrinterSettings.DefaultPageSettings
        PrintDocument1.DefaultPageSettings.Margins = New Margins(40, 40, 40, 40)

        If MessageBox.Show("Do you want the report to be centered on the page", "InvoiceManager - Center on Page", MessageBoxButtons.YesNo, MessageBoxIcon.Question) = DialogResult.Yes Then
            MyDataGridViewPrinter = New DataGridViewPrinter(DataGridView1, PrintDocument1, True, True, "Customers", New Font("Tahoma", 18, FontStyle.Bold, GraphicsUnit.Point), Color.Black, True)
        Else
            MyDataGridViewPrinter = New DataGridViewPrinter(DataGridView1, PrintDocument1, False, True, "Customers", New Font("Tahoma", 18, FontStyle.Bold, GraphicsUnit.Point), Color.Black, True)
        End If
        Return True
    End Function
End Class
