let is_prime n = 
  if n=2 then true
  else if n<2 || n mod 2 = 0 then false
  else
    let rec loop k = 
      if k*k > n then true
      else if n mod k = 0 then false
      else loop (k+2) in
  loop 3

let rec answer = function
  | n when (is_prime n) && 600851475143 mod n = 0 -> n
  | n -> answer (n-1)

answer sqrt(600851475143)