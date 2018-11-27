
Partial Class reviewFeedback
    Inherits System.Web.UI.Page

    Private Sub reviewFeedback_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblFeedback.Text = ""
        Dim data() As String
        data = System.IO.File.ReadAllLines(Server.MapPath("myFiles\Feedback.txt"))
        For Each line As String In data
            lblFeedback.Text += line + "<br />"
        Next
    End Sub
End Class
