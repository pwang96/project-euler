let rev_string s = 
  let rec helper s = 
    let n = String.length s in
    if n=1 then s else (helper (String.sub s 1 (n-1))) ^ Char.escaped s.[0]
    in
  helper s

let is_palindrome s = rev_string s = s

let (--) i j = 
    let rec aux n acc =
      if n < i then acc else aux (n-1) (n :: acc)
    in aux j [] ;;
  
let answer = 
  List.fold_left (fun a x ->
    List.fold_left (fun b y -> 
      if is_palindrome (string_of_int (x*y))
        then (max b (x*y))
      else b) a (List.rev (1--999))) 0 (List.rev (1--999))