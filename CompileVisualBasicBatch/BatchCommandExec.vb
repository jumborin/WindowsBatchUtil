Module Main
  Sub Main()
    Dim Command as String
    Dim WSH As Object
    Command = "dir > test.txt"
    If Len(Command) > 0 Then
      WSH = CreateObject("WScript.Shell")
      WSH.Exec("%ComSpec% /c " & Command)
    End If
  End Sub
End Module