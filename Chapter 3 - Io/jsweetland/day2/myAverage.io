List myAverage := method(
    count := self size
    total := 0
    self foreach(i,
        if(i isKindOf(Number), 
            total = total + i, 
            Exception raise("\""..(i asString).."\" is not a Number!")
        )
    )
    if(count == 0, 0, total / count)
)

a := list(4, 4, 8, 5, 1)
a myAverage println

b := list("four", "four", "eight", "five", "one")
b myAverage println