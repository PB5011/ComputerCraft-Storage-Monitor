itemCount = 0
-- May need to change the number on "tile_#". Appears it changes.
p = peripheral.wrap("toms_storage:ts.inventory_connector.tile_1")
--May need to change monitor value as well. Can also make it wrap a direction instead.
monitor = peripheral.wrap("monitor_0")

while itemCount < 10000000000  do 
    for _ in pairs(p.list()) do
        itemCount = itemCount + 1
    end
    -- This was made with 2x2 advanced monitors. Will probably need to resize font based on # of monitors
    monitor.clear()
    monitor.setCursorPos(1,1) 
    spaceLeft = p.size()  - itemCount
    monitor.write("Storage left: " ..  spaceLeft)
    -- This will make it check every 30 seconds. Change this for less impact. I used 150 seconds so it was still often but not as impactful.
    local count = 30
    while count > -1  do
        monitor.setCursorPos(1,2)
        monitor.write("Seconds until the")
        monitor.setCursorPos(1,3)
        monitor.clearLine()
        monitor.write("next check: " .. count)
        count = count - 1
        sleep(1)
    end   
    itemCount = 0
end
