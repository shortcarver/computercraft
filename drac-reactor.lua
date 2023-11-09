-- Code to control a draconic reactor
-- inGate - the flux gate that is sending power into the reactor
-- outGate - the flux gate that is extracting power from the reactor
-- reactor - the stabilizaer that the computer is next to.

reactor = peripheral.wrap("bottom")
inGate = peripheral.wrap("right")
outGate = peripheral.wrap("left")
 
goalfs = 20
goaltemp = 8000
last_es = 0
last_fs = 0
 
while true do
   
    info = reactor.getReactorInfo()
    temp = info.temperature
    maxfs = info.maxFieldStrength
    maxes = info.maxEnergySaturation
    fs = info.fieldStrength
    es = info.energySaturation
    
    if last_es == 0 then last_es = es end
    if last_fs == 0 then last_fs = fs end
    
    print(es)
    
    fsp = 100 * fs/maxfs
    
--    if fsp < 20 then
--     inGate.setSignalLowFlow(inGate.getSignalLowFlow() + 500)
--    elseif fsp > 20 then
--     inGate.setSignalLowFlow(inGate.getSignalLowFlow() - 500)
--    end

    inGate.setSignalLowFlow(inGate.getSignalLowFlow() + (20-fsp)*250)

    -- input safety
    if inGate.getSignalLowFlow() < 100000 then
      inGate.setSignalLowFlow(100000)
    end
    
    outGate.setSignalLowFlow(info.generationRate * 8000/temp)
    
  
    last_es = es
    last_fs = fs    
    
    os.sleep(2)
 
end
