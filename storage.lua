itemCount = 0
-- May need to change the number on "tile_#". Appears it changes.
p = peripheral.wrap("toms_storage:ts.inventory_connector.tile_1")
-- May need to change monitor value as well. Can also make it wrap a direction instead.
monitor = peripheral.wrap("monitor_0")

while itemCount < 10000000000  do 
    for _ in pairs(p.list()) do
        itemCount = itemCount + 1
    end
    -- This was made with 2x2 advanced monitors. Will probably need to resize font based on # of monitors
    monitor.clear()
    monitor.setCursorPos(1,1)
    -- Uncomment the line below so set the text scale. 1 will will a 1x2 of advanced monitors. 1x2 is the minimum needed unless you remove the text and just have numbers.
    -- You can changed the text scale .5 increments starting at .5 and going to 5
    -- monitor.setTextScale(1)
    spaceLeft = p.size()  - itemCount
    monitor.write("Storage left: " ..  spaceLeft)
    -- If you would prefer to see a ratio, uncomment the below line and comment or delete the above line.
    -- monitor.write("Storage: " .. spaceLeft .. "/" .. p.size())
    -- This will make it check every 30 seconds. Change this for less impact. I used 150 seconds so it was still often but not as impactful.
    local count = 30
    -- Can go through and remove the countdown if you down want that.
    while count > -1  do
        monitor.setCursorPos(1,2)
        monitor.write("Seconds until the")
        monitor.setCursorPos(1,3)
        monitor.clearLine()
        monitor.write("Next check: " .. count)
        count = count - 1
        sleep(1)
    end   
    itemCount = 0
end
