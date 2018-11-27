
Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub Login1_Authenticate(sender As Object, e As AuthenticateEventArgs) Handles Login1.Authenticate
        If FormsAuthentication.Authenticate(Login1.UserName, Login1.Password) Then

            FormsAuthentication.RedirectFromLoginPage(Login1.UserName, True)
        Else
            lblOutput.Text = "Login failed. unknown user"
        End If

    End Sub
    Private Sub Login1_LoginError(sender As Object, e As EventArgs) Handles Login1.LoginError
        Session.Add("UserName", Login1.UserName.ToString)

        Session.Add("ErrorTime", System.DateTime.Now.ToString)





    End Sub

End Class
