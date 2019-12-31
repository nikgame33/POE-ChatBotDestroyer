<#POE Chat Bot Destroyer

https://github.com/nikgame33/POE-ChatBotDestroyer

This is a work in progress, please report any bugs, issues, & suggestions to the github project page

Thx yall

#>
Write-Host "POE Chat Bot Destroyer"
Write-Host "https://github.com/nikgame33/POE-ChatBotDestroyer"
Write-Host "Initializing Log Monitor"

#init

#check if the path is already set and if not it will add thhe path to the .txt
$POE_ChatLog = "$PSScriptRoot\POE_LOG_PATH.txt"
if("" -like (Get-Content $POE_ChatLog)){
    $gamepath = (Get-Process PathOf*).path
    $gamepath = $gamepath -replace '(?:.(?!\\))+$','\logs\client.txt' 
    $gamepath |Out-File -FilePath $POE_ChatLog
}


#spambot text check
$regexBOT = ".*([Cc]heap|[Fa]ast|[Ss]afe).*"
#index to keep the shell clean
$shellindex = 0

Write-Host "Complete"
Write-Host "Monitoring Chat Logs ACTIVE"
Get-Date
Write-Host "============================"


#TODO - add additional spam detection (currency store post, etc)

#when spam bot text is detected, call AHK script
while($true){

    Get-Content -Tail 1 -Wait -Path (get-content $POE_ChatLog) | ForEach-Object{
        if($_ -match $regexBOT){
            $shellindex++
            $timestamp ="{0:hh}:{0:mm}" -f (Get-Date) 
            write-host "Detected at $timestamp" 
            if($shellindex -gt 9){
                Clear-Host
            }
            #SET AS TEST SCRIPT, *CHANGE BEFORE RELEASE*
            . "$PSScriptRoot\BLOCKTEST.ahk"
        }
    
    }
}
