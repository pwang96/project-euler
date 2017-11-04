let squares = List.map (fun x -> x*x) (0--600)

let answer = 
  List.fold_left (fun a x ->
    List.fold_left (fun b y -> let diff = abs (x*x - y*y) in
      if List.mem diff squares && (x + y + int_of_float (sqrt (float_of_int diff))) = 1000 
        then x*y*(int_of_float (sqrt (float_of_int diff)))
      else b) a (List.rev (1--600))) 0 (List.rev (1--600))