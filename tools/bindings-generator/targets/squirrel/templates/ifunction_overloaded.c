## ===== instance function implementation template - for overloaded functions
SQInteger ${signature_name}(HSQUIRRELVM vm)
{
    SQInteger argc = 0;
    ${namespaced_class_name}* cobj = nullptr;
    bool ok  = true;

#if not $is_constructor
    sq_getinstanceup(vm, 1, (SQUserPointer *)&cobj, 0);
\#if COCOS2D_DEBUG >= 1
    if (!cobj)
    {
        CCLOG("invalid 'cobj' in function '${signature_name}'");
        return 0;
    }
\#endif
#end if
    argc = sq_gettop(vm) - 1;
#for func in $implementations
#if len($func.arguments) >= $func.min_args
    #set arg_count = len($func.arguments)
    #set arg_idx = $func.min_args
    #while $arg_idx <= $arg_count
    #set arg_list = ""
    #set arg_array = []
    do {
        #if $func.min_args >= 0
        if (argc == ${arg_idx}) {
            #set $count = 0
            #set $callback_array = []
            #while $count < $arg_idx
            #set $arg = $func.arguments[$count]
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

            #set $count = 0
            #while $count < $arg_idx
            #set $arg = $func.arguments[$count]
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
            #set $arg_list = ", ".join($arg_array)
        #end if
        #if $is_constructor
            cobj = new ${namespaced_class_name}($arg_list);
    #if not $generator.script_control_cpp
            sq_setinstanceup(vm, 1, (SQUserPointer)cobj);
        #if $is_ref_class
            cobj->retain();
            sq_setreleasehook(vm, 1, squirrel_releasehook_Ref);
                #for callback_str in $callback_array
                _SquirrelObject *sqobj = (_SquirrelObject *)cobj->_scriptObject;
                sqobj->addClosure("${callback_str}", ${callback_str});
                #end for
        #else
            sq_setreleasehook(vm, 1, squirrel_releasehook_${class_name});
        #end if
    #else
            // TODO
    #end if
            return 1;
        #else
            #if $func.ret_type.name != "void"
                #if $func.ret_type.is_enum
            int ret = (int)cobj->${func.func_name}($arg_list);
                #else
            ${func.ret_type.get_whole_name($generator)} ret = cobj->${func.func_name}($arg_list);
                #end if
            ${func.ret_type.from_native({"generator": $generator,
                                         "in_value": "ret",
                                         "ntype": $func.ret_type,
                                         "scriptname": $generator.scriptname_from_native_type($func.ret_type)})};
            return 1;
            #else
            cobj->${func.func_name}($arg_list);
            return 0;
            #end if
        #end if
        }
    }while(0);
    #set $arg_idx = $arg_idx + 1
    ok  = true;
    #end while
#end if
#end for
    CCLOG("%s has wrong number of arguments: %d, was expecting %d \n", "${func.func_name}", (int)argc, ${func.min_args});
    return 0;
}
