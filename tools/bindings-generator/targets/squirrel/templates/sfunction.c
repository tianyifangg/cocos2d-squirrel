## ===== static function implementation template
SQInteger ${signature_name}_static(HSQUIRRELVM vm)
{
    SQInteger argc = 0;
    bool ok  = true;

    #if $methods.has_key($func_name)
    if (sq_gettype(vm, 1) == OT_INSTANCE) {
        return ${signature_name}(vm);
    }
    #end if

    argc = sq_gettop(vm) - 1;

#if len($arguments) >= $min_args
    #set arg_count = len($arguments)
    #set arg_idx = $min_args
    #while $arg_idx <= $arg_count
    if (argc == ${arg_idx})
    {
        #set arg_list = ""
        #set arg_array = []
        #set $count = 0
        #set $callback_array = []
        #while $count < $arg_idx
        #set $arg = $arguments[$count]
        #set $script_type = $arg.to_script_type($generator)
        ${arg.to_string($generator)} arg${count};
        #if $script_type == "OT_CLOSURE"
        HSQOBJECT callback${count+2};
        sq_getstackobj(vm, ${count+2}, &callback${count+2});
        #set $callback_array += ["callback" + str($count + 2)]
        #end if
        #set $count = $count + 1
        #end while
        #set $count = 0
        #while $count < $arg_idx
            #set $arg = $arguments[$count]
        ${arg.to_native({"generator": $generator,
                         "out_value": "arg" + str(count),
                         "arg_idx": $count+2,
                         "level": 2,
                         "arg": $arg,
                         "scriptname": $generator.scriptname_from_native_type($arg)})};
                #set $arg_array += ["arg"+str(count)]
                #set $count = $count + 1
        #end while
        #if $arg_idx >= 0
        if(!ok)
            return 0;
        #end if
            #set $arg_list = ", ".join($arg_array)
        #if $ret_type.name != "void"
            #if $ret_type.is_enum
        int ret = (int)${namespaced_class_name}::${func_name}($arg_list);
            #else
        ${ret_type.get_whole_name($generator)} ret = ${namespaced_class_name}::${func_name}($arg_list);
        #end if
#if $is_ref_class and $func_name.startswith("create")
        if (SQ_SUCCEEDED(sq_createinstance(vm, 1))) {
            sq_setinstanceup(vm, -1, (SQUserPointer)ret);
            set_squirrel_object(vm, -1, ret, "${generator.scriptname_from_native_type($ret_type)}");
    #if $generator.script_control_cpp
            // TODO
    #end if
            #for callback_str in $callback_array
            _SquirrelObject *sqobj = (_SquirrelObject *)ret->_scriptObject;
            sqobj->addClosure("${callback_str}", ${callback_str});
            #end for
            call_squirrel_closure(vm, - 1, "constructor", false);
        }
#else
        ${ret_type.from_native({"generator": $generator,
                                "in_value": "ret",
                                "ntype": $ret_type,
                                "scriptname": $generator.scriptname_from_native_type($ret_type)})};
#end if
        return 1;
        #else
        ${namespaced_class_name}::${func_name}($arg_list);
        return 0;
        #end if
    }
        #set $arg_idx = $arg_idx + 1
    #end while
#end if
    CCLOG("%s has wrong number of arguments: %d, was expecting %d\n ", "${func_name}", (int)argc, ${min_args});
    return 0;
}
