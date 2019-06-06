div := Number getSlot("/")
Number / := method(rval, 
    if (rval == 0, 0, self div(rval))
)

(1 / 0) println
(4 / 2) println
(2 / 3) println