s = """...."""
n = len(s)
m = 0
for i in range(n-13):
  if '0' in s[i:i+13]:
    continue
  m = max(m, functools.reduce(lambda x,y:x*y, [int(c) for c in s[i:i+13]]))