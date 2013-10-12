use "PA1_3.sml";

fun assert(cond: bool, msg: string) = 
    if cond
    then "success \n"
    else "failure \n";
    
assert(is_older((1999,01,01),(2000,01,01)), "is_older: 1");
assert(not (is_older((2010,01,01),(2000,01,01))), "is_older: 2");

assert(2 = number_in_month([(1999,9,9), (2000,9,11), (2001,7,3)], 9), "number_in_month: 1");
assert(0 = number_in_month([(1999,9,9), (2000,9,11), (2001,7,3)], 10), "number_in_month: 2");

assert(3 = number_in_months([(1999,9,9), (2000,9,11), (2001,7,3)], [7,9]), "number_in_months: 1");
assert(2 = number_in_months([(1999,9,9), (2000,9,11), (2001,7,3)], [9,10,11]), "number_in_months: 2");

assert( [(2001,7,3)] = dates_in_month([(1999,9,9), (2000,9,11), (2001,7,3)], 7), "dates_in_month: 1");
assert( [] = dates_in_month([(1999,9,9), (2000,9,11), (2001,7,3)], 11), "dates_in_month: 2");

assert( [(2001,7,3)] = dates_in_months([(1999,9,9), (2000,9,11), (2001,7,3)], [7,10]), "dates_in_months: 1");
assert( [(1999,9,9), (2000,9,11)] = dates_in_months([(1999,9,9), (2000,9,11), (2001,7,3)], [9,11]), "dates_in_months: 2");

"ex 6";
assert("3" = get_nth(["1", "2", "3"], 3), "get_nth");

assert( "January 12, 2001" = date_to_string((2001,1,12)), "date_to_string");
assert( "February 28, 2001" = date_to_string((2001,2,28)), "date_to_string");


assert(12 = what_month(365), "what_month");
assert(1 = what_month(1), "what_month");
assert(2 = what_month(32), "what_month");
assert(2 = what_month(59), "what_month");
assert(3 = what_month(60), "what_month");

assert([] = month_range(5,3), "month_range");
assert([1,1,1] = month_range(3,5), "month_range");
assert([2,3] = month_range(59,60), "month_range");

assert(NONE = oldest([]), "oldest"); 
assert(SOME (1999,1,1) = oldest([(1999,1,1)]), "oldest");

assert(3 = number_in_months_challenge([(1999,9,9), (2000,9,11), (2001,7,3)], [7,9,9]), "number_in_months_challenge: 1");
assert(2 = number_in_months_challenge([(1999,9,9), (2000,9,11), (2001,7,3)], [9,10,11,9,10,11]), "number_in_months_challenge: 2");

assert( [(2001,7,3)] = dates_in_months_challenge([(1999,9,9), (2000,9,11), (2001,7,3)], [7,10,7,10]), "dates_in_months_challenge: 1");

assert(reasonable_date(2001,1,1), "reasonable_date");
assert(not(reasonable_date(0,1,1)), "reasonable_date");
assert(not(reasonable_date(1,0,1)), "reasonable_date");
assert(not(reasonable_date(1,1,0)), "reasonable_date");
assert(not(reasonable_date(1,13,1)), "reasonable_date");
assert(not(reasonable_date(1,2,29)), "reasonable_date");
assert(reasonable_date(2001,2,28), "reasonable_date");
assert(reasonable_date(2001,1,31), "reasonable_date");
assert(reasonable_date(2001,4,30), "reasonable_date");
assert(not(reasonable_date(1,4,31)), "reasonable_date");
assert(reasonable_date(2004,2,29), "reasonable_date");

