#set has_constructor = False
#if $current_class.methods.has_key('constructor')
#set has_constructor = True
${current_class.methods.constructor.generate_code($current_class)}
#end if
#
#set generator = $current_class.generator
#set methods = $current_class.methods_clean()
#set st_methods = $current_class.static_methods_clean()
#set constants = $current_class.public_constants()
#set enums = $current_class.public_enums()
#set fields = $current_class.public_fields()
#

SQInteger squirrel_${generator.prefix}_${current_class.class_name}_typeof_meta(HSQUIRRELVM vm)
{
    sq_pushstring(vm, "${generator.scriptname_from_native($current_class.namespaced_class_name, $current_class.namespace_name)}", -1);
    return 1;
}

#if len(fields)
SQInteger squirrel_${generator.prefix}_${current_class.class_name}_get_meta(HSQUIRRELVM vm)
{
    ${current_class.namespaced_class_name} *cobj = nullptr;
    if (SQ_FAILED(sq_getinstanceup(vm, 1, (SQUserPointer *)&cobj, 0))) {
        CCLOG("${current_class.namespaced_class_name} sq_getinstanceup failed.");
        sq_pushnull(vm);
        return 1;
    }

    const char *varName = nullptr;
    sq_getstring(vm, 2, &varName);
    
    do {
        #for f in fields
        if (strcmp(varName, "${f.name}") == 0) {
            ${f.type.from_native({"generator": $generator,
                                  "in_value": "cobj->" + $f.name,
                                  "ntype": $f.type,
                                  "scriptname": $generator.scriptname_from_native_type($f.type)})};
            break;
        }
        #end for

        return 0;
        
    } while(0);

    return 1;
}

SQInteger squirrel_${generator.prefix}_${current_class.class_name}_set_meta(HSQUIRRELVM vm)
{
    ${current_class.namespaced_class_name} *cobj = nullptr;
    if (SQ_FAILED(sq_getinstanceup(vm, 1, (SQUserPointer *)&cobj, 0))) {
        CCLOG("${current_class.namespaced_class_name} sq_getinstanceup failed.");
        return 0;
    }

    bool ok  = true;
    const char *varName = nullptr;
    sq_getstring(vm, 2, &varName);
    
    do {
        #for f in fields
        #set script_type = $f.type.to_script_type(generator)
        if (strcmp(varName, "${f.name}") == 0) {
            #if $script_type == "OT_CLOSURE"
            HSQOBJECT callback3;
            sq_getstackobj(vm, 3, &callback3);
            #end if
            ${f.type.to_native({"generator": $generator,
                                "out_value": "cobj->" + $f.name,
                                "arg_idx": 3,
                                "arg":$f.type,
                                "level": 2,
                                "scriptname": $generator.scriptname_from_native_type($f.type)})};
            if (! ok) {
                return 0;
            }
            #if $script_type == "OT_CLOSURE"
            _SquirrelObject *sqobj = (_SquirrelObject *)cobj->_scriptObject;
            sqobj->addClosure("${f.name}", callback3);
            #end if
            break;
        }
        #end for

        CCLOG("specified variable is not found in ${current_class.namespaced_class_name}");
    } while(0);

    return 0;
}

#end if
void squirrel_${generator.prefix}_${current_class.class_name}_push_c_class(HSQUIRRELVM vm)
{
    sq_pushstring(vm, "_C_CLASS", -1);
    sq_pushstring(vm, "${current_class.namespaced_class_name.replace('*', '')}", -1);
    sq_newslot(vm, -3, SQTrue);

    sq_pushstring(vm, "_C_BASE_CLASSES", -1);
    sq_newarray(vm, 0);
    #for parent in $current_class.get_all_parents_name()
    sq_pushstring(vm, "${parent.replace('*', '')}", -1);
    sq_arrayappend(vm, -2);
    #end for
    sq_newslot(vm, -3, SQTrue);

    sq_newslot(vm, -3, SQFalse);
}

int squirrel_register_${generator.prefix}_${current_class.class_name}(HSQUIRRELVM vm)
{
    sq_pushstring(vm, _SC("${current_class.class_name}"), -1);

    #if len($current_class.parents) > 0

    sq_pushstring(vm, _SC("${current_class.parents[0].class_name}"), -1);
    if (SQ_SUCCEEDED(sq_get(vm, -3))) {
        sq_newclass(vm, SQTrue);
    } else {
        sq_newclass(vm, SQFalse);
    }
    #else
    sq_newclass(vm, SQFalse);
    #end if

    #if has_constructor
    to_squirrel_function(vm, "constructor", squirrel_${generator.prefix}_${current_class.class_name}_constructor);
    #end if
    #for m in methods
        #set fn = m['impl']
        #if not $current_class.static_methods.has_key($m['name'])
    to_squirrel_function(vm, "${m['name']}", ${fn.signature_name});
        #end if
    #end for
    #for m in st_methods
        #set fn = m['impl']
    to_squirrel_function(vm, "${m['name']}", ${fn.signature_name}_static, SQTrue);
    #end for

    #if len(fields)
    to_squirrel_function(vm, "_get", squirrel_${generator.prefix}_${current_class.class_name}_get_meta);
    to_squirrel_function(vm, "_set", squirrel_${generator.prefix}_${current_class.class_name}_set_meta);
    #end if
    to_squirrel_function(vm, "_typeof", squirrel_${generator.prefix}_${current_class.class_name}_typeof_meta);

    #for c in constants
    ${c.to_native({"generator": $generator,
        "arg_name": $c.name,
        "out_value": $current_class.namespace_name + $current_class.class_name + "::" + $c.name,
        "level": 2})};
    #end for

    #for ename, elist in enums.iteritems()
    sq_pushstring(vm, _SC("${ename}"), -1);
    sq_newtable(vm);
        #for en in elist
    ${en.to_native({"generator": $generator,
        "arg_name": $en.name,
        "out_value": $current_class.namespace_name + $current_class.class_name + "::" + $ename + "::" + $en.name,
        "level": 2})};
        #end for
    sq_newslot(vm, -3, SQTrue);
    #end for

    squirrel_${generator.prefix}_${current_class.class_name}_push_c_class(vm);

    std::string typeName = typeid(${current_class.namespaced_class_name}).name();
    g_sqType[typeName] = "${generator.scriptname_from_native($current_class.namespaced_class_name, $current_class.namespace_name)}";
##    g_typeCast["${current_class.class_name}"] = "${generator.scriptname_from_native($current_class.namespaced_class_name, $current_class.namespace_name)}";

    return 1;
}
