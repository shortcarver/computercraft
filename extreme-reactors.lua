-- https://pastebin.com/7rrdugAT
-- Used in Age of Engineering. Controls an extreme 
-- reactor's fuel rods based on stored energy so as not to waste fuel

reactor = peripheral.wrap("back")
 
while true do
  level = reactor.getEnergyStored() / reactor.getEnergyCapacity() * 100
  reactor.setAllControlRodLevels(level)
  
  os.sleep(10)
end
