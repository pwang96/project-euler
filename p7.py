def gen_primes():
  d = {}
  q = 2
  while True:
    if q not in d:
      yield q
      d[q*q] = [q]
    else:
      for p in d[q]:
        d.setdefault(p+q, []).append(p)
      del d[q]
    q += 1

g = gen_primes()
for _ in range(100001):
  next(g)