class Main inherits IO {
    main() : Object {
        {
            let i : Int <- 11 in {
               if i <= 9 then
                   out_string("true\n")
               else
                   out_string("false\n")
               fi;
            };
        }
    };
};
