Array2d := Object clone
Array2d dim := method(x, y,
    self rows := List clone
    rows setSize(y)
    for(rowIndex, 0, y - 1,
        row := List clone
        row setSize(x)
        rows atPut(rowIndex, row)
    )
)

Array2d set := method(x, y, value,
    row := self rows at(y)
    row atPut(x, value)
)

Array2d get := method(x, y,
    row := self rows at(y)
    row at(x)
)

a := Array2d clone
a dim(3, 4)
a set(0, 0, "(0, 0)")
a set(2, 3, "(2, 3)")

a get(0, 0) println
a get(2, 3) println
