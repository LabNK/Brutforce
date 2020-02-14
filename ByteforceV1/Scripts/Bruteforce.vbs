set WshShell = createobject("wscript.shell") 


strdatei="C:\Users\menge\Desktop\ByteforceV1\Scripts\forced.txt"
Const ForReading = 1
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objTest = objFSO.GetFile(strdatei)
If objTest.Size > 0 Then
Set objFile = objFSO.OpenTextFile(strdatei, ForReading)
brutforce = objFile.ReadAll
objFile.Close
end if

wshshell.sendkeys brutforce
