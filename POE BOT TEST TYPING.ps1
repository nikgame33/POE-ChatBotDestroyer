<#POE Chat Bot Destroyer

https://github.com/nikgame33/POE-ChatBotDestroyer

This is a work in progress, please report any bugs, issues, & suggestions to the github project page

Thx yall

#>
Write-Host "POE Chat Bot Destroyer"
Write-Host "https://github.com/nikgame33/POE-ChatBotDestroyer"
Write-Host "Initializing Log Monitor"
Write-Host "Complete"
Write-Host "Monitoring Chat Logs ACTIVE"
Get-Date
Write-Host "============================"

#Set POE Chat Log Location Here
$POE_ChatLog = "C:\Program Files (x86)\Grinding Gear Games\Path of Exile\logs\Client.txt"

#spambot text check
$regexBOT = ".*([Cc]heap|[Fa]ast|[Ss]afe).*"

#TODO - add additional spam detection (currency store post, etc)


#when spam bot text is detected, call AHK script
while($true){

    Get-Content -Tail 1 -Wait -Path $POE_ChatLog | ForEach-Object{
        if($_ -match $regexBOT){
            write-host "Detected" 
            Get-Date
            
            #SET AS TEST SCRIPT, *CHANGE BEFORE RELEASE*
            . "$PSScriptRoot\BLOCKTEST.ahk"
        }
    
    }
}