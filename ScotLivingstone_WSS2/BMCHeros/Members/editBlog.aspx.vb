
Partial Class editBlog
    Inherits System.Web.UI.Page

    Protected Sub btnUpload_Click(sender As Object, e As EventArgs) Handles btnUpload.Click
        Dim fileNameOnly As String
        fileNameOnly = System.IO.Path.GetFileName(fulFile.PostedFile.FileName)
        Try
            fulFile.PostedFile.SaveAs(Server.MapPath("myfiles\" & fileNameOnly))
            lblSuccess.Text = "Upload successful"

            lblFileName.Text = "File name:" & fulFile.PostedFile.FileName
            lblFileSize.Text = "File size:" & fulFile.PostedFile.ContentLength
            lblFileType.Text = "File type:" & fulFile.PostedFile.ContentType
        Catch ex As Exception
            lblSuccess.Text = "Upload NOT successful"
        End Try
        SqlDataSource1.Insert()
    End Sub
End Class
