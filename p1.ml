let rec sum35 = function
  | x when x=5 -> 8
  | x when ((x mod 5)=0 || (x mod 3)=0) -> x + (sum35 (x-1))
  | x -> sum35 (x-1);; 