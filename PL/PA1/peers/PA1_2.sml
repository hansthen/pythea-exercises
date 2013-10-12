(* 1 *)
fun is_older (date1 : int*int*int, date2 : int*int*int) = 
   if (#1 date1) = (#1 date2) 
   then if (#2 date1) = (#2 date2)
	then if(#3 date1) = (#3 date2)
	     then false
	     else if (#3 date1) > (#3 date2)
	          then false
	          else true
	else if (#2 date1) > (#2 date2)
	     then false
	     else true
   else if(#1 date1) > (#1 date2)
        then false
        else true

(* 2 *)
fun number_in_month (date : (int*int*int) list, month : int) = 
   if null date
   then 0
   else 
       if (#2 (hd (date))) = month
       then 1 + number_in_month ((tl (date)), month)
       else 0 + number_in_month ((tl (date)), month)

(* 3 *)
fun number_in_months (date : (int*int*int) list, month : int list) =
    if null month
    then 0
    else number_in_month (date, hd (month)) + number_in_months (date, tl (month))

(* 4 *)
fun dates_in_month (date : (int*int*int) list, month : int) =
    if null date
    then []
    else 
	if (#2 (hd (date))) = month
	then (hd (date))::(dates_in_month(tl date, month))
	else dates_in_month(tl date, month)

(* 5 *)
fun dates_in_months (date : (int*int*int) list, month : int list) = 
    if null month
    then []
    else dates_in_month (date, hd month) @ dates_in_months(date, tl month)	   
(* 6 *)
fun get_nth (s : string list, n : int) = 
    if n = 1
    then hd s
    else get_nth (tl s, n-1)

(* 7 *)
fun date_to_string (date:int*int*int) =
    get_nth(["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], (#2 date))^" "^Int.toString(#3 date)^", "^Int.toString(#1 date)

(* 8 *)
fun number_before_reaching_sum (sum : int, nums : int list) = 
    if sum <= hd nums
    then 0
    else 1 + number_before_reaching_sum ((sum - hd nums), tl nums)

(* 9 *)
fun what_month (date : int) = 
    number_before_reaching_sum(date,[31,28,31,30,31,30,31,31,30,31,30,31])+1

(* 10 *)
fun month_range (day1 : int, day2 : int) = 
    if day1 > day2
    then []
    else what_month(day1)::month_range(day1+1,day2)

(* 11 *)
fun oldest (dates:(int*int*int) list) =
    if null dates
    then NONE
    else let 
	fun max_nonempty(date: (int*int*int) list) = 
	    if null (tl date)
	    then hd date
	    else let val tl_date = max_nonempty(tl date)		   
		 in
		     if #1 (hd date) > #1 tl_date
		     then tl_date
		     else if #2 (hd date) > #2 tl_date	
		          then tl_date
		          else if #3 (hd date) > #3 tl_date
		               then tl_date
		               else hd date
		 end
        in 
	    SOME(max_nonempty dates)
	end				
