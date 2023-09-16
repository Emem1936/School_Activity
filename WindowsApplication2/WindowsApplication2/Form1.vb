Public Class Form1

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
       
        TextBox1.Text() = ""
        TextBox2.Text() = ""
        TextBox3.Text() = ""
        TextBox4.Text() = ""
        Label6.Text() = ""

    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Label6.Text() = (TextBox2.Text() * TextBox3.Text() * TextBox4.Text() * TextBox5.Text()) / 1000
        Dim myitem
        Dim meitem
        myitem = Label6.Text()
        meitem = TextBox1.Text()
        ListBox1.Items.Add(meitem + " " + " " + myitem)
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        TextBox1.Text() = ""
        TextBox2.Text() = ""
        TextBox3.Text() = ""
        TextBox4.Text() = ""
        TextBox5.Text() = ""
        Label6.Text() = ""
        TextBox1.Focus()
    End Sub
End Class
