(* Coursera Programming Languages, Homework 3, Provided Code *)

exception NoAnswer

fun only_capitals xs =List.filter (fn x=> Char.isUpper(String.sub(x,0)))  xs


fun longest_string1 xs = foldl (fn (x,acc)=> if size(acc) < size(x) then x else acc )  "" xs

fun longest_string2 xs = foldl (fn (x,acc)=> if size(acc) <= size(x) then x else acc )  "" xs

fun longest_string_helper f xs= foldl f "" xs

val longest_string3  = longest_string_helper (fn (x,acc)=> if size(acc) < size(x) then x else acc ) 

val longest_string4  =longest_string_helper (fn (x,acc)=> if size(acc) <= size(x) then x else acc )

fun longest_capitalized xs = (longest_string1 o only_capitals) xs 

fun rev_string s = (String.implode o List.rev o String.explode) s

fun first_answer f xs =  
	case xs of
		[] => raise NoAnswer
		| x::xs' => let val i=f x in (case i of NONE => first_answer f xs' | SOME z => z) end



fun all_answers f xs = 
let fun helper (acc,xs)=
	case xs of 
	[] => SOME acc
	| x::xs' =>   let val i= f x in (case i of NONE => NONE | SOME z=>  helper (z @ acc , xs' ) ) 
	end
	in
	helper([],xs)
	end



datatype pattern = Wildcard
		 | Variable of string
		 | UnitP
		 | ConstP of int
		 | TupleP of pattern list
		 | ConstructorP of string * pattern

datatype valu = Const of int
	      | Unit
	      | Tuple of valu list
	      | Constructor of string * valu

fun g f1 f2 p =
    let 
	val r = g f1 f2 
    in
	case p of
	    Wildcard          => f1 ()
	  | Variable x        => f2 x
	  | TupleP ps         => List.foldl (fn (p,i) => (r p) + i) 0 ps
	  | ConstructorP(_,p) => r p
	  | _                 => 0
    end


fun count_wildcards p = g (fn x=> 1)  (fn y=>0) p 

val test9a = count_wildcards Wildcard = 1
val test9aa = count_wildcards (TupleP[Wildcard,Variable "d",Wildcard ] )

fun count_wild_and_variable_lengths p= g (fn x=> 1)  (fn y=>String.size y) p 

val test9b = count_wild_and_variable_lengths (Variable("a")) = 1
val test9aagb =  count_wild_and_variable_lengths ( TupleP[Wildcard,Variable "damaa",Wildcard,(ConstructorP("amar",Wildcard)) ] )

fun count_some_var (s,p) = g (fn x=> 0)  (fn y=>if s=y then 1 else 0) p 

val test9c = count_some_var ("x", Variable("x")) = 1
val test9cs = count_some_var("amar" ,( TupleP[Wildcard,Variable "damaa",Wildcard,(ConstructorP("amar",Variable "amar")) ] ))

fun check_pat p =
let fun  my_g p =
	case p of
		Variable x        => [x]
	  | TupleP ps         => List.foldl (fn (p,i) => (my_g p) @ i) [] ps
	  | ConstructorP(_,p) => my_g p
	  | _ 				  => []

	val listt=my_g  p 
		fun getdis l=
		case l of 
		[]=>true 
		| x::xs => (if (List.exists (fn y=> x=y) xs) = true then false else getdis xs)
	in
	getdis listt
	end 
 



val test1042 = check_pat (TupleP[ConstP 17,Wildcard,ConstP 4,ConstructorP ("egg",ConstP 4),ConstructorP ("egg",ConstructorP ("egg",ConstP 4))])
val test10432 = check_pat (TupleP[ConstP 4,Wildcard,Variable "ba",TupleP[Variable "ab"]])
val test1044 = check_pat (TupleP[ConstructorP ("egg",ConstP 4),ConstructorP ("egg",ConstP 4)])
val test1045 = check_pat (TupleP[ConstP 17,Wildcard,ConstP 4,ConstructorP ("egg",ConstP 4),ConstructorP ("egg",ConstructorP ("egg",ConstP 4)),TupleP[ConstP 17,Wildcard,ConstP 4,ConstructorP ("egg",ConstP 4),ConstructorP ("egg",ConstructorP ("egg",ConstP 4))],TupleP[Wildcard,Wildcard],TupleP[ConstP 17,ConstP 4],TupleP[ConstructorP ("egg",ConstP 4),ConstructorP ("egg",ConstP 4)]])
val test1046 = check_pat (ConstructorP ("hi",TupleP[Variable "x",ConstructorP ("yo",TupleP[Variable "x",UnitP])]))
(* val test104 = check_pat ((Constructor ("egg",Const 4),[ConstP 4])) *)


fun match (v,p)=
case p of 
Wildcard => SOME []
|Variable s => SOME [(s,v)]
|UnitP => (case v of Unit => SOME [] | _ =>NONE)
|ConstP i => (case v of Const x => (if i = x then SOME [] else NONE)| _ => NONE ) 
|TupleP ps => (case v of Tuple pv => 
								(if length ps = length pv  then (all_answers (fn x=> match x) (ListPair.zip(pv,ps))) else NONE)
						| _ => NONE ) 
|ConstructorP (s1,p1) =>(case v of Constructor (s2,v2) => (if s1 = s2 then match(v2,p1) else NONE)| _ => NONE ) 


val test11 = match (Const(1), UnitP) = NONE

fun curry f x y = f (x,y)
fun first_match v ps  = SOME (first_answer (curry match v ) ps ) handle NoAnswer => NONE





datatype typ = Anything
	     | UnitT
	     | IntT
	     | TupleT of typ list
	     | Datatype of string


fun typecheck_patterns ty =
case ty of 
[]=>
| x::xs => 



(* use "t.sml"; *)