Public Class Form1
    Private Sub brnStart_Click(sender As Object, e As EventArgs) Handles BtnStart.brnStart.Click
    
    MsgBox("Hello World")
    MsgBox("How Are you?")
    MsgBox("I hope you are well")

    End Sub

    Private Sub btnGo_Click(sender As Object, e As EventArgs) Handles btnGo.Click

    MessageBox.Show("Hi")

    End Sub

    Private Sub varBtn_Click(sender As Object, e As EventArgs) Handles varBtn.Click
        
        Dim stFirstName As String
        stFirstName = "Kevin"
        MessageBox.Show("Hello" & stFirstName)
    
    End Sub

    Private Sub btnDaTypes_Click(sender As Object, e As EventArgs) Handles btnDaTypes.Click

    Dim stMake As String
    Dim stModel As String
    Dim iDoors As Integer
    Dim stColor As String

    stMake = "Ford"
    stModel - "Escort"
    iDoors = 4
    stColor = "red"

    End Sub

End Class
