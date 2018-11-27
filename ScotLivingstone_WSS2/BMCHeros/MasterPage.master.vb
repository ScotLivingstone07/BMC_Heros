
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Protected Sub btnBrowser_Click(sender As Object, e As EventArgs) Handles btnBrowser.Click
        Dim s As String = ""
        With Request.Browser

            s &= "Type= " & .Type & vbCrLf & "  "

            s &= "Name= " & .Browser & vbCrLf & "  "

            s &= "Version= " & .Version & vbCrLf & "  "

        End With
        TextBox1.Text = s
    End Sub
End Class

