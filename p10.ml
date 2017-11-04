List.fold_left (fun a x -> if is_prime x then a+x else a) 0 (1--2000000)
