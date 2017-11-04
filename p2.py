def sum_fib():
  a, b = 1, 1
  s = 0
  while b < 4000000:
    a, b = b, a+b
    if not b%2:
    s += b
  return s