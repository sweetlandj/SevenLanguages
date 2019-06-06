fib := method(i,
    if (i < 3, 1, fib(i - 1) + fib(i - 2))
)

fib(1) println
fib(4) println