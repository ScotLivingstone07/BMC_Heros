
Partial Class stats
    Inherits System.Web.UI.Page

    Private Sub stats_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblTotal.Text = myVars.currentUser
        lblIndex.Text = myVars.userIndex
    End Sub

End Class
