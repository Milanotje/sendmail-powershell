# Version 6.9
# Copyright 2024 Milan, Inc. 

# BELANGRIJK: PAS AAN NAAR JOU GEBRUIK! vvvv

#Email information
$subject = "BELANGRIJK: Server Status Changed"
$status = "Down"
$color = "#ff0000"
$serverName = "Server01"
$dateTime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$cause = "Onbekend"
$companyName = "HC-IT"
$lastChange = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

#SMTP Settings
$username = "powershell@sunnus.nl"
$topsecret = "8lRiHzXc" #never store passwords like this.
$password = ConvertTo-SecureString $topsecret -AsPlainText -Force
$psCred = New-Object System.Management.Automation.PSCredential -ArgumentList ($username, $password)
$smtp = "smtp.sunnus.nl"
$port = 587

#Address
$to = "174853@student.horizoncollege.nl"
$from = "powershell@sunnus.nl"

# ^^^^

$htmlContent = Get-Content -Path .\Mail.html -Raw
$htmlContent = $htmlContent -replace '\$status', $status
$htmlContent = $htmlContent -replace '\$serverName', $serverName
$htmlContent = $htmlContent -replace '\$dateTime', $dateTime
$htmlContent = $htmlContent -replace '\$cause', $cause
$htmlContent = $htmlContent -replace '\$companyName', $companyName
$htmlContent = $htmlContent -replace '\$lastChange', $lastChange
$htmlContent = $htmlContent -replace '\$color', $color

Send-MailMessage -BodyAsHtml $htmlContent -To $to -Subject $subject -SmtpServer $smtp -From $from -Credential $psCred -Port $port

Write-Output "E-mail is verstuurd."
# SIG # Begin signature block
# MIIFuQYJKoZIhvcNAQcCoIIFqjCCBaYCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDs5trmjE87TaPw
# ojUwB+GCN8bVzquvuF0xMg70+XK6RaCCAyIwggMeMIICBqADAgECAhBAddsCf2pX
# gkn2W6xEHrGrMA0GCSqGSIb3DQEBCwUAMCcxJTAjBgNVBAMMHFBvd2VyU2hlbGwg
# Q29kZSBTaWduaW5nIENlcnQwHhcNMjQwNjEzMDkyMzU0WhcNMjUwNjEzMDk0MzU0
# WjAnMSUwIwYDVQQDDBxQb3dlclNoZWxsIENvZGUgU2lnbmluZyBDZXJ0MIIBIjAN
# BgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAs15PaYYyvW2QnIWv+xKJM8/elmVI
# jUeDZZpVFhEVeb+EfS7keS/hnFxGFdZGQ2srzt1neAWzshA8FsMpXneC3msupdme
# PynhsyvLRuoq+8gAXbnwivzDWWi0p3waxcFQ1wgFWJfY5SoCvtKmYCjQi2b5pgHV
# M2xwMgYs0cbz/8tlAiJaKycCGGg5+K3oJV6T+eHr0zMxqyrLM5gHbHUJIwSHrB9F
# IF/H/3UI5b6P20n7VmQ10wR9vJKxmBFEQXDp139RjE/6z8QQu66GkWD5ikTWOZsS
# KiymwqBwcjh+Z5VwjYk+Az1SivilkNYZJV53AnfL08IebQqOnSd804q+ZQIDAQAB
# o0YwRDAOBgNVHQ8BAf8EBAMCB4AwEwYDVR0lBAwwCgYIKwYBBQUHAwMwHQYDVR0O
# BBYEFO9WDrcLsl1Feab2aOuksGyQyTKoMA0GCSqGSIb3DQEBCwUAA4IBAQAZMqGe
# /3aXqoyK20pLg16y3qGeKYXLHC9DSCg2yVgLIsmGhLLFhn9mQ7tj+9GqcINN0ofB
# 4/4mlnYanrXl7m2oBF2Y3FwDBmc+AYpF48r7fI9VZHF9zivZGQlKxEHvokXjItpV
# 91GJe4UUtl8ZLAzvls+BUMF0XmddOitQZIQi+sOputVF8fchZp4bdmgDQfhUh47Y
# +ThN7fUR31GcEjzNRrbJPAZ6zCqdWTzJnPiCqCQfTBi4DrcAVXbS47xQrX1nJkiv
# lVTHRxTn5B/vpTMn3Wadq3odHnkGzZp1YJXqyGZE56mhSLOyXFAALsJ7bhcVT42F
# ceoxQdcNJ2es41lyMYIB7TCCAekCAQEwOzAnMSUwIwYDVQQDDBxQb3dlclNoZWxs
# IENvZGUgU2lnbmluZyBDZXJ0AhBAddsCf2pXgkn2W6xEHrGrMA0GCWCGSAFlAwQC
# AQUAoIGEMBgGCisGAQQBgjcCAQwxCjAIoAKAAKECgAAwGQYJKoZIhvcNAQkDMQwG
# CisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZI
# hvcNAQkEMSIEIMgeBOxjt4HY4GtYb3OkfJCa43FIeOEic6qo4mJPkdieMA0GCSqG
# SIb3DQEBAQUABIIBAFBYQFNrEmDNrrAoyVPbaooaAUR1qYPt5Ci4tsbspsMv4lvL
# Hp9HRped9WO2T1wAd8l4KYCcxH4Gu73A7WxQVg/UfZ0vFgSBcLyrUbUmmQQO+B9d
# cgD451c0iaHfB24JLbacCGb3atNhkvPU4rEz3Tkb6z3wyMggPucRpUsfQzIh5PGZ
# P/Kvzm8GDotXDyNBCjt9Lz2fFPY/fbmKNXDd5sv5qj8auXnF8gK+G7En+7whTR6n
# nX6Bg+ywhYh+h890eAlvM0WY5vrRp+8CX4yM7XVE5NaAcvm9jJ1g+F6S7NZvIaW2
# 35kpkm/RhugughQ9OjB/25UAnjTbCYjrYImt480=
# SIG # End signature block
