fun is_older (d1: (int*int*int), d2: (int*int*int)) =
   (#1 d1 < #1 d2) andalso (#2 d1 < #2 d2) andalso (#3 d1 < #3 d2)

fun number_in_month (d: (int*int*int) list, m: int) =
   if null d
      then 0
   else if #2 (hd d) = m
      then 1 + number_in_month (tl d, m)
   else
      0 + number_in_month (tl d, m)

fun number_in_months (d: (int*int*int) list, m: int list) =
   if null m
      then 0
   else
      number_in_month(d, hd m) + number_in_months(d, tl m)

fun dates_in_month (d: (int*int*int) list, m: int) =
   if null d
      then []
   else
      if #2 (hd d) = m
         then hd d :: dates_in_month(tl d, m)
      else
         dates_in_month(tl d, m)

fun dates_in_months (d: (int*int*int) list, m: int list) =
   if null m
      then []
   else
      dates_in_month(d, hd m) @ dates_in_months(d, tl m)

fun get_nth (s: string list, n: int) =
   if n > 1
      then get_nth(tl s, n-1)
   else
      hd s

fun date_to_string (d: (int*int*int)) =
   let val m = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
   in get_nth(m, #2 d) ^ " " ^ Int.toString(#3 d) ^ ", " ^ Int.toString(#1 d)
   end

fun number_before_reaching_sum (sum: int, l: int list) =
   if null l
      then 0
   else if hd l < sum
      then 1 + number_before_reaching_sum (sum - (hd l), tl l)
   else
      0

fun what_month (d: int) =
   let val l = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]
   in 1 + number_before_reaching_sum(d, l)
   end
