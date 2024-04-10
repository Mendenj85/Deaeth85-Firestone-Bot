----Readme----

~~~ Changes from @Dandeys version ~~~
1. Code itself - broke it up into individual files for ease of updating
2. GUI - added a plethora of options to customize what you want the bot to do
3. Fixed guardian evolve not working
4. Tweaked alchemy as it wasn't working correctly for me

~~~ Features ~~~
New in Version 2.0
1. MAJOR GUI update. Much prettier to look at now :) (See tab info below for specics on what each option does)
2. New option to skip all guild functions. Great for lower level or guildless players.
3. New option to skip engineer for those lower level.
4. Open chests redone. Now looks for chests by specific chest, option to exclude ones you don't have/can't open
    a. I have most/all added, however I can't test the ones I don't own, feedback appreciated
5. New exotic sell option
6. New claim exotic chests option
7. Oracle claim blessings and rituals is smoother and faster
8. Maps redone, smoother (currently has 2 second message boxes for troubleshooting and feedback)
9. Major research overhaul
    a. Will now go column by column based on what I can see up through Tree 4. If future columns are diff may skip some
    b. Will take a long time if you are on back half, will look to speeding process up in the near future
10. Included .exe file in the release for ease of running the Bot
11. Function to claim "basic" events with 3 challenges to complete
12. New Function to upgrade WM's. Can upgrade level or blueprints
    a. Blueprints can be specified via drop down which to upgrade, every combination.
    b. Any multiple blueprint option will upgrade from damage, to health, to armor

~~~ Installation Instructions ~~~
1. Download and Extract to spot of your choice
2. Requires AHK 1.1.33
3. You can run via the executable
    a. if you get a windows popup just click info, and run anyways 
    b. Scan it for virus's if you aren't comfortable doing that first

~~~ About Tab ~~~
    a. useful information prior to starting the script
    b. Game needs to be in a maxmized (not fullscreen) 1920x1080 resolution or the mouse coordinates may not be accurate
    c. I recommend setting the Upgrades tab to milestone before starting
    d. You will NOT be able to use your pc while the script is running. Hitting esc will stop the script
        aa. Dandey had it as F10 but some laptops won't allow that key as a hotkey
    e. There is a 1 minute delay after the hero upgrades section that you can quickly use your mouse
        aa. make sure game is focused before that 1 minute is up, worst case just hit esc and start it over when you are done

~~~ Common Tab ~~~
1. Skip claiming beer - skips going to the tavern to claim beer for tokens
2. Use Tavern Tokens - will use 1 or tokens at a time and select at random one of the 6 cards
    aa. will NOT work if Skip Claiming Beer is selected as it's a sub function inside that script
5. Sell ALL Exotic Items - master sell exotic toggle
    1. Sell ONLY Exotic Scrolls - just sell the scrolls 
    2. Sell All But Gold Items - Keeps your gold items from being sold
    3. Sell All Exotic - Sells everything
6. Buy Exotic Chests - Attempts to buy each of the 3 types of exotic chests (highest version only)
7. Open Chests - Master checkbox to open chests in your bag (dropdowns currently only set to those with level req's)
    a. Dropdown to exclude chests you either want to keep, or don't have access to open
    b. Dropdown to exclude Jewel chests you want to keep or don't have access to
    c. Timed message boxes enabled to help troubleshoot and for y'all to provide feedback
    d. Will NOT open Oracle related chests as that part is in the Upgrade Blessings section - may fine tune in the future
    e. Mysteryboxes and Oracle loot will be opened if Open Chests is selected
    f. Currently only chests I have access to are on this list, future updates will include more
8. Upgrade Blessings - Will purchase blessings that can be upgraded, looks from 12 o-clock position then goes clockwise
    a. this option will claim the oracle related chests even if you don't have Open Chests option selected
9. Claim Daily Quests - Claims the daily Quests
10. Claim Weekly Quests - Claims the weekly Quests 
11. Claim Basic Events - will try to claim event rewards (only will work with basic events with 3 challenges, don't try to use on others)
12. Check Mail - checks your mailbag and claims/deletes mail
13. Awaken Heroes - Will automatically awaken heroes when the icon is present on the homescreen
14. Spend Pickaxes on Crystal - must select if you want to hit the crystal
15. Upgrade Personal Tree - lets you attempt to purchase ptree upgrades
    a. See Personal Tree tab for options

~~~ Personal Tree Upgrades Tab ~~~
1. Every node is listed
2. You can choose as many, or as few as you would like
3. It will cycle through the list as listed on this page; so be wary if you choose a few but want something specific first

~~~ Qol/Rare Options Tab ~~~
1. Skip All Guild Functions - skips anything guild related for those not in guild or too low level
2. Skip Engineer - skips engineer tools claim for those too low level 
3. Skip Claiming Pickaxes - lets you not claim to hoard collection
4. Clear Annoying Guild Notifications - I hate the red dot, so added this feature for others like me
5. Skip Alchemy - select this to not have anything done with alchemy
6. Use Exotic Coins in Alchemy - Have too many? Select this to burn 'em up in Alchemy
7. Skip Research - select to have it skip any firestone Research

~~~ Other Options Tab ~~~
1. Get Free Gift and Check-in - claims the daily rewards from the shop
2. Claim Daily Oracle - claims oracle daily reward
3. Complete Arena Battles - does your arena fights for you
    a. randomly chooses 1 of the 3 opponents
    b. refreshes after every fights
4. Liberation Missions - dropdown to select your stars option to have it do liberation missions for you
5. War Machine Upgrades
    a. Choose from the list, currently was only able to test with the 8 I have so will need feedback
    b. Also may have to add scrolling ability as I only have 8 WM's so can't fully test this function, feedback appreciated
    c. Can upgrade just via anvil tab, or even blueprints and choose exactly which you want to upgrade
    d. Will only attempt to upgrade if the engineer icon is visible on the main screen

~~~ Script Start Tab ~~~
Final page, START button is at the bottom
Thanks for downloading this bot, I hope you enjoy it!