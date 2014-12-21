//
//  squirrel_cocos2dx_manual.cpp
//  cocos2d_squirrel_bindings
//
//  Created by tkyaji on 2014/12/12.
//
//

#include "squirrel_cocos2dx_manual.hpp"
#include "SquirrelEngine.h"
#include "SquirrelBasicConversion.h"

SQInteger squirrel_cocos2dx_global_dofile(HSQUIRRELVM vm)
{
    CCASSERT(sq_gettop(vm) == 2, "Does not match the number of parameters.");
    
    const char *filename = nullptr;
    sq_getstring(vm, 2, &filename);
    
    SquirrelEngine::getInstance()->executeScriptFile(filename);
    
    return 0;
}

SQInteger squirrel_cocos2dx_global_exit(HSQUIRRELVM vm)
{
    CCASSERT(sq_gettop(vm) == 2, "Does not match the number of parameters.");
    
    SQInteger sqVal;
    sq_getinteger(vm, 2, &sqVal);
    exit((int)sqVal);
    return 0;
}

int squirrel_register_cocos2dx_global(HSQUIRRELVM vm)
{
    sq_pushstring(vm, _SC("_dofile"), -1);
    sq_pushstring(vm, _SC("dofile"), -1);
    sq_get(vm, 1);
    sq_newslot(vm, 1, SQTrue);
    
    to_squirrel_function(vm, "dofile", squirrel_cocos2dx_global_dofile, SQTrue);
    sq_newslot(vm, 1, SQTrue);
    
    to_squirrel_function(vm, "exit", squirrel_cocos2dx_global_exit, SQTrue);
    sq_newslot(vm, 1, SQTrue);
    
    return 1;
}

extern int register_all_cocos2dx_manual(HSQUIRRELVM vm)
{
    squirrel_register_cocos2dx_global(vm);
    
    return 1;
}
