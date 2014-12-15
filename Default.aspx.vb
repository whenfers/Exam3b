Imports System.Threading
Imports System.Globalization

Partial Class _Default
    Inherits System.Web.UI.Page

    Private Property OnSelectedIndexChanged As Object



    Protected Overrides Sub InitializeCulture()
        Dim lang As String = Request("Language1")
   
        If lang IsNot Nothing Or lang <> "" Then
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(lang)
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(lang)
        End If
    End Sub
    

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
       
        tb_name.Focus()
        lb_respon1.Visible = False
        lb_respon2.Visible = False
        lb_respon3.Visible = False
        lb_respon4.Visible = False
        lb_Mr.Visible = False
        lb_Ms.Visible = False
        lb_currency.Visible = False
        lb_responname.Visible = False
        lb_date.Visible = False
        hl_github.Visible = False

    End Sub

    Protected Sub b_submit_Click(sender As Object, e As EventArgs) Handles b_submit.Click
        lb_name.Visible = False
        tb_name.Visible = False
        lb_gender.Visible = False
        cb_male.Visible = False
        cb_female.Visible = False
        Calendar1.Visible = False
        lb_gradua.Visible = False
        tb_salary.Visible = False
        b_submit.Visible = False
        lb_respon1.Visible = True
        lb_respon2.Visible = True
        lb_respon3.Visible = True
        lb_respon4.Visible = True
        lb_Mr.Visible = True
        lb_Ms.Visible = True
        Language1.Visible = False
        lb_selectlang.Visible = False
        lb_responname.Visible = True
        lb_date.Visible = True
        lb_currency.Visible = True
        hl_github.Visible = True

        lb_date.Text = Calendar1.SelectedDate.ToShortDateString()

        Dim money As Decimal = tb_salary.Text
        lb_currency.Text = String.Format("{0:c}", money)

        Dim name As String
        name = tb_name.Text
        If cb_male.Checked Then
            lb_Ms.Text = ""
            lb_responname.Text = name
        Else
            lb_Mr.Text = ""
            lb_responname.Text = name
        End If

    End Sub

End Class
