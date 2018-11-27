Imports System.IO
Partial Class feedback
    Inherits System.Web.UI.Page
    Dim a As StreamReader
    Dim b As String
    Dim c As String = "Admin/myFiles/Feedback.txt"

    Protected Sub btnSend_Click(sender As Object, e As EventArgs) Handles btnSend.Click
        If TextBox2.Text = Nothing Then
            MsgBox("Please enter feedback")
        Else
            File.AppendAllText(c, TextBox2.Text & vbCrLf)
            TextBox2.Text = ""
            MsgBox("Thanks for your feedback")
        End If

    End Sub
End Class

