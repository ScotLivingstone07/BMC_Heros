
Partial Class index
    Inherits System.Web.UI.Page

    Private Sub index_Load(sender As Object, e As EventArgs) Handles Me.Load
        If User.Identity.IsAuthenticated Then
            lblOutput.Text = "Welcome " + User.Identity.Name
        Else
            lblOutput.Text = "Welcome anonymous"
        End If
        lblFileText.Text = ""
        Dim data() As String
        data = System.IO.File.ReadAllLines(Server.MapPath("myfiles\Superhero.txt"))
        For Each line As String In data
            lblFileText.Text += line + "<br />"
        Next
        myVars.userIndex += 1
    End Sub

    Private Sub index_Unload(sender As Object, e As EventArgs) Handles Me.Unload
        myVars.userIndex += -1
    End Sub
End Class
