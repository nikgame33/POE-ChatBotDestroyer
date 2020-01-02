# POE-ChatBotDestroyer

Hello fellow Exiles!
Are you super disgruntled and perturbed by the abundance of spam bots in global? We are. 

This script packs a double whammy of spam bot battle power. When it detects their trash talk it unleahses a flurry of dots to move that nonsense out of chat and you won't even know it was ever there, just like magic. 

This project is currently a WIP and will be updated / developed further

# RELEASE
PLEASE USE THE RELEASE TAB TO DOWNLOAD STABLE COMPLETE TESTED FILES

DO NOT USE MASTER OR TEST BRANCH THEY ARE ALL JACKED UP BECAUSE I SCREW UP ALL THE MERGING AND PULLS EVERY SINGLE TIME - corndogmd

USE STABLE RELEASES ONLY

Release is tested to not conflict with POE Trade Macro & POE Trade Companion

# Requirements
Autohotkey must be installed

Set the Execution Policy of powershell to unrestricted or Remotesigned (auto soon!)
Please google how to do this, it requires typing 1 line in powershell.

Works with Steam & Non-Steam versions

# HOW TO USE
Download both script files, place in same folder wherever you want 

Open powershell script with notepad, edit the first line to where your poe client.txt file is located (Steam & Non-Steam versions are different, the file is in the games install directory inside the Logs folder)

BEFORE RUNNING POWERSHELL SCRIPT YOU MUST SET THE EXECUTION POLICY MENTIONED ABOVE, please google this it only requires typing 1 line. If you do not do this the script will not run. Please be advised changing this execution policy is a poor IT Security move, it allows all powershell scripts to run and in theory will make your system more vulnerable to security risks. Do not run unknown scripts off the internet without knowing what they do. 

Run powershell script and leave open, this window will show when the script runs and should say "Works" after each time it detects spam in chat

do not run the typing.ahk file by itself, it is called by the powershell script when needed. Script will only run while the game window is in focus and will not run if game is in background (i.e. if you click out and come back any new spam will still be in chat, but while playing the game new spam will be detected and removed)

# How it works

This script operates by live monitoring the games chat logs which are stored in client.txt. When specific bot spam is detected the script calls an ahk macro that types dots in chat. 

# Known Issues / Limitations

For the time being a bunch of dots is "good enough." This entire script is more or less a proof of concept for people saying GGG cannot ban bots because it would be too hard blah blah blah. This was a 1 hour effort and accomplishes blocking bot spam client side with 2 very small blocks of simple code. This code is free to whoever for private use, it is not top secret protected information. If you have time to improve it please do. We are not liable or responsible for anything you do with this script so our legal advice is don't use it and this is for educational purposes only. I have no idea if this is against TOS, probably, so don't use it. 

Thx yall

# Support
please file bugs, issues, & suggestions in this github project so we can track them

CorndogMD - Twitter & Discord (Now with verified POE Tool Developer Role yeehaw)

Nikgame33 - Twitch.tv/nikgame33

Send Donations to Doctors Without Borders


