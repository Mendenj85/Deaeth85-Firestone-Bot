#NoEnv
#SingleInstance, Force
#Include Deaeth85 Firestone Bot.ahk
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

Picture = Images\startbutton.png

; gui code
Gui Font, s9 Bold, Tahoma
Gui Color, D3D3D3
Gui Add, Tab3, x0 y-1 w900 h800, About | Common Options | Personal Tree Upgrades | QoL/Rare Options | Other Options | Script Start 
Gui Tab, 1 ; About
Gui Font, s20, , Lucida Handwriting Italic
Gui Add, Text, x0 y20 w900 h60 +0x200 +Center, DEAETH85'S FIRESTONE BOT
Gui Font, s15, Bold, Tahoma
Gui Add, Text, x0 y70 w900 h30 +0x200 +Center, VERSION 2.1.0
Gui Add, Picture, x415 y575 w60 h60, Images\giftbox.png
Gui Add, Picture, x150 y100 w600 h300, Images\Firestone.png
Gui Add, Picture, x150 y30 w60 h60, Images\logo.png
Gui Add, Picture, x690 y30 w60 h60, Images\logo.png
Gui Add, Text, x0 y420 w900 h30 +0x200 +Center, INSTRUCTIONS:
Gui Font, s9 Bold, Tahoma
Gui Add, Text, x0 y450 w900 h30 +0x200 +Center, Set Display to: 1920x1080 Maximized (NOT Fullscreen)
Gui Add, Text, x0 y480 w900 h30 +0x200 +Center, (Recommended) Set Hero Upgrade to Milestone
Gui Add, Text, x0 y510 w900 h30 +0x200 +Center, Make sure you start on main page
Gui Add, Text, x0 y540 w900 h30 +0x200 +Center, Please check the rest of the tabs for specific script options
Gui Add, Text, x0 y570 w900 h0 +0x200 +Center, Personal Tree tab you can select upgrades to have the script purchase for you
Gui Font, s15, Bold, Tahoma
Gui Add, Text, x0 y640 w900 h30 +0x200 +Center, NOTES:
Gui Font, s9 Bold, Tahoma
Gui Add, Text, x0 y670 w900 h30 +0x200 +Center, The script takes control of your mouse and will repeat until you close it
Gui Add, Text, x0 y700 w900 h30 +0x200 +Center, You have a 1 minute delay after the Hero Upgrade section to use your mouse w/o risk until script starts over
Gui Add, Text, x0 y770 w900 h30 +0x200 +Center, Credit to @Dandey for the original code
Gui Tab, 2 ; Common Options
Gui Add, Picture, x450 y180 w400 h400, Images\chest.png
Gui Font, s15, Bold, Tahoma
Gui Add, Text, x0 y30 w900 h30 +0x200 +Center, CHECK ANY OPTIONAL BOXES TO DIRECT THE SCRIPT
Gui Font, s9 Bold, Tahoma
Gui Add, Checkbox, x10 y70 w600 h30 VToken, Use Tavern Tokens (Will NOT work if Skip Claiming Beer selected in QoL section)
Gui Add, Checkbox, x10 y110 w600 h30 VSellEx, Open Exotic Merchant (Master toggle that only goes to Exotic Merchant)
Gui Add, Radio, x20 y135 w400 h30 vSellScrolls,  1. Sell ONLY Exotic Scrolls
Gui Add, Radio, x20 y160 w400 h30 vSellNoGold, 2. Sell All But Gold Items
Gui Add, Radio, x20 y185 w400 h30 vSellAll,  3. Sell All Exotic Items
Gui Add, Checkbox, x10 y215 w400 h30 vExoticUpgrades, Buy Exotic Upgrades (Requires Sell Exotic Items Checked)
Gui Add, Checkbox, x10 y245 w400 h30 vBuyEx, Buy Exotic Chests (Requires Sell Exotic Items Checked)
Gui Add, Checkbox, x10 y285 w400 h30 vChests, Open Chests - Choose an "Exclude from" option from the dropdowns below - Gifts will be opened as well
Gui Add, Text, x150 y315 w200 h30, Gear Chests
Gui Add, DropDownList, x10 y335 w400 r5 vGearChestExclude, Exclude All|Don't Exclude Any|Epic and Higher|Legendary and Higher|Mythic||
Gui Add, Text, x150 y365 w200 h30, Jewel Chests
Gui Add, DropDownList, x10 y385 w400 r5 VJewelChestExclude, Exclude All|Don't Exclude Any|Diamond and Higher||Opal and Higher|Emerald
Gui Add, Checkbox, x10 y425 w400 h30 vBless, Upgrade Blessings - Only way to auto-open Oracle Chests
Gui Add, Checkbox, x10 y465 w400 h30 vDaily, Claim Daily Quests
Gui Add, Checkbox, x10 y505 w400 h30 vWeekly, Claim Weekly Quests
Gui Add, Checkbox, x10 y545 w400 h30 vEvents, Claim Basic Events
Gui Add, Checkbox, x10 y585 w400 h30 vMail, Check Mail
Gui Add, Checkbox, x10 y625 w400 h30 vAwaken, Awaken Heroes
Gui Add, Checkbox, x10 y665 w400 h30 vCrystal, Spend Pickaxes on Crystal
Gui Add, Checkbox, x10 y705 w600 h30 vPTree, Upgrade Personal Tree (Select options on next tab if upgrading)
Gui Tab, 3 ; Personal Tree Upgrades
Gui Font, s12, Bold, Tahoma
Gui Add, Text, x0 y30 w900 h30 +0x200 +Center, CHOOSE PERSONAL TREE UPGRADES THAT YOU WOULD LIKE THE SCRIPT TO ATTEMPT TO PURCHASE
Gui Add, Text, x0 y60 w900 h30 +0x200 +Center, Choose as many options as you would like
Gui Font, s9 Bold, Tahoma
Gui Add, Picture, x200 y100 w600 h600, Images\GuildTreeofLife.png
Gui Add, Checkbox, x10 y70 w200 h30 vAttDmg, Attribute Damage
Gui Add, Checkbox, x10 y100 w200 h30 vAttHp, Attribute Health
Gui Add, Checkbox, x10 y130 w200 h30 vAttArm, Attribute Armor
Gui Add, Checkbox, x10 y160 w200 h30 vEnergy, Energy Heroes
Gui Add, Checkbox, x10 y190 w200 h30 vMana, Mana Heroes
Gui Add, Checkbox, x10 y220 w200 h30 vRage, Rage Heroes
Gui Add, Checkbox, x10 y250 w200 h30 vMiner, Miner
Gui Add, Checkbox, x10 y280 w200 h30 vBattle, Battle Cry
Gui Add, Checkbox, x10 y310 w200 h30 vMainAtt, All Main Attributes
Gui Add, Checkbox, x10 y340 w200 h30 vPrest, Prestigious
Gui Add, Checkbox, x10 y370 w200 h30 vFire, Firestone Effect
Gui Add, Checkbox, x10 y400 w200 h30 vGold, Raining Gold
Gui Add, Checkbox, x10 y430 w200 h30 vLevel, Hero Level Up Cost
Gui Add, Checkbox, x10 y460 w200 h30 vGuard, Guardian
Gui Add, Checkbox, x10 y490 w200 h30 vFist, Fist Fight
Gui Add, Checkbox, x10 y520 w200 h30 vPrec, Precision
Gui Add, Checkbox, x10 y550 w200 h30 vMagic, Magic Spells
Gui Add, Checkbox, x10 y580 w200 h30 vTank, Tank Specialization
Gui Add, Checkbox, x10 y610 w200 h30 vDamage, Damage Specialization
Gui Add, Checkbox, x10 y640 w200 h30 vHeal, Healer Specialization
Gui Font, s11, Bold, Tahoma
Gui Add, Text, x0 y770 w900 h20 +0x200 +Center, Be aware: The script does try to buy in order listed here (top to bottom)
Gui Tab, 4 ; QoL/Rare Options
Gui Add, Picture, x450 y420 w300 h300, Images\dragon.png
Gui Add, Picture, x0 y0 w900 h300, Images\dragonbanner.png
Gui Font, s15, Bold, Tahoma
Gui Add, Text, x0 y330 w900 h30 +0x200 +Center, Rarer Options
Gui Font, s9 Bold, Tahoma
Gui Add, Checkbox, x10 y330 w600 h30 vBeer, Skip Claiming Beer
Gui Add, Checkbox, x10 y370 w400 h30 vNoGuild, Skip All Guild Functions
Gui Add, Checkbox, x10 y410 w400 h30 vNoEng, Skip Engineer
Gui Add, Checkbox, x10 y450 w400 h30 vPickaxes, Skip Claiming Pickaxes
Gui Add, Checkbox, x10 y490 w400 h30 vGNotif, Clear Annoying Guild Notifications
Gui Add, Checkbox, x10 y530 w200 h30 vAlch, Skip Alchemy
Gui Add, Checkbox, x10 y570 w400 h30 vCoin, Use Exotic Coins in Alchemy
Gui Add, Checkbox, x10 y610 w400 h30 vResearch, Skip Research
Gui Tab, 5 ; Other Options
Gui Font, s15, Bold, Tahoma
Gui Add, Picture, x500 y300 w300 h500, Images\barkeep.png
Gui Add, Picture, x10 y600 w200 h200, Images\dragonchest.png
Gui Add, Text, x0 y30 w900 h30 +0x200 +Center, Other Misc Options
Gui Font, s9 Bold, Tahoma
Gui Add, Checkbox, x10 y70 w400 h30 vShop, Get Free Gift and Check-In
Gui Add, Checkbox, x10 y100 w400 h30 vDailyOracle, Claim Daily Oracle
Gui Add, Checkbox, x10 y130 w400 h30 vPVP, Complete Arena Battles
Gui Font, s15, Bold, Tahoma
Gui Add, Text, x10 y170 w400 h30 +0x200 +Center, ~~ Liberation Missions ~~
Gui Font, s9 Bold, Tahoma
Gui Add, Text, x10 y200 w400 h30, *If you don't want Liberation Missions leave dropdown as-is, else scroll to highest applicable star setting
Gui Add, DropDownList, x10 y230 w400 r12 vLiberationStars, Don't Complete Liberation Missions||190 Or Less Stars|155 or Less Stars|120 or Less Stars|110 or Less Stars|80 or Less Stars|70 or Less Stars|60 or Less Stars|40 or Less Stars|20 or Less Stars|10 or Less Stars|5 or Less Stars
Gui Font, s15, Bold, Tahoma
Gui Add, Text, x10 y260 w400 h30 +0x200 +Center, ~~ War Machine Upgrades ~~
Gui Font, s9 Bold, Tahoma
Gui Add, Text, x10 y290 w400 h30, List is from Left to Right in Garage - Ensure you set each dropdown so you don't waste resources you want to keep
Gui Add, DropDownList, x10 y320 w400 r9 vUpgradeWM, Don't Upgrade WM's||Upgrade Aegis|Upgrade Cloudfist|Upgrade Curator|Upgrade Earthshatterer|Upgrade FireCracker|Upgrade Fortress|Upgrade Goliath|Upgrade Harvester|Upgrade Hunter|Upgrade Judgement|Upgrade Sentinel|Upgrade Talos|Upgrade Thunderclap
Gui Add, Text, x10 y350 w400 h30, Choose to upgrade level only, blueprints only, or both!
Gui Add, DropDownList, x10 y370 w400 r3 vWMOptions, Level Only||Blueprints Only|Level and Blueprints
Gui Add, Text, x10 y400 w400 h30, Choose the Blueprint priority (All Options will process from the left to right)
Gui Add, DropDownList, x10 y430 w400 r10 vBlueprints, Upgrade All||Damage Only|Health Only|Armor Only|Damage and Health|Damage and Armor|Health and Armor
Gui Font, s15, Bold, Tahoma
Gui Add, Text, x10 y460 w400 h30 +0x200 +Center, ~~ Upgrade Talents ~~
Gui Font, s9 Bold, Tahoma
Gui Add, Text, x10 y490 w400 h30, Please choose only one option from between the two dropdowns
Gui Add, DropDownList, x10 y520 w400 r10 vTalents450, Don't Upgrade Talents (0-450 Talent Points)||All Main Attributes(1)|Leadership(3)|Guardian Power(3)|Team Bonus(3)|Leader-Auto Abilities(10)|Attack Speed(15)|Trainer Skills(15)|Critical Chance(15)|Party - Auto Abilities(20)|Dodge(25)|Critical Damage(25)|Librarian(30)|Meteorite Hunter(30)|Expeditioner(30)|Powerless Enemy(35)|Powerless Boss(35)|Weaklings(40)|Expose Weakness(40)|Ancient Knowledge(45)|Raining Gold(60)|Coworkers(60)|Twin Dragons(70)|Attack Speed(80)|Critical Chance(80)|Battle Cry(100)|Dodge(120)|Critical Damage(120)|Powerless Enemy(140)|Powerless Boss(140)|Alchemy(160)|Weaklings(180)|Expose Weakness(180)|All Main Attributes(200)|Leadership(250)|Guardian Power(250)|Team Bonus(250)|Twin Dragons(300)|Alchemy(350)|Librarian(350)|Battle Cry(400)|Powerless Enemy(450)|Powerless Boss(450)
Gui Add, DropDownList, x10 y550 w400 r10 vTalents800, Don't Upgrade Talents (500+ Talent Points)||Leadership(500)|Guardian Power(500)|Team Bonus(500)|Fate(530)|Mana Heroes(560)|Energy Heroes(560)|Rage Heroes(560)|Weaklings(590)|Expose Weakness(590)|Damange Specialization(620)|Tank Specialization(620)|Healer Specialization(620)|Raining Gold(650)|Fist Fight(680)|Precision(680)|Magic Spells(680)|Weaklings(710)|Expose Weakness(710)|Leadership(740)|Guardian Power(740)|Team Bonus(740)|Powerless Enemy(770)|Powerless Boss(770)|Fate(800)
Gui Tab, 6 ; Start Script
Gui Add, Picture, x0 y0 w900 h350, Images\fslogo.png
Gui Font, s15, Bold, Tahoma
Gui Add, Text, BackgroundTrans x0 y300 w900 h30 +0x200 +Center, Press START down below to run the Script
Gui Font, s9 Bold, Tahoma
Gui Add, Text, BackgroundTrans x0 y325 w900 h30 +0x200 +Center, Pressing Esc at any time will stop the Script
Gui Add, Picture, x0 y350 w900 h300, Images\logo.png
Gui Add, Text, x0 y640 w900 h30 +0x200 +Center, Thank you for using my bot
Gui Add, Text, x0 y670 w900 h30 +0x200 +Center, Donations are never required, but accepted through Venmo:
Gui Add, Text, x0 y700 w900 h30 +0x200 +Center, @Spyder85
Gui Add, Picture, x300 y730 w300 h60 +0x200 +Center gButtonStart, %Picture%

Gui Show, w900 h800, Deaeth85's Firestone Bot - V2.1.0
Return
ButtonStart:
    SetTimer, loop, 1000
    Return