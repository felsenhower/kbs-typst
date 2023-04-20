#let count = 8
#let nums = range(1, count + 1)
#let fib(n) = {
  if n <= 2 { 1 }
  else { fib(n - 1) + fib(n - 2) }
}

The first #count Fibonacci Numbers are:

#align(center)[
  #table(
    columns: count,
    ..(nums.map(n => $F_#n$)),
    ..(nums.map(n => str(fib(n)))),
  )
]
