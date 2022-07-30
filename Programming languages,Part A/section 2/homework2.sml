fun same_string(s1 : string, s2 : string) =
    s1 = s2

fun all_except_option(s,xs)=
case xs of 
[] => NONE
|x::xs' => if same_string(x,s)
          then SOME xs'
          else case all_except_option(s,xs') of 
                NONE => NONE
                | SOME y => SOME(x::y)

fun get_substitutions1 (substitutions,str) =
    case substitutions of
	    [] =>[]
      |x::xs' => case all_except_option(str,x) of
                  NONE => get_substitutions1(xs',str)
                  |SOME y =>  get_substitutions1(xs',str) @ y

fun get_substitutions2(substitutions,str)=
  let fun funhelper(sub,acc)=
    case sub of 
    []=> acc
    | x::xs => case all_except_option(str,x) of
            NONE => funhelper(xs,acc)
            | SOME y => funhelper(xs, acc @ y)
  in 
  funhelper(substitutions,[])
  end

fun similar_names(ls,{first=f, middle=m, last=l})=
let
  fun makeName(xs , acc)=
    case xs of 
    []=>acc
    | x::xs' => makeName(xs', acc @ [{first=x, middle=m, last=l}])
  in
  makeName(get_substitutions2(ls,f),{first=f, middle=m, last=l}::[])
  end

  
datatype suit = Clubs | Diamonds | Hearts | Spades
datatype rank = Jack | Queen | King | Ace | Num of int 
type card = suit * rank

datatype color = Red | Black
datatype move = Discard of card | Draw 

exception IllegalMove


fun card_color c = 
  case c of 
  (Spades,_)=> Black
  | (Clubs,_)=>Black
  | (_,_) => Red

fun card_value c=
case c of 
 (_,Ace)=> 11
| (_,Num x)=> x
| (_,_)=> 10

fun remove_card(cs,c,ex)=
case cs of 
 [] => raise ex
| x::xs => if x = c
          then xs
          else x::remove_card(xs,c,ex)
          
fun all_same_color xs=
case xs of 
y::x::xs' =>  (card_color y) = (card_color x) andalso all_same_color(x::xs')
|_=>true

fun sum_cards l =
let fun sumC(xs,sum)=
    case xs of 
    []=>sum
    |x::xs' => sumC(xs',card_value(x)+sum)
    in
    sumC(l,0)
    end
(* HELD CAR D *)
fun score (xs , g)=
let val sum = sum_cards xs 
in 
(if g < sum 
then  3*(sum - g)
else g-sum) div  (if all_same_color xs then 2 else 1)
end



 fun officiate (c ,m,g)=
 let fun helper(cl , ml ,hc)=
 case ml of 
 []=> score(hc,g)
 |x::ml' => (case x of 
            Draw => (case cl of 
                      []=>helper([],[],hc)
                      | y::cl' =>  if sum_cards(y::hc) > g
                                      then helper(cl',[],y::hc)
                                      else helper(cl',ml',y::hc)
                                      
                      )
            | Discard card => helper(cl,ml',remove_card(hc,card,IllegalMove))
            )
in 
helper(c,m,[])
end

(* HELD CAR D *)
fun card_value_challenge c=
case c of 
 (_,Ace)=> 1
| (_,Num x)=> x
| (_,_)=> 10

fun sum_cards_challenge l =
let fun sumC(xs,sum)=
    case xs of 
    []=>sum
    |x::xs' => sumC(xs',card_value_challenge(x)+sum)
    in
    sumC(l,0)
    end

fun score_challenge (xs , g)=
let val sum = sum_cards xs
    val sumc= sum_cards_challenge xs
  val sum1=(if g < sum  then  3*(sum - g) else g-sum) div  (if all_same_color xs then 2 else 1)
  val sum2= (if g < sumc
then  3*(sumc - g)
else g-sumc) div  (if all_same_color xs then 2 else 1)
in 
if sum1>sum2
then sum2
else sum1
end

 fun  officiate_challenge(c ,m,g)=
 let fun helper(cl , ml ,hc)=
 case ml of 
 []=> score_challenge(hc,g)
 |x::ml' => (case x of 
            Draw => (case cl of 
                      []=>helper([],[],hc)
                      | y::cl' =>if sum_cards(y::hc) > g andalso sum_cards_challenge (y::hc) > g 
                                      then helper(cl',[],y::hc)
                                      else helper(cl',ml',y::hc)
                      )
            | Discard card => helper(cl,ml',remove_card(hc,card,IllegalMove))
            )
in 
helper(c,m,[])
end




(* use "homework2.sml"; *)
(* use "t.sml"; *)
