Public Class UserHomePage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub StoreLocator_Click(sender As Object, e As EventArgs) Handles StoreLocator.Click
        Response.Redirect("StoreLocator.aspx")
    End Sub

    Protected Sub OrderSummary_Click(sender As Object, e As EventArgs) Handles OrderSummary.Click
        Response.Redirect("OrderStatus.aspx")
    End Sub

    Protected Sub OrderHistory_Click(sender As Object, e As EventArgs) Handles OrderHistory.Click
        Response.Redirect("OrderStatus.aspx")
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Response.Redirect("Default.aspx")
    End Sub
End Class