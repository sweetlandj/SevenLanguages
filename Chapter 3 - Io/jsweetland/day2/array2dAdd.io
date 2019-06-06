array2dAdd := method(array2d,
    sum := 0
    array2d foreach(row,
        row foreach(cell,
            sum = sum + cell
        )
    )
    sum
)

a := list(list(1, 2, 3), list(4, 5, 6))
sum := array2dAdd(a)
sum println