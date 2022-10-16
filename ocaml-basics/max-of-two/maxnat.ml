let isNat a = a>=0 ;;

let max_nat a b = if isNat a && isNat b 
  then if a>b then a else b 
  else failwith "Error";;
