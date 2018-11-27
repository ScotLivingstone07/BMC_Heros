
Partial Class blog
    Inherits System.Web.UI.Page

    Private Sub blog_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblFileText.Text = ""
        Dim data() As String
        data = System.IO.File.ReadAllLines(Server.MapPath("myfiles\Blog.txt"))
        For Each line As String In data
            lblFileText.Text += line + "<br />"
        Next

    End Sub
End Class
