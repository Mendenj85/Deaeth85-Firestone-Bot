----Readme----

~~~ Changes from @Dandeys version ~~~
1. Code itself - broke it up into individual files for ease of updating
2. GUI - added a plethora of options to customize what you want the bot to do
3. Fixed guardian evolve not working
4. Tweaked alchemy as it wasn't working correctly for me

~~~ Features ~~~
Version 1.0
1. Selectable option added to claim beer and use tavern tokens
2. Oracle section added
    a. Will start/claim rituals
    b. Selectable option to claim daily with an added failsafe in case steam popup comes
    c. Selectable option to upgrade blessings
3. Guild options expanded
    a. Selectable option to NOT claim pickaxes
    b. Selectable option to NOT hit the crystal
    c. Selectable option to buy personal tree upgrades
4. Will upgrade heroes
5. Selectable option to open chests
    a. With Oracle's upgrade blessings option chosen, and chest option NOT chosen, will only open oracle related chests
    b. Failsafe added in case first slot chest is un-openable, will open second slot
6. Selectable option for claiming both daily and weekly chests (each have their own option)
7. Selectable option to sell ALL exotic items, or just scrolls
8. Selectable option to use exotic coins for alchemy

~~~ Installation Instructions ~~~
1. Download and Extract to spot of your choice
2. Requires a version of AHK lower than 2.0
3. You can run via the executable
    a. if you get a windows popup just click info, and run anyways

~~~ About Tab ~~~
    a. useful information prior to starting the script
    b. Game needs to be in a maxmized (not fullscreen) 1920x1080 resolution or the mouse coordinates may not be accurate
    c. I recommend setting the Upgrades tab to milestone before starting
    d. You will NOT be able to use your pc while the script is running. Hitting esc will stop the script
        aa. Dandey had it as F10 but some laptops won't allow that key as a hotkey
    e. There is a 1 minute delay after the hero upgrades section that you can quickly use your mouse
        aa. make sure game is focused before that 1 minute is up, worst case just hit esc and start it over when you are done

~~~ Options Tab ~~~
1. Skip Alchemy - select this to not have anything done with alchemy
2. Skip Research - select to have it skip any firestone Research
3. Skip claiming beer - skips going to the tavern to claim beer for tokens
4. Use Tavern Tokens - will use 1 token at a time and select at random one of the 6 cards
    aa. will NOT work if Skip Claiming Beer is selected as it's a sub function inside that script
5. Sell ALL Exotic Items - master sell exotic toggle
    1. Sell only scrolls - choose 1 or 2 only
    2. Sell all exotic - choose 1 or 2 only
6. Skip Claiming Pickaxes - lets you not claim to hoard collection
7. Spend Pickaxes on Crystal - must select if you want to hit the crystal
8. Upgrade Personal Tree - lets you attempt to purchase ptree upgrades
    a. See Personal Tree tab for options
9. Clear Annoying Guild Notifications - I hate the red dot, so added this feature for others like me
10. Use Exotic Coins in Alchemy - Have too many? Select this to burn 'em up in Alchemy
11. Claim Daily Oracle - Claims the daily oracle reward
    a. has a currently un-tested steam popup failsafe
12. Upgrade Blessings - Will cycle through the blessings from top and going clockwise direction
    a. this option will claim the oracle related chests even if you don't have Open Chests option selected
13. Claim Daily Quests - Claims the daily Quests
14. Cleaim Weekly Quests - Claims the weekly Quests
15. Open Chests - will open 1 chest at a time from the first slot
    a. failsafe added where it will also claim one from 2nd slot, just in case you have an un-openable first slot chest

~~~ Personal Tree Tab~~~
1. Every node is listed
2. You can choose as many, or as few as you would like
3. It will cycle through the list as listed on this page; so be wary if you choose a few but want something specific first

~~~ Start Script Tab ~~~
Final page, START button is at the bottom
Thanks for downloading this bot, I hope you enjoy it!