type card = Joker | Val of int;;

let cardOk = function 
    Joker -> true
  | Val n -> n>0 && n<=10
;;
let win pl dl = 
  assert(cardOk pl && cardOk dl);
  match (pl, dl) with 
    (_, Joker) -> false
  | (Joker, _) -> true
  | (Val p, Val d) -> p>d
;;