# ComputerCraft-Storage-Monitor
ComputerCraft:Tweaked storage monitor for Tom's Simple Storage

I coded this simple monitoring system to monitor my Tom's Simple Storage System on Minecraft 1.18 and Minecraft 1.19. This system used a wired modem on the computer, a wired modem on the inventory connector, and a wired modem on the monitors. Advanced computer and monitors were used in this. Did not test with a basic computer. Couldn't be bothered :). This also wasn't tested with anything other than chests, iron chests, or expanded storage chests. 

The monitor set up was a 2x2 monitor system (I think? I lost the world, kept the code. May have been 2x3.) The minimum monitors needed is a 1x2 because of text size.

By default, it will display "Storage left" which will tell you how many open slots in the chest are available. This does NOT keep track of total items in the storage, just the amount of total open slots in the connected chests. It will also display a countdown of the next inventory check. This is set to 30 seconds at default to not limit impact.

There are some comments in the code to help understand or customize this program. Also if any issues arise or have contributions, let me know!

To use this code, you will need to either code it into computercraft yourself using "edit program_name_here" and then running it after, or you can download this file, go to your world folder, computercraft, find your computer folder (It's a number), and place the lua file in there. This will require a server restart for it to be recognized, I believe. Note that it may stop running if the chunk the computer or storage is in unloads, or if the server/world restarts. You will simply need to rerun it. This also makes the computer unusable while the program is active.
