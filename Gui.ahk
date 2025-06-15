#Requires AutoHotkey v2.0

global myGui, tab
global tokenCB, sellExCB, sellScrollsRB, sellNoGoldRB, sellAllRB, sellNoneRB, exoticUpgradesCB, buyExCB, chestsCB
global gearChestDD, jewelChestDD, blessCB, questsCB, eventsCB, mailCB, awakenCB, crystalCB, chaosCB, ptreeCB
global attDmgCB, attHpCB, attArmCB, energyCB, manaCB, rageCB, minerCB, battleCB, mainAttCB, prestCB, fireCB, goldCB, levelCB, guardCB, fistCB, precCB, magicCB, tankCB, damageCB, healCB
global beerCB, noGuildCB, noEngCB, pickaxesCB, gnotifCB, alchCB, dustCB, coinCB, researchCB, skipOracleCB, noHeroCB, noMapCB, delayDD, disableWarningCB
global shopCB, dailyOracleCB, pvpCB, liberationCB, upgradeWMDD, wmOptionsDD, blueprintsDD

ShowGui() {
    ; --- Read all INI settings ---
    ; CommonOptions
    Token := IniRead("settings.ini", "CommonOptions", "Token", "")
    SellEx := IniRead("settings.ini", "CommonOptions", "SellEx", "")
    SellScrolls := IniRead("settings.ini", "CommonOptions", "SellScrolls", "")
    SellNoGold := IniRead("settings.ini", "CommonOptions", "SellNoGold", "")
    SellAll := IniRead("settings.ini", "CommonOptions", "SellAll", "")
    SellNone := IniRead("settings.ini", "CommonOptions", "SellNone", "")
    ExoticUpgrades := IniRead("settings.ini", "CommonOptions", "ExoticUpgrades", "")
    BuyEx := IniRead("settings.ini", "CommonOptions", "BuyEx", "")
    Chests := IniRead("settings.ini", "CommonOptions", "Chests", "")
    GearChestExclude := IniRead("settings.ini", "CommonOptions", "GearChestExclude", "Exclude All")
    JewelChestExclude := IniRead("settings.ini", "CommonOptions", "JewelChestExclude", "Exclude All")
    Bless := IniRead("settings.ini", "CommonOptions", "Bless", "")
    Quests := IniRead("settings.ini", "CommonOptions", "Quests", "")
    Events := IniRead("settings.ini", "CommonOptions", "Events", "")
    Mail := IniRead("settings.ini", "CommonOptions", "Mail", "")
    Awaken := IniRead("settings.ini", "CommonOptions", "Awaken", "")
    Crystal := IniRead("settings.ini", "CommonOptions", "Crystal", "")
    Chaos := IniRead("settings.ini", "CommonOptions", "Chaos", "")
    PTree := IniRead("settings.ini", "CommonOptions", "PTree", "")

    ; QoL/RareOptions
    Beer := IniRead("settings.ini", "QoL/RareOptions", "Beer", "")
    NoGuild := IniRead("settings.ini", "QoL/RareOptions", "NoGuild", "")
    NoEng := IniRead("settings.ini", "QoL/RareOptions", "NoEng", "")
    Pickaxes := IniRead("settings.ini", "QoL/RareOptions", "Pickaxes", "")
    GNotif := IniRead("settings.ini", "QoL/RareOptions", "GNotif", "")
    Alch := IniRead("settings.ini", "QoL/RareOptions", "Alch", "")
    Dust := IniRead("settings.ini", "QoL/RareOptions", "Dust", "")
    Coin := IniRead("settings.ini", "QoL/RareOptions", "Coin", "")
    Research := IniRead("settings.ini", "QoL/RareOptions", "Research", "")
    SkipOracle := IniRead("settings.ini", "QoL/RareOptions", "SkipOracle", "")
    NoHero := IniRead("settings.ini", "QoL/RareOptions", "NoHero", "")
    NoMap := IniRead("settings.ini", "QoL/RareOptions", "NoMap", "")
    Delay := IniRead("settings.ini", "QoL/RareOptions", "Delay", "0")
    DisableWarning := IniRead("settings.ini", "QoL/RareOptions", "DisableWarning", "")

    ; OtherOptions
    Shop := IniRead("settings.ini", "OtherOptions", "Shop", "")
    DailyOracle := IniRead("settings.ini", "OtherOptions", "DailyOracle", "")
    PVP := IniRead("settings.ini", "OtherOptions", "PVP", "")
    Liberation := IniRead("settings.ini", "OtherOptions", "Liberation", "")
    UpgradeWM := IniRead("settings.ini", "OtherOptions", "UpgradeWM", "Don't Upgrade WM's")
    WMOptions := IniRead("settings.ini", "OtherOptions", "WMOptions", "Blueprints Only")
    Blueprints := IniRead("settings.ini", "OtherOptions", "Blueprints", "Upgrade All")
    Talents450 := IniRead("settings.ini", "OtherOptions", "Talents450", "None")
    Talents800 := IniRead("settings.ini", "OtherOptions", "Talents800", "None")
    LiberationStars := IniRead("settings.ini", "OtherOptions", "LiberationStars", "None")

    myGui := Gui("+OwnDialogs", "Deaeth85's Firestone Bot - V5.0.0")
    myGui.SetFont("s9 Bold", "Tahoma")
    myGui.BackColor := "D3D3D3"

    tab := myGui.AddTab2("+Buttons x0 y0 w900 h800", [
        "About",
        "Common Options",
        "Personal Tree Upgrades",
        "QoL/Rare Options",
        "Other Options",
        "Script Start"
    ])

    ; --- Tab 1: About ---
    tab.UseTab(1)
    myGui.SetFont("s20", "Lucida Handwriting Italic")
    myGui.AddText("x0 y60 w900 h60 +0x200 +Center", "DEAETH85'S FIRESTONE BOT")
    myGui.SetFont("s15 Bold", "Tahoma")
    myGui.AddText("x0 y110 w900 h30 +0x200 +Center", "VERSION 5.0.0")
    myGui.AddPicture("x415 y615 w60 h60", "Images\giftbox.png")
    myGui.AddPicture("x150 y140 w600 h300", "Images\Firestone.png")
    myGui.AddPicture("x150 y70 w60 h60", "Images\logo.png")
    myGui.AddPicture("x690 y70 w60 h60", "Images\logo.png")
    myGui.AddText("x0 y460 w900 h30 +0x200 +Center", "INSTRUCTIONS:")
    myGui.SetFont("s9 Bold", "Tahoma")
    myGui.AddText("x0 y490 w900 h30 +0x200 +Center", "Set Display to: 1920x1080 Maximized (NOT Fullscreen)")
    myGui.AddText("x0 y520 w900 h30 +0x200 +Center", "(Recommended) Set Hero Upgrade to Milestone")
    myGui.AddText("x0 y550 w900 h30 +0x200 +Center", "Make sure you start on main page")
    myGui.AddText("x0 y580 w900 h30 +0x200 +Center", "Please check the rest of the tabs for specific script options")
    myGui.AddText("x0 y610 w900 h0 +0x200 +Center", "Personal Tree tab you can select upgrades to have the script purchase for you")
    myGui.SetFont("s15 Bold", "Tahoma")
    myGui.AddText("x0 y680 w900 h30 +0x200 +Center", "NOTES:")
    myGui.SetFont("s9 Bold", "Tahoma")
    myGui.AddText("x0 y710 w900 h30 +0x200 +Center", "The script takes control of your mouse and will repeat until you close it")
    myGui.AddText("x0 y740 w900 h30 +0x200 +Center", "You have a 1 minute delay after the Hero Upgrade section to use your mouse w/o risk until script starts over")
    myGui.AddText("x0 y810 w900 h30 +0x200 +Center", "Credit to @Dandey for the original code")

    ; --- Tab 2: Common Options ---
    tab.UseTab(2)
    myGui.AddPicture("x450 y220 w400 h400", "Images\chest.png")
    myGui.SetFont("s15 Bold", "Tahoma")
    myGui.AddText("x0 y70 w900 h30 +0x200 +Center", "CHECK ANY OPTIONAL BOXES TO DIRECT THE SCRIPT")
    myGui.SetFont("s9 Bold", "Tahoma")
    global tokenCB := myGui.AddCheckbox("x10 y110 w600 h30", "Use Tavern Tokens/Craft Artifact")
    tokenCB.Value := !!Token
    global sellExCB := myGui.AddCheckbox("x10 y150 w600 h30", "Open Exotic Merchant")
    sellExCB.Value := !!SellEx
    global sellScrollsRB := myGui.AddRadio("x20 y185 w400 h30", "1. Sell ONLY Exotic Scrolls")
    sellScrollsRB.Value := !!SellScrolls
    global sellNoGoldRB := myGui.AddRadio("x20 y215 w400 h30", "2. Sell All But Gold Items")
    sellNoGoldRB.Value := !!SellNoGold
    global sellAllRB := myGui.AddRadio("x20 y245 w400 h30", "3. Sell All Exotic Items")
    sellAllRB.Value := !!SellAll
    global sellNoneRB := myGui.AddRadio("x20 y275 w400 h30", "4. Sell Nothing")
    sellNoneRB.Value := !!SellNone
    global exoticUpgradesCB := myGui.AddCheckbox("x10 y310 w400 h30", "Buy Exotic Upgrades")
    exoticUpgradesCB.Value := !!ExoticUpgrades
    global buyExCB := myGui.AddCheckbox("x10 y340 w400 h30", "Buy Exotic Chests")
    buyExCB.Value := !!BuyEx
    global chestsCB := myGui.AddCheckbox("x10 y370 w400 h30", "Open Chests")
    chestsCB.Value := !!Chests
    myGui.AddText("x150 y400 w200 h30", "Gear Chests")
    gearChestOptions := ["Exclude All", "Don't Exclude Any", "Epic and Higher", "Legendary and Higher", "Mythic"]
    gearChestIndex := 1
    for i, v in gearChestOptions
        if (v = GearChestExclude) {
            gearChestIndex := i
            break
        }
    global gearChestDD := myGui.AddDropDownList("x10 y430 w400 r5", gearChestOptions)
    gearChestDD.Value := gearChestIndex
    myGui.AddText("x150 y470 w200 h30", "Jewel Chests")
    jewelChestOptions := ["Exclude All", "Don't Exclude Any", "Diamond and Higher", "Opal and Higher", "Emerald"]
    jewelChestIndex := 1
    for i, v in jewelChestOptions
        if (v = JewelChestExclude) {
            jewelChestIndex := i
            break
        }
    global jewelChestDD := myGui.AddDropDownList("x10 y500 w400 r5", jewelChestOptions)
    jewelChestDD.Value := jewelChestIndex
    global blessCB := myGui.AddCheckbox("x10 y540 w400 h30", "Upgrade Blessings")
    blessCB.Value := !!Bless
    global questsCB := myGui.AddCheckbox("x10 y570 w400 h30", "Claim Quests")
    questsCB.Value := !!Quests
    global eventsCB := myGui.AddCheckbox("x10 y600 w400 h30", "Claim Basic Events")
    eventsCB.Value := !!Events
    global mailCB := myGui.AddCheckbox("x10 y630 w400 h30", "Check Mail")
    mailCB.Value := !!Mail
    global awakenCB := myGui.AddCheckbox("x10 y660 w400 h30", "Awaken Heroes")
    awakenCB.Value := !!Awaken
    global crystalCB := myGui.AddCheckbox("x10 y690 w400 h30", "Spend Pickaxes on Crystal")
    crystalCB.Value := !!Crystal
    global chaosCB := myGui.AddCheckbox("x10 y720 w400 h30", "Participate in Chaos Rift")
    chaosCB.Value := !!Chaos
    global ptreeCB := myGui.AddCheckbox("x10 y750 w600 h30", "Upgrade Personal Tree")
    ptreeCB.Value := !!PTree

    ; --- Tab 3: Personal Tree Upgrades ---
    tab.UseTab(3)
    myGui.SetFont("s12 Bold", "Tahoma")
    myGui.AddText("x0 y70 w900 h30 +0x200 +Center", "CHOOSE PERSONAL TREE UPGRADES THAT YOU WOULD LIKE THE SCRIPT TO ATTEMPT TO PURCHASE")
    myGui.AddText("x0 y100 w900 h30 +0x200 +Center", "Choose as many options as you would like")
    myGui.SetFont("s9 Bold", "Tahoma")
    myGui.AddPicture("x200 y140 w600 h600", "Images\GuildTreeofLife.png")
    global attDmgCB := myGui.AddCheckbox("x10 y70 w200 h30", "Attribute Damage")
    global attHpCB := myGui.AddCheckbox("x10 y100 w200 h30", "Attribute Health")
    global attArmCB := myGui.AddCheckbox("x10 y130 w200 h30", "Attribute Armor")
    global energyCB := myGui.AddCheckbox("x10 y160 w200 h30", "Energy Heroes")
    global manaCB := myGui.AddCheckbox("x10 y190 w200 h30", "Mana Heroes")
    global rageCB := myGui.AddCheckbox("x10 y220 w200 h30", "Rage Heroes")
    global minerCB := myGui.AddCheckbox("x10 y250 w200 h30", "Miner")
    global battleCB := myGui.AddCheckbox("x10 y280 w200 h30", "Battle Cry")
    global mainAttCB := myGui.AddCheckbox("x10 y310 w200 h30", "All Main Attributes")
    global prestCB := myGui.AddCheckbox("x10 y340 w200 h30", "Prestigious")
    global fireCB := myGui.AddCheckbox("x10 y370 w200 h30", "Firestone Effect")
    global goldCB := myGui.AddCheckbox("x10 y400 w200 h30", "Raining Gold")
    global levelCB := myGui.AddCheckbox("x10 y430 w200 h30", "Hero Level Up Cost")
    global guardCB := myGui.AddCheckbox("x10 y460 w200 h30", "Guardian")
    global fistCB := myGui.AddCheckbox("x10 y490 w200 h30", "Fist Fight")
    global precCB := myGui.AddCheckbox("x10 y520 w200 h30", "Precision")
    global magicCB := myGui.AddCheckbox("x10 y550 w200 h30", "Magic Spells")
    global tankCB := myGui.AddCheckbox("x10 y580 w200 h30", "Tank Specialization")
    global damageCB := myGui.AddCheckbox("x10 y610 w200 h30", "Damage Specialization")
    global healCB := myGui.AddCheckbox("x10 y640 w200 h30", "Healer Specialization")
    myGui.SetFont("s11 Bold", "Tahoma")
    myGui.AddText("x0 y770 w900 h20 +0x200 +Center", "Be aware: The script does try to buy in order listed here (top to bottom)")

    ; --- Tab 4: QoL/Rare Options ---
    tab.UseTab(4)
    myGui.AddPicture("x450 y460 w300 h300", "Images\dragon.png")
    myGui.AddPicture("x0 y40 w900 h300", "Images\dragonbanner.png")
    myGui.SetFont("s15 Bold", "Tahoma")
    myGui.AddText("x0 y370 w900 h30 +0x200 +Center", "Rarer Options")
    myGui.SetFont("s9 Bold", "Tahoma")
    global beerCB := myGui.AddCheckbox("x10 y400 w300 h30", "Skip Claiming Beer")
    beerCB.Value := !!Beer
    global noGuildCB := myGui.AddCheckbox("x10 y430 w300 h30", "Skip All Guild Functions")
    noGuildCB.Value := !!NoGuild
    global noEngCB := myGui.AddCheckbox("x10 y460 w300 h30", "Skip Engineer")
    noEngCB.Value := !!NoEng
    global pickaxesCB := myGui.AddCheckbox("x10 y490 w400 h30", "Skip Claiming Pickaxes")
    pickaxesCB.Value := !!Pickaxes
    global gnotifCB := myGui.AddCheckbox("x10 y520 w400 h30", "Clear Annoying Guild Notifications")
    gnotifCB.Value := !!GNotif
    global alchCB := myGui.AddCheckbox("x10 y550 w200 h30", "Skip Alchemy")
    alchCB.Value := !!Alch
    global dustCB := myGui.AddCheckbox("x10 y580 w200 h30", "Don't Use Dust in Alchemy")
    dustCB.Value := !!Dust
    global coinCB := myGui.AddCheckbox("x10 y610 w400 h30", "Use Exotic Coins in Alchemy")
    coinCB.Value := !!Coin
    global researchCB := myGui.AddCheckbox("x10 y640 w400 h30", "Skip Research")
    researchCB.Value := !!Research
    global skipOracleCB := myGui.AddCheckbox("x10 y670 w400 h30", "Skip Oracle")
    skipOracleCB.Value := !!SkipOracle
    global noHeroCB := myGui.AddCheckbox("x10 y700 w400 h30", "Don't Upgrade Heroes")
    noHeroCB.Value := !!NoHero
    global noMapCB := myGui.AddCheckbox("x10 y730 w400 h30", "Don't Do Map Missions/Dailies")
    noMapCB.Value := !!NoMap
    myGui.AddText("x10 y760 w400 h30", "Set End of Loop Delay (In Seconds)")
    delayOptions := ["0", "30", "60", "120", "180", "240", "300", "600", "900", "1200"]
    delayIndex := 1
    for i, v in delayOptions
        if (v = Delay) {
            delayIndex := i
            break
        }
    global delayDD := myGui.AddDropDownList("x10 y790 w500 r5", delayOptions)
    delayDD.Value := delayIndex
    global disableWarningCB := myGui.AddCheckbox("x10 y820 w500 h30", "Do not show Steam warning again. (Popup when starting script)")
    disableWarningCB.Value := !!DisableWarning

    ; --- Tab 5: Other Options ---
    tab.UseTab(5)
    myGui.SetFont("s15 Bold", "Tahoma")
    myGui.AddPicture("x500 y340 w300 h500", "Images\barkeep.png")
    myGui.AddPicture("x10 y640 w200 h200", "Images\dragonchest.png")
    myGui.AddText("x0 y70 w900 h30 +0x200 +Center", "Other Misc Options")
    myGui.SetFont("s9 Bold", "Tahoma")
    global shopCB := myGui.AddCheckbox("x10 y100 w400 h30", "Get Free Gift and Check-In")
    shopCB.Value := !!Shop
    global dailyOracleCB := myGui.AddCheckbox("x10 y130 w400 h30", "Claim Daily Oracle")
    dailyOracleCB.Value := !!DailyOracle
    global pvpCB := myGui.AddCheckbox("x10 y160 w400 h30", "Complete Arena Battles")
    pvpCB.Value := !!PVP
    global liberationCB := myGui.AddCheckbox("x10 y190 w400 h40", "Complete Liberation Missions")
    liberationCB.Value := !!Liberation
    myGui.SetFont("s15 Bold", "Tahoma")
    myGui.AddText("x10 y230 w400 h30 +0x200 +Center", "~~ War Machine Upgrades ~~")
    myGui.SetFont("s9 Bold", "Tahoma")
    myGui.AddText("x10 y260 w400 h30", "List is from Left to Right in Garage - Ensure you set each dropdown so you don't waste resources you want to keep")
    upgradeWMOptions := ["Don't Upgrade WM's", "Upgrade Aegis", "Upgrade Cloudfist", "Upgrade Curator", "Upgrade Earthshatterer", "Upgrade FireCracker", "Upgrade Fortress", "Upgrade Goliath", "Upgrade Harvester", "Upgrade Hunter", "Upgrade Judgement", "Upgrade Sentinel", "Upgrade Talos", "Upgrade Thunderclap"]
    upgradeWMIndex := 1
    for i, v in upgradeWMOptions
        if (v = UpgradeWM) {
            upgradeWMIndex := i
            break
        }
    global upgradeWMDD := myGui.AddDropDownList("x10 y290 w400 r9", upgradeWMOptions)
    upgradeWMDD.Value := upgradeWMIndex
    myGui.AddText("x10 y320 w400 h30", "Choose to upgrade level only, blueprints only, or both!")
    wmOptionsOptions := ["Blueprints Only", "Level Only", "Level and Blueprints"]
    wmOptionsIndex := 1
    for i, v in wmOptionsOptions
        if (v = WMOptions) {
            wmOptionsIndex := i
            break
        }
    global wmOptionsDD := myGui.AddDropDownList("x10 y350 w400 r3", wmOptionsOptions)
    wmOptionsDD.Value := wmOptionsIndex
    myGui.AddText("x10 y380 w400 h30", "Choose the Blueprint priority (All Options will process from the left to right)")
    blueprintsOptions := ["Upgrade All", "Damage Only", "Health Only", "Armor Only", "Damage and Health", "Damage and Armor", "Health and Armor"]
    blueprintsIndex := 1
    for i, v in blueprintsOptions
        if (v = Blueprints) {
            blueprintsIndex := i
            break
        }
    global blueprintsDD := myGui.AddDropDownList("x10 y410 w400 r10", blueprintsOptions)
    blueprintsDD.Value := blueprintsIndex
    myGui.AddText("x10 y440 w400 h30", "Talents 450")
    talents450Options := ["None", "Option1", "Option2"]
    talents450Index := 1
    for i, v in talents450Options
        if (v = Talents450) {
            talents450Index := i
            break
        }
    
    ; --- Tab 6: Script Start ---
    tab.UseTab(6)
    myGui.AddPicture("x0 y0 w900 h250", "Images\fslogo.png")
    myGui.SetFont("s15 Bold", "Tahoma")
    myGui.AddText("x0 y260 w900 h30 +0x200 +Center", "Press START down below to run the Script")
    myGui.SetFont("s9 Bold", "Tahoma")
    myGui.AddText("x0 y290 w900 h30 +0x200 +Center", "Pressing Esc at any time will stop the Script")
    myGui.AddPicture("x0 y330 w900 h250", "Images\logo.png")
    myGui.AddText("x0 y600 w900 h30 +0x200 +Center", "Thank you for using my bot")
    myGui.AddText("x0 y630 w900 h30 +0x200 +Center", "Donations are never required, but accepted through Venmo:")
    myGui.AddText("x0 y660 w900 h30 +0x200 +Center", "@Spyder85")
    myGui.AddButton("x100 y710 w300 h60", "Save GUI Settings").OnEvent("Click", SaveSettings)
    myGui.AddButton("x500 y710 w300 h60 +0x200 +Center", "Start Script").OnEvent("Click", ButtonStart)

    tab.UseTab()
    myGui.OnEvent("Close", (*) => ExitApp())
    myGui.Show("w900 h800")
}

SaveSettings(*) {
    ; --- CommonOptions ---
    IniWrite(tokenCB.Value, "settings.ini", "CommonOptions", "Token")
    IniWrite(sellExCB.Value, "settings.ini", "CommonOptions", "SellEx")
    IniWrite(sellScrollsRB.Value, "settings.ini", "CommonOptions", "SellScrolls")
    IniWrite(sellNoGoldRB.Value, "settings.ini", "CommonOptions", "SellNoGold")
    IniWrite(sellAllRB.Value, "settings.ini", "CommonOptions", "SellAll")
    IniWrite(sellNoneRB.Value, "settings.ini", "CommonOptions", "SellNone")
    IniWrite(exoticUpgradesCB.Value, "settings.ini", "CommonOptions", "ExoticUpgrades")
    IniWrite(buyExCB.Value, "settings.ini", "CommonOptions", "BuyEx")
    IniWrite(chestsCB.Value, "settings.ini", "CommonOptions", "Chests")
    IniWrite(gearChestDD.Text, "settings.ini", "CommonOptions", "GearChestExclude")
    IniWrite(jewelChestDD.Text, "settings.ini", "CommonOptions", "JewelChestExclude")
    IniWrite(blessCB.Value, "settings.ini", "CommonOptions", "Bless")
    IniWrite(questsCB.Value, "settings.ini", "CommonOptions", "Quests")
    IniWrite(eventsCB.Value, "settings.ini", "CommonOptions", "Events")
    IniWrite(mailCB.Value, "settings.ini", "CommonOptions", "Mail")
    IniWrite(awakenCB.Value, "settings.ini", "CommonOptions", "Awaken")
    IniWrite(crystalCB.Value, "settings.ini", "CommonOptions", "Crystal")
    IniWrite(chaosCB.Value, "settings.ini", "CommonOptions", "Chaos")
    IniWrite(ptreeCB.Value, "settings.ini", "CommonOptions", "PTree")
    ; --- QoL/RareOptions ---
    IniWrite(beerCB.Value, "settings.ini", "QoL/RareOptions", "Beer")
    IniWrite(noGuildCB.Value, "settings.ini", "QoL/RareOptions", "NoGuild")
    IniWrite(noEngCB.Value, "settings.ini", "QoL/RareOptions", "NoEng")
    IniWrite(pickaxesCB.Value, "settings.ini", "QoL/RareOptions", "Pickaxes")
    IniWrite(gnotifCB.Value, "settings.ini", "QoL/RareOptions", "GNotif")
    IniWrite(alchCB.Value, "settings.ini", "QoL/RareOptions", "Alch")
    IniWrite(dustCB.Value, "settings.ini", "QoL/RareOptions", "Dust")
    IniWrite(coinCB.Value, "settings.ini", "QoL/RareOptions", "Coin")
    IniWrite(researchCB.Value, "settings.ini", "QoL/RareOptions", "Research")
    IniWrite(skipOracleCB.Value, "settings.ini", "QoL/RareOptions", "SkipOracle")
    IniWrite(noHeroCB.Value, "settings.ini", "QoL/RareOptions", "NoHero")
    IniWrite(noMapCB.Value, "settings.ini", "QoL/RareOptions", "NoMap")
    IniWrite(delayDD.Text, "settings.ini", "QoL/RareOptions", "Delay")
    IniWrite(disableWarningCB.Value, "settings.ini", "QoL/RareOptions", "DisableWarning")
    ; --- OtherOptions ---
    IniWrite(shopCB.Value, "settings.ini", "OtherOptions", "Shop")
    IniWrite(dailyOracleCB.Value, "settings.ini", "OtherOptions", "DailyOracle")
    IniWrite(pvpCB.Value, "settings.ini", "OtherOptions", "PVP")
    IniWrite(liberationCB.Value, "settings.ini", "OtherOptions", "Liberation")
    IniWrite(upgradeWMDD.Text, "settings.ini", "OtherOptions", "UpgradeWM")
    IniWrite(wmOptionsDD.Text, "settings.ini", "OtherOptions", "WMOptions")
    IniWrite(blueprintsDD.Text, "settings.ini", "OtherOptions", "Blueprints")
    MsgBox "Gui Settings Saved", "Gui Settings"
}

ButtonStart(*) {
    SetTimer(MainScript, 1000)
}

; Call ShowGui to initialize and display the GUI when the script starts
ShowGui()