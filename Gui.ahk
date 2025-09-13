#NoEnv
#SingleInstance, Force
#Include Deaeth85 Firestone Bot.ahk

SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

Picture = Images\startbutton.png

; Read settings from INI file when GUI is initialized
Gui +OwnDialogs
Gui Font, s9 Bold, Tahoma

; Read settings from INI file
IniRead, Token, settings.ini, CommonOptions, Token
IniRead, SellEx, settings.ini, CommonOptions, SellEx
IniRead, SellScrolls, settings.ini, CommonOptions, SellScrolls
IniRead, SellNoGold, settings.ini, CommonOptions, SellNoGold
IniRead, SellAll, settings.ini, CommonOptions, SellAll
IniRead, SellNone, settings.ini, CommonOptions, SellNone
IniRead, ExoticUpgrades, settings.ini, CommonOptions, ExoticUpgrades
IniRead, BuyEx, settings.ini, CommonOptions, BuyEx
IniRead, Chests, settings.ini, CommonOptions, Chests
IniRead, GearChestExclude, settings.ini, CommonOptions, GearChestExclude
GuiControl, Choose, GearChestExclude, %GearChestExclude%
IniRead, JewelChestExclude, settings.ini, CommonOptions, JewelChestExclude
GuiControl, Choose, JewelChestExclude, %JewelChestExclude%
IniRead, Bless, settings.ini, CommonOptions, Bless
IniRead, Delay, settings.ini, CommonOptions, Delay
IniRead, Events, settings.ini, CommonOptions, Events
IniRead, Mail, settings.ini, CommonOptions, Mail
IniRead, Awaken, settings.ini, CommonOptions, Awaken
IniRead, Crystal, settings.ini, CommonOptions, Crystal
IniRead, Chaos, settings.ini, CommonOptions, Chaos
IniRead, PTree, settings.ini, CommonOptions, PTree

IniRead, Beer, settings.ini, QoL/RareOptions, Beer
IniRead, Scarab, settings.ini, QoL/RareOptions, Scarab
IniRead, NoGuild, settings.ini, QoL/RareOptions, NoGuild
IniRead, NoEng, settings.ini, QoL/RareOptions, NoEng
IniRead, Pickaxes, settings.ini, QoL/RareOptions, Pickaxes
IniRead, GNotif, settings.ini, QoL/RareOptions, GNotif
IniRead, Alch, settings.ini, QoL/RareOptions, Alch
IniRead, Dust, settings.ini, QoL/RareOptions, Dust
IniRead, Coin, settings.ini, QoL/RareOptions, Coin
IniRead, Research, settings.ini, QoL/RareOptions, Research
IniRead, SkipOracle, settings.ini, QoL/RareOptions, SkipOracle
IniRead, NoHero, settings.ini, QoL/RareOptions, NoHero
IniRead, DisableWarning, settings.ini, QoL/RareOptions, DisableWarning

IniRead, Shop, settings.ini, OtherOptions, Shop
IniRead, DailyOracle, settings.ini, OtherOptions, DailyOracle
IniRead, PVP, settings.ini, OtherOptions, PVP
IniRead, Liberation, settings.ini, OtherOptions, Liberation
IniRead, UpgradeWM, settings.ini, OtherOptions, UpgradeWM
GuiControl, Choose, UpgradeWM, %UpgradeWM%
IniRead, WMOptions, settings.ini, OtherOptions, WMOptions
GuiControl, Choose, WMOptions, %WMOptions%
IniRead, Blueprints, settings.ini, OtherOptions, Blueprints
GuiControl, Choose, Blueprints, %Blueprints%
IniRead, Talents450, settings.ini, OtherOptions, Talents450
GuiControl, Choose, Talents450, %Talents450%
IniRead, Talents800, settings.ini, OtherOptions, Talents800
GuiControl, Choose, Talents800, %Talents800%

; gui code
Gui Font, s9 Bold, Tahoma
Gui Color, D3D3D3
Gui Add, Tab3, x0 y-1 w900 h800, About | Common Options | Personal Tree Upgrades | QoL/Rare Options | Other Options | Script Start 
Gui Tab, 1 ; About
Gui Font, s20, , Lucida Handwriting Italic
Gui Add, Text, x0 y20 w900 h60 +0x200 +Center, DEAETH85'S FIRESTONE BOT
Gui Font, s15, Bold, Tahoma
Gui Add, Text, x0 y70 w900 h30 +0x200 +Center, VERSION 5.0.0
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
Gui Add, Checkbox, x10 y70 w600 h30 vToken Checked%Token%, Use Tavern Tokens/Craft Artifact (Will NOT work if Skip Claiming Beer selected in QoL section)
Gui Add, Checkbox, x10 y110 w600 h30 vSellEx Checked%SellEx%, Open Exotic Merchant (Master toggle that only goes to Exotic Merchant)
Gui Add, Radio, x20 y135 w400 h30 vSellScrolls Checked%SellScrolls%,  1. Sell ONLY Exotic Scrolls
Gui Add, Radio, x20 y160 w400 h30 vSellNoGold Checked%SellNoGold%, 2. Sell All But Gold Items
Gui Add, Radio, x20 y185 w400 h30 vSellAll Checked%SellAll%,  3. Sell All Exotic Items
Gui Add, Radio, x20 y210 w400 h30 vSellNone Checked%SellNone%, 4. Sell Nothing
Gui Add, Checkbox, x10 y240 w400 h30 vExoticUpgrades Checked%ExoticUpgrades%, Buy Exotic Upgrades (Requires Sell Exotic Items Checked)
Gui Add, Checkbox, x10 y270 w400 h30 vBuyEx Checked%BuyEx%, Buy Exotic Chests (Requires Sell Exotic Items Checked)
Gui Add, Checkbox, x10 y310 w400 h30 vChests Checked%Chests%, Open Chests - Choose an "Exclude from" option from the dropdowns below - Gifts will be opened as well
Gui Add, Text, x150 y340 w200 h30, Gear Chests
Gui Add, DropDownList, x10 y360 w400 r5 vGearChestExclude, Exclude All|Don't Exclude Any|Epic and Higher|Legendary and Higher|Mythic||
Gui Add, Text, x150 y390 w200 h30, Jewel Chests
Gui Add, DropDownList, x10 y410 w400 r5 vJewelChestExclude, Exclude All|Don't Exclude Any|Diamond and Higher||Opal and Higher|Emerald
Gui Add, Checkbox, x10 y450 w400 h30 vBless Checked%Bless%, Upgrade Blessings - Will open Oracle chests even without Open Chests selected
Gui Add, Text, x150 y490 w200 h30, End of Cycle Delay (In Seconds)
Gui Add, DropDownList, x10 y510 w400 r5 vDelay, 0|30|60||90|120
Gui Add, Checkbox, x10 y550 w400 h30 vEvents Checked%Events%, Claim Basic Events
Gui Add, Checkbox, x10 y590 w400 h30 vMail Checked%Mail%, Check Mail
Gui Add, Checkbox, x10 y630 w400 h30 vAwaken Checked%Awaken%, Awaken Heroes
Gui Add, Checkbox, x10 y670 w400 h30 vCrystal Checked%Crystal%, Spend Pickaxes on Crystal
Gui Add, Checkbox, x10 y720 w400 h30 vChaos Checked%Chaos%, Participate in Chaos Rift
Gui Add, Checkbox, x10 y760 w600 h30 vPTree Checked%PTree%, Upgrade Personal Tree (Select options on next tab if upgrading)
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
;Gui Add, Text, x0 y330 w900 h30 +0x200 +Center, Rarer Options
Gui Font, s9 Bold, Tahoma
Gui Add, Checkbox, x10 y330 w200 h30 vBeer Checked%Beer%, Skip Claiming Beer
Gui Add, Checkbox, x250 y330 w200 h30 vScarab Checked%Scarab%, Skip Using Scarab Token
;Gui Add, Checkbox, x250 y330 w200 h30 vScarabToken Checked%ScarabToken%, Skip Using Scarab Token
Gui Add, Checkbox, x10 y370 w400 h30 vNoGuild Checked%NoGuild%, Skip All Guild Functions
Gui Add, Checkbox, x10 y410 w400 h30 vNoEng Checked%NoEng%, Skip Engineer
Gui Add, Checkbox, x10 y450 w400 h30 vPickaxes Checked%Pickaxes%, Skip Claiming Pickaxes
Gui Add, Checkbox, x10 y490 w400 h30 vGNotif Checked%GNotif%, Clear Annoying Guild Notifications
Gui Add, Checkbox, x10 y530 w200 h30 vAlch Checked%Alch%, Skip Alchemy
Gui Add, Checkbox, x10 y570 w200 h30 vDust Checked%Dust%, Don't Use Dust in Alchemy
Gui Add, Checkbox, x10 y610 w400 h30 vCoin Checked%Coin%, Use Exotic Coins in Alchemy
Gui Add, Checkbox, x10 y650 w400 h30 vResearch Checked%Research%, Skip Research
Gui Add, Checkbox, x10 y690 w400 h30 vSkipOracle Checked%SkipOracle%, Skip Oracle
Gui Add, Checkbox, x10 y730 w400 h30 vNoHero Checked%NoHero%, Don't Upgrade Heroes
Gui Add, Checkbox, x10 y770 w500 h30 vDisableWarning Checked%DisableWarning%, Do not show Steam warning again. (Popup when starting script)
Gui Tab, 5 ; Other Options
Gui Font, s15, Bold, Tahoma
Gui Add, Picture, x500 y300 w300 h500, Images\barkeep.png
Gui Add, Picture, x10 y600 w200 h200, Images\dragonchest.png
Gui Add, Text, x0 y30 w900 h30 +0x200 +Center, Other Misc Options
Gui Font, s9 Bold, Tahoma
Gui Add, Checkbox, x10 y70 w400 h30 vShop Checked%Shop%, Get Free Gift and Check-In
Gui Add, Checkbox, x10 y100 w400 h30 vDailyOracle Checked%DailyOracle%, Claim Daily Oracle
Gui Add, Checkbox, x10 y130 w400 h30 vPVP Checked%PVP%, Complete Arena Battles
Gui Add, Checkbox, x10 y160 w400 h40 vLiberation Checked%Liberation%, Complete Liberation Missions
Gui Font, s15, Bold, Tahoma
Gui Add, Text, x10 y200 w400 h30 +0x200 +Center, ~~ War Machine Upgrades ~~
Gui Font, s9 Bold, Tahoma
Gui Add, Text, x10 y230 w400 h30, List is from Left to Right in Garage - Ensure you set each dropdown so you don't waste resources you want to keep
Gui Add, DropDownList, x10 y260 w400 r9 vUpgradeWM, Don't Upgrade WM's||Upgrade Aegis|Upgrade Cloudfist|Upgrade Curator|Upgrade Earthshatterer|Upgrade FireCracker|Upgrade Fortress|Upgrade Goliath|Upgrade Harvester|Upgrade Hunter|Upgrade Judgement|Upgrade Sentinel|Upgrade Talos|Upgrade Thunderclap
Gui Add, Text, x10 y290 w400 h30, Choose to upgrade level only, blueprints only, or both!
Gui Add, DropDownList, x10 y310 w400 r3 vWMOptions, Blueprints Only||Level Only|Level and Blueprints|
Gui Add, Text, x10 y340 w400 h30, Choose the Blueprint priority (All Options will process from the left to right)
Gui Add, DropDownList, x10 y370 w400 r10 vBlueprints, Upgrade All||Damage Only|Health Only|Armor Only|Damage and Health|Damage and Armor|Health and Armor
Gui Font, s15, Bold, Tahoma
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
Gui Add, Button, x100 y730 w300 h60 gSaveSettings, Save GUI Settings
Gui Add, Button, x500 y730 w300 h60 +0x200 +Center gButtonStart, Start Script

; Read settings from INI file
IniRead, Token, settings.ini, CommonOptions, Token
IniRead, SellEx, settings.ini, CommonOptions, SellEx
IniRead, SellScrolls, settings.ini, CommonOptions, SellScrolls
IniRead, SellNoGold, settings.ini, CommonOptions, SellNoGold
IniRead, SellAll, settings.ini, CommonOptions, SellAll
IniRead, SellNone, settings.ini, CommonOptions, SellNone
IniRead, ExoticUpgrades, settings.ini, CommonOptions, ExoticUpgrades
IniRead, BuyEx, settings.ini, CommonOptions, BuyEx
IniRead, Chests, settings.ini, CommonOptions, Chests
IniRead, GearChestExclude, settings.ini, CommonOptions, GearChestExclude
GuiControl, Choose, GearChestExclude, %GearChestExclude%
IniRead, JewelChestExclude, settings.ini, CommonOptions, JewelChestExclude
GuiControl, Choose, JewelChestExclude, %JewelChestExclude%
IniRead, Bless, settings.ini, CommonOptions, Bless
IniRead, Delay, settings.ini, CommonOptions, Delay
IniRead, Events, settings.ini, CommonOptions, Events
IniRead, Mail, settings.ini, CommonOptions, Mail
IniRead, Awaken, settings.ini, CommonOptions, Awaken
IniRead, Crystal, settings.ini, CommonOptions, Crystal
IniRead, Chaos, settings.ini, CommonOptions, Chaos
IniRead, PTree, settings.ini, CommonOptions, PTree

IniRead, Beer, settings.ini, QoL/RareOptions, Beer
IniRead, Scarab, settings.ini, QoL/RareOptions, Scarab
IniRead, NoGuild, settings.ini, QoL/RareOptions, NoGuild
IniRead, NoEng, settings.ini, QoL/RareOptions, NoEng
IniRead, Pickaxes, settings.ini, QoL/RareOptions, Pickaxes
IniRead, GNotif, settings.ini, QoL/RareOptions, GNotif
IniRead, Alch, settings.ini, QoL/RareOptions, Alch
IniRead, Dust, settings.ini, QoL/RareOptions, Dust
IniRead, Coin, settings.ini, QoL/RareOptions, Coin
IniRead, Research, settings.ini, QoL/RareOptions, Research
IniRead, SkipOracle, settings.ini, QoL/RareOptions, SkipOracle
IniRead, DisableWarning, settings.ini, QoL/RareOptions, DisableWarning

IniRead, Shop, settings.ini, OtherOptions, Shop
IniRead, DailyOracle, settings.ini, OtherOptions, DailyOracle
IniRead, PVP, settings.ini, OtherOptions, PVP
IniRead, LiberationStars, settings.ini, OtherOptions, LiberationStars
GuiControl, Choose, LiberationStars, %LiberationStars%
IniRead, UpgradeWM, settings.ini, OtherOptions, UpgradeWM
GuiControl, Choose, UpgradeWM, %UpgradeWM%
IniRead, WMOptions, settings.ini, OtherOptions, WMOptions
GuiControl, Choose, WMOptions, %WMOptions%
IniRead, Blueprints, settings.ini, OtherOptions, Blueprints
GuiControl, Choose, Blueprints, %Blueprints%

Gui Show, w900 h800, Deaeth85's Firestone Bot - V5.0.0
GuiControlGet, Checked, , DisableWarning
If (Checked = 0){
MsgBox, 48, Warning, Please note this Bot will ONLY work reliably with the game launched via Steam
}
Return

SaveSettings:
    ; Common Options
    IniWrite, % Token, settings.ini, CommonOptions, Token
    IniWrite, % SellEx, settings.ini, CommonOptions, SellEx
    IniWrite, % SellScrolls, settings.ini, CommonOptions, SellScrolls
    IniWrite, % SellNoGold, settings.ini, CommonOptions, SellNoGold
    IniWrite, % SellAll, settings.ini, CommonOptions, SellAll
    IniWrite, % SellNone, settings.ini, CommonOptions, SellNone
    IniWrite, % ExoticUpgrades, settings.ini, CommonOptions, ExoticUpgrades
    IniWrite, % BuyEx, settings.ini, CommonOptions, BuyEx
    IniWrite, % Chests, settings.ini, CommonOptions, Chests
    IniWrite, % GearChestExclude, settings.ini, CommonOptions, GearChestExclude
    IniWrite, % JewelChestExclude, settings.ini, CommonOptions, JewelChestExclude
    IniWrite, % Bless, settings.ini, CommonOptions, Bless
    IniWrite, % Delay, settings.ini, CommonOptions, Delay
    IniWrite, % Events, settings.ini, CommonOptions, Events
    IniWrite, % Mail, settings.ini, CommonOptions, Mail
    IniWrite, % Awaken, settings.ini, CommonOptions, Awaken
    IniWrite, % Crystal, settings.ini, CommonOptions, Crystal
    IniWrite, % Chaos, settings.ini, CommonOptions, Chaos
    IniWrite, % PTree, settings.ini, CommonOptions, PTree

    ; QoL/Rare Options
    IniWrite, % Beer, settings.ini, QoL/RareOptions, Beer
    IniWrite, % Scarab, settings.ini, QoL/RareOptions, Scarab
    IniWrite, % NoGuild, settings.ini, QoL/RareOptions, NoGuild
    IniWrite, % NoEng, settings.ini, QoL/RareOptions, NoEng
    IniWrite, % Pickaxes, settings.ini, QoL/RareOptions, Pickaxes
    IniWrite, % GNotif, settings.ini, QoL/RareOptions, GNotif
    IniWrite, % Alch, settings.ini, QoL/RareOptions, Alch
    IniWrite, % Dust, settings.ini, QoL/RareOptions, Dust
    IniWrite, % Coin, settings.ini, QoL/RareOptions, Coin
    IniWrite, % Research, settings.ini, QoL/RareOptions, Research
    IniWrite, % SkipOracle, settings.ini, QoL/RareOptions, SkipOracle
    IniWrite, % NoHero, settings.ini, QoL/RareOptions, NoHero
    IniWrite, % DisableWarning, settings.ini, QoL/RareOptions, DisableWarning

    ; Other Options
    IniWrite, % Shop, settings.ini, OtherOptions, Shop
    IniWrite, % DailyOracle, settings.ini, OtherOptions, DailyOracle
    IniWrite, % PVP, settings.ini, OtherOptions, PVP
    IniWrite, % Liberation, settings.ini, OtherOptions, Liberation
    IniWrite, % UpgradeWM, settings.ini, OtherOptions, UpgradeWM
    IniWrite, % WMOptions, settings.ini, OtherOptions, WMOptions
    IniWrite, % Blueprints, settings.ini, OtherOptions, Blueprints

    GuiControlGet, Token, , Token
    GuiControlGet, SellEx, , SellEx
    GuiControlGet, SellScrolls, , SellScrolls
    GuiControlGet, SellNoGold, , SellNoGold
    GuiControlGet, SellAll, , SellAll
    GuiControlGet, SellNone, , SellNone
    GuiControlGet, ExoticUpgrades, , ExoticUpgrades
    GuiControlGet, BuyEx, , BuyEx
    GuiControlGet, Chests, , Chests
    GuiControlGet, GearChestExclude, , GearChestExclude
    GuiControlGet, JewelChestExclude, , JewelChestExclude
    GuiControlGet, Bless, , Bless
    GuiControlGet, Delay, , Delay
    GuiControlGet, Events, , Events
    GuiControlGet, Mail, , Mail
    GuiControlGet, Awaken, , Awaken
    GuiControlGet, Crystal, , Crystal
    GuiControlGet, Chaos, , Chaos
    GuiControlGet, PTree, , PTree

    GuiControlGet, Beer, , Beer
    GuiControlGet, Scarab, , Scarab
    GuiControlGet, NoGuild, , NoGuild
    GuiControlGet, NoEng, , NoEng
    GuiControlGet, Pickaxes, , Pickaxes
    GuiControlGet, GNotif, , GNotif
    GuiControlGet, Alch, , Alch
    GuiControlGet, Dust, , Dust
    GuiControlGet, Coin, , Coin
    GuiControlGet, Research, , Research
    GuiControlGet, SkipOracle, , SkipOracle
    GuiControlGet, NoHero, , NoHero
    GuiControlGet, DisableWarning, , DisableWarning

    GuiControlGet, Shop, , Shop
    GuiControlGet, DailyOracle, , DailyOracle
    GuiControlGet, PVP, , PVP
    GuiControlGet, Liberation, , Liberation
    GuiControlGet, UpgradeWM, , UpgradeWM
    GuiControlGet, WMOptions, , WMOptions
    GuiControlGet, Blueprints, , Blueprints

    IniWrite, % Token, settings.ini, CommonOptions, Token
    IniWrite, % SellEx, settings.ini, CommonOptions, SellEx
    IniWrite, % SellScrolls, settings.ini, CommonOptions, SellScrolls
    IniWrite, % SellNoGold, settings.ini, CommonOptions, SellNoGold
    IniWrite, % SellAll, settings.ini, CommonOptions, SellAll
    IniWrite, % SellNone, settings.ini, CommonOptions, SellNone
    IniWrite, % ExoticUpgrades, settings.ini, CommonOptions, ExoticUpgrades
    IniWrite, % BuyEx, settings.ini, CommonOptions, BuyEx
    IniWrite, % Chests, settings.ini, CommonOptions, Chests
    IniWrite, % GearChestExclude, settings.ini, CommonOptions, GearChestExclude
    IniWrite, % JewelChestExclude, settings.ini, CommonOptions, JewelChestExclude
    IniWrite, % Bless, settings.ini, CommonOptions, Bless
    IniWrite, % Delay, settings.ini, CommonOptions, Delay
    IniWrite, % Events, settings.ini, CommonOptions, Events
    IniWrite, % Mail, settings.ini, CommonOptions, Mail
    IniWrite, % Awaken, settings.ini, CommonOptions, Awaken
    IniWrite, % Crystal, settings.ini, CommonOptions, Crystal
    IniWrite, % Chaos, settings.ini, CommonOptions, Chaos
    IniWrite, % PTree, settings.ini, CommonOptions, PTree

    IniWrite, % Beer, settings.ini, QoL/RareOptions, Beer
    IniWrite, % Scarab, settings.ini, QoL/RareOptions, Scarab
    IniWrite, % NoGuild, settings.ini, QoL/RareOptions, NoGuild
    IniWrite, % NoEng, settings.ini, QoL/RareOptions, NoEng
    IniWrite, % Pickaxes, settings.ini, QoL/RareOptions, Pickaxes
    IniWrite, % GNotif, settings.ini, QoL/RareOptions, GNotif
    IniWrite, % Alch, settings.ini, QoL/RareOptions, Alch
    IniWrite, % Dust, settings.ini, QoL/RareOptions, Dust
    IniWrite, % Coin, settings.ini, QoL/RareOptions, Coin
    IniWrite, % Research, settings.ini, QoL/RareOptions, Research
    IniWrite, % SkipOracle, settings.ini, QoL/RareOptions, SkipOracle
    IniWrite, % NoHero, settings.ini, QoL/RareOptions, NoHero
    IniWrite, % DisableWarning, settings.ini, QoL/RareOptions, DisableWarning

    IniWrite, % Shop, settings.ini, OtherOptions, Shop
    IniWrite, % DailyOracle, settings.ini, OtherOptions, DailyOracle
    IniWrite, % PVP, settings.ini, OtherOptions, PVP
    IniWrite, % Liberation, settings.ini, OtherOptions, Liberation
    IniWrite, % UpgradeWM, settings.ini, OtherOptions, UpgradeWM
    IniWrite, % WMOptions, settings.ini, OtherOptions, WMOptions
    IniWrite, % Blueprints, settings.ini, OtherOptions, Blueprints
    MsgBox, , Gui Settings, Gui Settings Saved
    Return

ButtonStart:
SetTimer, loop, 1000
Return