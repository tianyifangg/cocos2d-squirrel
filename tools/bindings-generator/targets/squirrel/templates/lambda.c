#set $lparams_str = ", ".join(["%s larg%d" % (nt.get_whole_name($generator), i) for i, nt in enumerate($param_types)])
do {
    // Lambda binding for squirrel
    ${out_value} = [vm, callback${arg_idx}](${lparams_str}) -> ${ret_type.get_whole_name($generator)} {
        if (sq_getrefcount(vm, (HSQOBJECT *)&callback${arg_idx}) > 0) {
            sq_pushobject(vm, callback${arg_idx});
            sq_push(vm, 1);
            #for i, lparam in enumerate($param_types)
            ${lparam.from_native({"generator": $generator,
                                  "in_value": "larg" + str($i),
                                  "ntype": $lparam,
                                  "scriptname": $generator.scriptname_from_native_type($lparam)})};
            #end for
            #if $ret_type.name == "void"
            sq_call(vm, ${len($param_types) + 1}, SQFalse, SQTrue);
            sq_poptop(vm);
            #else
            sq_call(vm, ${len($param_types) + 1}, SQTrue, SQTrue);
            sq_remove(vm, -2);
            bool ok = true;
            ${ret_type.to_string($generator)} ret;
            ${ret_type.to_native({"generator": $generator,
                             "out_value": "ret",
                             "arg_idx": -1,
                             "level": 2,
                             "arg": $ret_type,
                             "scriptname": $generator.scriptname_from_native_type($ret_type)})};
            return ret;
            #end if
        }
    };
} while(0)