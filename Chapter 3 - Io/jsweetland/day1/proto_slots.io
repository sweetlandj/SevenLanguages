Vehicle := Object clone
Vehicle setSlot("x", 0)
Vehicle setSlot("y", 0)

Hyundai := Vehicle clone
Hyundai setSlot("make", "Hyundai")

Tucson := Hyundai clone
Tucson setSlot("model", "Tucson")
Tucson setSlot("style", "Crossover")

myCar := Tucson clone
myCar setSlot("vin", "1HGCM82633A004352")
myCar setSlot("odometer", 84000)

p := myCar proto
while(p != Object,
    p type println
    p slotNames println
    p := p proto
)

