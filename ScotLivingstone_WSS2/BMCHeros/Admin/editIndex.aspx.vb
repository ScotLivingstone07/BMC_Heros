
Partial Class editIndex
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

    End Sub
    Protected Sub btnUploadPic_Click(sender As Object, e As EventArgs) Handles btnUploadPic.Click
        If fulPicture.PostedFile.ContentType.Contains("image") Then
            lblMessage.Text = fulPicture.PostedFile.ContentType
        Else
            lblMessage.Text = "Invalid file type"
            Exit Sub
        End If


        Try
            fulPicture.PostedFile.SaveAs(Server.MapPath("myfiles\Me.jpg"))
        Catch ex As Exception
            lblMessage.Text = "Invalid file type"
        End Try

    End Sub
End Class
