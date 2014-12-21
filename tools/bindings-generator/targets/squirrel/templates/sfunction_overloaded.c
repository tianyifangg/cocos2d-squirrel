## ===== static function implementation template - for overloaded functions
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

    #for func in $implementations   
    #if len($func.arguments) >= $func.min_args
    #set arg_count = len($func.arguments)
    #set arg_idx = $func.min_args
    #while $arg_idx <= $arg_count
    do 
    {
        #if func.static
        if (sq_gettype(vm, 1) != OT_CLASS) {
            break;
        }
        #else
        if (sq_gettype(vm, 1) != OT_INSTANCE) {
            break;
        }
        #end if
        #if $func.is_variadic
            #set $vcount_max = 10
        #else
            #set $vcount_max = 1
        #end if
        #set $vcount = 0
        #while $vcount < $vcount_max
        if (argc == ${arg_idx + $vcount})
        {
            #set arg_list = ""
            #set arg_array = []

            #set $count = 0
            #set $callback_array = []
            #while $count < $arg_idx + $vcount
            #if $count < $arg_idx
            #set $arg = $func.arguments[$count]
            #else
            #set $arg = $func.arguments[$arg_idx - 1]
            #end if
            #set $script_type = $arg.to_script_type($generator)
            #if $script_type == "OT_INTEGER" or $script_type == "OT_FLOAT"
            if (sq_gettype(vm, ${count+2}) != OT_INTEGER && sq_gettype(vm, ${count+2}) != OT_FLOAT) {
                break;
            }
            #else if $script_type == "OT_INSTANCE"
            if (sq_gettype(vm, ${count+2}) != $script_type || ! instanceof_cclass(vm, ${count+2}, "${arg.get_type_name($generator)}")) {
                break;
            }
            #else if $script_type == "OT_CLOSURE"
            if (sq_gettype(vm, ${count+2}) != $script_type) {
                break;
            }
            HSQOBJECT callback${count+2};
            sq_getstackobj(vm, ${count+2}, &callback${count+2});
            #set $callback_array += ["callback" + str($count + 2)]
            #else
            if (sq_gettype(vm, ${count+2}) != $script_type) {
                break;
            }
            #end if
            #set $count = $count + 1
            #end while

            #set count = 0
            #while $count < $arg_idx + $vcount
            #if $count < $arg_idx
            #set $cnt = $count
            #else
            #set $cnt = $arg_idx - 1
            #end if
            #set $arg = $func.arguments[$cnt]
            ${arg.to_string($generator)} arg${count};
            ${arg.to_native({"generator": $generator,
                             "out_value": "arg" + str(count),
                             "arg_idx": $count+2,
                             "level": 2,
                             "arg": $arg,
                             "scriptname": $generator.scriptname_from_native_type($arg)})};
            #set $arg_array += ["arg"+str(count)]
            #set $count = $count + 1
            #if $arg_idx >= 0
            if (!ok) { break; }
            #end if
            #end while
            #if $func.is_variadic
            #set $arg_array += ["NULL"]
            #end if
            #set $arg_list = ", ".join($arg_array)
            #if $func.ret_type.name != "void"
                #if $func.ret_type.is_enum
            int ret = (int)${namespaced_class_name}::${func.func_name}($arg_list);
                #else
            ${func.ret_type.get_whole_name($generator)} ret = ${namespaced_class_name}::${func.func_name}($arg_list);
                #end if
#if $is_ref_class and $func_name.startswith("create")
            if (SQ_SUCCEEDED(sq_createinstance(vm, 1))) {
                sq_setinstanceup(vm, -1, (SQUserPointer)ret);
                set_squirrel_object(vm, -1, ret, "${generator.scriptname_from_native_type($func.ret_type)}");
    #if $generator.script_control_cpp
                // TODO: 
    #end if
                #for callback_str in $callback_array
                _SquirrelObject *sqobj = (_SquirrelObject *)ret->_scriptObject;
                sqobj->addClosure("${callback_str}", ${callback_str});
                #end for

##                call_squirrel_closure(vm, - 1, "constructor");
            }
#else
            ${func.ret_type.from_native({"generator": $generator,
                                         "in_value": "ret",
                                         "ntype": $func.ret_type,
                                         "scriptname": $generator.scriptname_from_native_type($func.ret_type)})};
#end if
            return 1;
            #else
            ${namespaced_class_name}::${func.func_name}($arg_list);
            return 0;
            #end if
        }
        #set $vcount = $vcount + 1
        #end while
    } while (0);
    #set $arg_idx = $arg_idx + 1
    ok  = true;
    #end while
    #end if
    #end for
    CCLOG("%s has wrong number of arguments: %d, was expecting %d", "${func.func_name}", (int)argc, ${func.min_args});
    return 0;
}
