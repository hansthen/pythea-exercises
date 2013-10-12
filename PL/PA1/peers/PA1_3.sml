fun is_older (a: int * int * int, b: int * int * int) =
    if #1 a < #1 b then true
    else if #1 a > #1 b then false
    else if #2 a < #2 b then true
    else if #2 a > #2 b then false
    else if #3 a < #3 b then true
    else false

fun number_in_month (dates: (int * int * int) list, month: int) =
    if null dates then 0
    else
        let
            val rest = number_in_month (tl dates, month)
        in
            if #2 (hd dates) = month then rest + 1 else rest
        end
        
fun number_in_months (dates: (int * int * int) list, months: int list) =
    if null months then 0
    else number_in_month (dates, hd months) + number_in_months (dates, tl months)
       
fun dates_in_month (dates: (int * int * int) list, month: int) =
    if null dates then []
    else
        let
            val first = hd dates
            val rest = dates_in_month (tl dates, month)
        in
            if #2 (hd dates) = month then first :: rest else rest
        end

fun dates_in_months (dates: (int * int * int) list, months: int list) =
    if null months then []
    else dates_in_month (dates, hd months) @ dates_in_months (dates, tl months)
        
fun get_nth (elements: string list, n: int) =
    if n = 1 then hd elements else get_nth (tl elements, n - 1)

fun date_to_string (date: int * int * int) =
    let
        val months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
        val y = Int.toString (#1 date)
        val m = get_nth (months, #2 date)
        val d = Int.toString (#3 date)
    in
        m ^ " " ^ d ^ ", " ^ y
    end

fun number_before_reaching_sum (sum: int, numbers: int list) =
    let
        fun f (cur: int, rest: int list, n: int) =
            let
                val next = cur + (hd rest)
            in
                if next >= sum then n
                else f (next, tl rest, n + 1)
            end
    in
        f (0, numbers, 0)
    end

fun what_month (day: int) =
    let
        val month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    in
        number_before_reaching_sum (day, month_days) + 1
    end

fun month_range (day1: int, day2: int) =
    if day1 > day2 then []
    else what_month day1 :: month_range (day1 + 1, day2)

fun oldest (dates: (int * int * int) list) = 
    if null dates then NONE
    else
        let
            val first = hd dates
            val rest = oldest (tl dates)
        in
            if not (isSome rest) then SOME first
            else if is_older (first, valOf rest) then SOME first
            else rest
        end
