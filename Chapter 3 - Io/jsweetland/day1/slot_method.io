Counter := Object clone
Counter count ::= 1
Counter setCount(0)
Counter inc ::= method(
    currentCount := Counter count
    if (currentCount == nil, currentCount := 0)
    Counter setCount(currentCount + 1) 
)

Counter inc
Counter inc
Counter count println