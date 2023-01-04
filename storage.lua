test = 0
p = peripheral.wrap("toms_storage:ts.inventory_connector.tile_1")
monitor = peripheral.wrap("monitor_0")

while test < 10000000000  do 
    for _ in pairs(p.list()) do
        test = test + 1
    end
    monitor.clear()
    monitor.setCursorPos(1,1) 
    spaceLeft = p.size()  - test
    monitor.write("Storage left: " ..  spaceLeft)
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
    test = 0
end
