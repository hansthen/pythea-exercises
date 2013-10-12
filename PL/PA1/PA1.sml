(* utitlity function to convert a date tuple to an int *)
fun date2i(date:int*int*int) = 
     #1 date * 10000 + #2 date * 100 + #3 date;

(* ex 1 *)
fun is_older(d1:int*int*int, d2:int*int*int) = 
     date2i(d1) < date2i(d2);

(* ex 2 *)
fun number_in_month(dates: (int*int*int) list, month:int) = 
     if dates = [] 
     then 0
     else (if #2 (hd dates) = month then 1 else 0) + 
          number_in_month(tl dates, month)

(* ex 3 *)        
fun number_in_months(dates: (int*int*int) list, months:int list) = 
     if months = []
     then 0
     else number_in_month(dates, hd months) + 
          number_in_months(dates, tl months)

(* ex 4 *)  
fun dates_in_month(dates: (int*int*int) list, month:int) = 
     if dates = [] 
     then []
     else if #2 (hd dates) = month 
          then hd dates :: dates_in_month(tl dates, month) 
          else dates_in_month(tl dates, month)

(* ex 5 *)
fun dates_in_months(dates: (int*int*int) list, months:int list) = 
     if months = []
     then []
     else dates_in_month(dates, hd months) @ 
          dates_in_months(dates, tl months)
(*
fun get_nth(strings: string list, 1) = hd strings
  | get_nth(strings: string list, n) = get_nth(tl strings, n - 1)
*)

(* ex 6 *)
fun get_nth(items, n: int) =
     if n = 1
     then hd items
     else get_nth(tl items, n - 1)


(* ex 7 *)
fun date_to_string(date:int*int*int) = 
    let val months = ["January", "February", "March", "April", 
              "May", "June", "July", "August", 
              "September", "October", "November", "December"] in
        get_nth(months, #2 date) ^ " " ^ Int.toString(#3 date) ^ ", " ^ Int.toString(#1 date)
    end

(* ex 8 *)
fun number_before_reaching_sum(sum: int, numbers: int list) = 
    if hd numbers >= sum
    then 0
    else 1 + number_before_reaching_sum(sum-hd numbers, tl numbers)

(* ex 9 *)
fun what_month(day: int) = 
    1 + number_before_reaching_sum(day, [31,28,31,30,31,30,31,31,30,31,30,31])
    
(* ex 10 *)
fun month_range(day1: int, day2: int) = 
    if day1 > day2
    then []
    else what_month(day1)::month_range(day1 + 1, day2)
    
(* ex 11 *)
fun oldest(dates: (int*int*int) list) =
    if dates=[]
    then NONE
    else let val tail = oldest(tl dates) in
           if isSome(tail) andalso is_older(valOf(tail), hd dates)
           then tail
           else SOME (hd dates)
         end

(* helper function required for unique *)
fun member(x,y) = 
    if y = []
    then false
    else if x = hd y
         then true
         else member(x, tl y)

(* helper function to remove duplicates from a list *)
fun unique(l) = 
    if l = []
    then []
    else let
       val head = hd l
       val tail = unique(tl l);
    in 
       if member(head, tail) 
       then tail
       else head::tail
    end
    
(* ex 12 optional *)
fun number_in_months_challenge(dates: (int*int*int) list, months:int list) =
    number_in_months(dates, unique months)

fun dates_in_months_challenge(dates: (int*int*int) list, months:int list) = 
    dates_in_months(dates, unique months)

(* ex 13 optional *)
fun reasonable_date(date: (int*int*int)) =
    let 
        val year = #1 date
        val month = #2 date
        val day = #3 date 
        val days_in_month = 
            if year mod 400 = 0 orelse (not(year mod 100 = 0) andalso year mod 4 = 0)
            then [31,29,31,30,31,30,31,31,30,31,30,31] (* leap years *)
            else [31,28,31,30,31,30,31,31,30,31,30,31] (* normal *)
    in
        not(year < 1 orelse month < 1 orelse month > 12 
                 orelse day < 1 orelse day > get_nth(days_in_month, month)) 
    end
