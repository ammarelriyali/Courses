val months = ["January", "February", "March", "April", "May", "June", "July",  "August", "September", "October", "November", "December"]
val months_number_list=[31,28,31 ,30 ,31 ,30 ,31, 31, 30, 31,   30, 31]

fun is_older (d1:int*int*int ,d2:int*int*int)=
    (#1 d1) < (#1 d2)  orelse  ((#1 d1) = (#1 d2) andalso (#2 d1 < #2 d2))
    orelse ((#1 d1) = (#1 d2) andalso (#2 d1 = #2 d2) andalso (#3 d1 < #3 d2))
 
fun number_in_month (d :(int*int*int) list, m : int )=
if null d 
then 0 
else (if #2 (hd d) = m then 1 else 0) + number_in_month( (tl d), m)

fun number_in_months (d :(int*int*int) list, m : int list  ) =
if null m 
then 0
else number_in_month(d,(hd m)) + number_in_months(d,(tl m))

fun dates_in_month(d :(int*int*int) list, m : int )=
if null d
then []
else if (#2 (hd d)) = m
    then (hd d) :: dates_in_month((tl d),m)
    else dates_in_month((tl d),m)


fun dates_in_months(d :(int*int*int) list, m : int list )=
    if null m 
    then []
    else dates_in_month(d,(hd m)) @  dates_in_months(d,(tl m))

fun get_nth(s: string list , n : int )=
    if n = 1
    then (hd s)
    else get_nth((tl s),(n-1))

fun get_nth_number(s: int list , n : int )=
    if n = 1
    then (hd s)
    else get_nth_number((tl s),(n-1))

fun date_to_string(d : int *int * int )=
    get_nth(months, #2 d) ^ " "^Int.toString(#3 d)^", "^Int.toString(#1 d)



fun number_before_reaching_sum(sum : int , l : int list)=
    if  sum <= hd l 
    then 0
    else 1 + number_before_reaching_sum((sum - (hd l)),(tl l))
    


fun what_month(n : int )=
   1 + number_before_reaching_sum(n,months_number_list)



fun month_range(d1:int,d2:int)=
if  d1 >  d2
then []
else what_month(d1)::month_range(d1+1,d2)


fun oldest(d:(int*int*int) list)=
if null d 
then NONE
else let val dx= oldest(tl d)   
    in if isSome dx andalso is_older((valOf dx),(hd d))
    then dx 
    else SOME (hd d)
    end



fun remove_duplicates(m: int list)=
    if null m
    then []
    else
    let fun  remove_d(x:int,l : int list)=
        if null l
        then x
        else if x = hd l
            then 0
            else remove_d(x,tl l)
    in
        let val ret =remove_d(hd m,tl m)
        in
            if ret = 0
            then remove_duplicates(tl m)
            else ret::remove_duplicates(tl m)
        end 
    end
    
fun number_in_months_challenge(d :(int*int*int) list, m : int list )=
number_in_months(d,remove_duplicates(m))

fun dates_in_months_challenge(d :(int*int*int) list, m : int list )=
dates_in_months(d,remove_duplicates(m))




(* use "homework1.sml"; *)