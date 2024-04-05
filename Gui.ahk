#NoEnv
#SingleInstance, Force
#Include Deaeth85 Firestone Bot.ahk
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

; gui code
Gui Font, s9, Segoe UI
Gui Add, Tab3, x0 y-1 w600 h800, About | Options | Personal Tree | Script Start
Gui Tab, 1
Gui Add, Text, x0 y20 w600 h60 +0x200 +Center, DEAETH85'S FIRESTONE BOT - VERSION 1.1
Gui Add, Picture, x0 y100 w600 h300, Images\logo.png
Gui Add, Text, x0 y400 w600 h20 +0x200 +Center, INSTRUCTIONS:
Gui Add, Text, x0 y430 w600 h20 +0x200 +Center, Set Display to: 1920x1080 Maximized (NOT Fullscreen)
Gui Add, Text, x0 y460 w600 h20 +0x200 +Center, (Recommended) Set Hero Upgrade to Milestone
Gui Add, Text, x0 y490 w600 h20 +0x200 +Center, Make sure you start on main page
Gui Add, Text, x0 y520 w600 h20 +0x200 +Center, Please check Options tab for specific script functions
Gui Add, Text, x0 y550 w600 h20 +0x200 +Center, Personal Tree tab you can select upgrades to have the script purchase for you
Gui Add, Text, x0 y580 w600 h20 +0x200 +Center, NOTES:
Gui Add, Text, x0 y610 w600 h20 +0x200 +Center, The script takes control of your mouse and will repeat until you close it
Gui Add, Text, x0 y640 w600 h20 +0x200 +Center, You have a 1 minute delay after the Hero Upgrade section to use your mouse w/o risk until script starts over
Gui Add, Text, x0 y680 w600 h20 +0x200 +Center, Credit to @Dandey for the original code
Gui Tab, 2
Gui Add, Text, x10 y30 w600 h29 +0x200 +Center, CHECK ANY OPTIONAL BOXES TO DIRECT THE SCRIPT
Gui Add, Checkbox, x10 y60 w200 h20 vAlch, Skip Alchemy
Gui Add, Checkbox, x10 y90 w400 h20 vResearch, Skip Research
Gui Add, Checkbox, x10 y120 w200 h20 vBeer, Skip Claiming Beer
Gui Add, Checkbox, x10 y150 w400 h20 VToken, Use Tavern Tokens (Will NOT work if Skip Claiming Beer selected)
Gui Add, Checkbox, x10 y180 w400 h20 VSellEx, Sell Exotic Items (MUST choose this AND one of the next two options)
Gui Add, Radio, x20 y210 w400 h20 vSellScrolls,  1. Sell ONLY Exotic Scrolls
Gui Add, Radio, x20 y240 w400 h20 vSellAll,  2. Sell All Exotic Items
Gui Add, Checkbox, x10 y270 w400 h20 vPickaxes, Skip Claiming Pickaxes
Gui Add, Checkbox, x10 y300 w400 h20 vCrystal, Spend Pickaxes on Crystal
Gui Add, Checkbox, x10 y330 w400 h20 vPTree, Upgrade Personal Tree (Select options on next tab if upgrading)
Gui Add, Checkbox, x10 y360 w400 h20 vGNotif, Clear Annoying Guild Notifications
Gui Add, Checkbox, x10 y390 w400 h20 vCoin, Use Exotic Coins in Alchemy
Gui Add, Checkbox, x10 y420 w400 h20 vDailyOracle, Claim Daily Oracle
Gui Add, Checkbox, x10 y450 w400 h20 vBless, Upgrade Blessings
Gui Add, Checkbox, x10 y480 w400 h20 vDaily, Claim Daily Quests
Gui Add, Checkbox, x10 y510 w400 h20 vWeekly, Claim Weekly Quests
Gui Add, Checkbox, x10 y540 w400 h20 vChests, Open Chests
Gui Tab, 3
Gui Add, Text, x10 y20 w600 h29 +0x200 +Center, CHOOSE PERSONAL TREE UPGRADES THAT YOU WOULD LIKE THE SCRIPT TO ATTEMPT TO PURCHASE
Gui Add, Text, x10 y40 w600 h29 +0x200 +Center, Choose as many options as you would like
Gui Add, Checkbox, x10 y70 w200 h20 vAttDmg, Attribute Damage
Gui Add, Checkbox, x10 y100 w200 h20 vAttHp, Attribute Health
Gui Add, Checkbox, x10 y130 w200 h20 vAttArm, Attribute Armor
Gui Add, Checkbox, x10 y160 w200 h20 vEnergy, Energy Heroes
Gui Add, Checkbox, x10 y190 w200 h20 vMana, Mana Heroes
Gui Add, Checkbox, x10 y220 w200 h20 vRage, Rage Heroes
Gui Add, Checkbox, x10 y250 w200 h20 vMiner, Miner
Gui Add, Checkbox, x10 y280 w200 h20 vBattle, Battle Cry
Gui Add, Checkbox, x10 y310 w200 h20 vMainAtt, All Main Attributes
Gui Add, Checkbox, x10 y340 w200 h20 vPrest, Prestigious
Gui Add, Checkbox, x10 y370 w200 h20 vFire, Firestone Effect
Gui Add, Checkbox, x10 y400 w200 h20 vGold, Raining Gold
Gui Add, Checkbox, x10 y430 w200 h20 vLevel, Hero Level Up Cost
Gui Add, Checkbox, x10 y460 w200 h20 vGuard, Guardian
Gui Add, Checkbox, x10 y490 w200 h20 vFist, Fist Fight
Gui Add, Checkbox, x10 y520 w200 h20 vPrec, Precision
Gui Add, Checkbox, x10 y550 w200 h20 vMagic, Magic Spells
Gui Add, Checkbox, x10 y580 w200 h20 vTank, Tank Specialization
Gui Add, Checkbox, x10 y610 w200 h20 vDamage, Damage Specialization
Gui Add, Checkbox, x10 y640 w200 h20 vHeal, Healer Specialization
Gui Add, Text, x0 y670 w600 h20 +0x200 +Center, Be aware: The script does try to buy in order listed here (top to bottom)
Gui Tab, 4
Gui Add, Text, x0 y74 w600 h20 +0x200 +Center, Press START (below) to run the Script
Gui Add, Text, x0 y120 w600 h20 +0x200 +Center, Pressing Esc at any time will stop the Script
Gui Add, Picture, x0 y190 w600 h300, Images\logo.png
Gui Add, Text, x0 y540 w600 h20 +0x200 +Center, Thank you for using my bot
Gui Add, Text, x0 y560 w600 h20 +0x200 +Center, Donations are never required, but accepted through Venmo:
Gui Add, Text, x0 y580 w600 h20 +0x200 +Center, @Spyder85
Gui Add, Picture, x145 y620 w300 h60 +0x200 +Center gButtonStart, Images\startbutton.png

Gui Show, w600 h700, Deaeth85's Firestone Bot - V1.0
return
ButtonStart:
    SetTimer, loop, 1000
    return