//
//  SquirrelEngine.cpp
//  cocos2d_lua_bindings
//
//  Created by tkyaji on 2014/08/30.
//
//

#include "SquirrelEngine.h"
#include "squirrel_cocos2dx_auto.hpp"
#include "squirrel_cocos2dx_manual.hpp"

NS_CC_BEGIN

SquirrelEngine* SquirrelEngine::_defaultEngine = nullptr;

SquirrelEngine* SquirrelEngine::getInstance(void)
{
    if (!_defaultEngine)
    {
        _defaultEngine = new SquirrelEngine();
        _defaultEngine->init();
    }
    return _defaultEngine;
}

SquirrelEngine::SquirrelEngine(void) {
    
}

void SquirrelEngine::sq_printfunc(HSQUIRRELVM v, const SQChar *s, ...)
{
    va_list args;
    va_start(args, s);
    
    char buf[MAX_LOG_LENGTH];
    vsnprintf(buf, MAX_LOG_LENGTH-3, s, args);
    CCLOG("%s", buf);
    
    va_end(args);
}

SquirrelEngine::~SquirrelEngine(void)
{
    //    CC_SAFE_RELEASE(_stack);
    _defaultEngine = nullptr;
}

bool SquirrelEngine::init(void)
{
    HSQUIRRELVM vm = sq_open(1024);
    this->_vm = vm;
    
    //    sq_enabledebuginfo(v, SQTrue);
    
    sqstd_seterrorhandlers(vm);
    sq_setprintfunc(vm, SquirrelEngine::sq_printfunc, SquirrelEngine::sq_printfunc);
    
    sq_pushroottable(vm);
    
    sqstd_register_iolib(vm);
    sqstd_register_bloblib(vm);
    sqstd_register_mathlib(vm);
    sqstd_register_systemlib(vm);
    sqstd_register_stringlib(vm);
    
    register_all_cocos2dx_manual(vm);
    register_all_cocos2dx(vm);
    
//    this->executeScriptFile("Cocos2dx.nut");

    return true;
}

void SquirrelEngine::removeScriptObjectByObject(Ref* pObj)
{
    //    _stack->removeScriptObjectByObject(pObj);
    //    ScriptHandlerMgr::getInstance()->removeObjectAllHandlers(pObj);
    
    if (pObj->_scriptObject != nullptr) {
        _SquirrelObject *sqobj = (_SquirrelObject *)pObj->_scriptObject;
        delete sqobj;
        pObj->_scriptObject = nullptr;
    }
}

void SquirrelEngine::removeScriptHandler(int nHandler)
{
    //    _stack->removeScriptHandler(nHandler);
}

int SquirrelEngine::executeString(const char *codes)
{
    sq_compilebuffer(this->_vm, codes, sizeof(SQChar) * strlen(codes), codes, SQTrue);
    sq_push(this->_vm, 1);
    sq_call(this->_vm, 1, SQFalse, SQTrue);
    sq_poptop(this->_vm);
    
    int ret = 0;
    return ret;
}

int SquirrelEngine::executeScriptFile(const char* filename)
{
    //    int ret = _stack->executeScriptFile(filename);
    //    _stack->clean();

//    FileUtils *fUtiles = FileUtils::getInstance();
//    auto filePath = fUtiles->fullPathForFilename(filename);
    
//    Director::getInstance()->stopAnimation();
    
    /*
    if (SQ_FAILED(sqstd_dofile(this->_vm, filename, SQFalse, SQTrue))) {
        CCLOG("%s DO Failed!", filename);
    }
    */
    
    int ret = 0;

    FileUtils *fUtiles = FileUtils::getInstance();
    ssize_t sz = 0;
    unsigned char* codes = fUtiles->getFileData(filename, "rb", &sz);
    
    sq_compilebuffer(this->_vm, (const SQChar *)codes, sz, filename, SQTrue);
    sq_push(this->_vm, 1);
    sq_call(this->_vm, 1, SQFalse, SQTrue);
    sq_poptop(this->_vm);
    
    sq_collectgarbage(this->_vm);

//    Director::getInstance()->startAnimation();

    return ret;
}

int SquirrelEngine::executeGlobalFunction(const char* functionName)
{
    //    int ret = _stack->executeGlobalFunction(functionName);
    int ret = 0;
    //    _stack->clean();
    return ret;
}

int SquirrelEngine::sendEvent(ScriptEvent* evt)
{
    return 0;
    
    /*
    switch (evt->type)
    {
        case kMenuClickedEvent:
        {
            return handleMenuClickedEvent(evt->data);
        }
        case kTouchesEvent:
        {
            return handleTouchEvent(evt->data);
        }
        default:
            break;
            
    }
     switch (evt->type)
     {
     case kNodeEvent:
     {
     return handleNodeEvent(evt->data);
     }
     break;
     case kMenuClickedEvent:
     {
     return handleMenuClickedEvent(evt->data);
     }
     break;
     case kCallFuncEvent:
     {
     return handleCallFuncActionEvent(evt->data);
     }
     break;
     case kScheduleEvent:
     {
     return handleScheduler(evt->data);
     }
     break;
     case kTouchEvent:
     {
     return handleTouchEvent(evt->data);
     }
     break;
     case kTouchesEvent:
     {
     return handleTouchesEvent(evt->data);
     }
     break;
     case kKeypadEvent:
     {
     return handleKeypadEvent(evt->data);
     }
     break;
     case kAccelerometerEvent:
     {
     return handleAccelerometerEvent(evt->data);
     }
     break;
     case kCommonEvent:
     {
     return handleCommonEvent(evt->data);
     }
     break;
     case kControlEvent:
     {
     return handlerControlEvent(evt->data);
     }
     break;
     default:
     break;
     }
    return 0;
     */
}

int SquirrelEngine::handleTouchEvent(void* data)
{
    return 0;
}

int SquirrelEngine::handleMenuClickedEvent(void* data)
{
    return 0;
}

bool SquirrelEngine::handleAssert(const char *msg)
{
    //    bool ret = _stack->handleAssert(msg);
    bool ret = true;
    //    _stack->clean();
    return ret;
}

bool SquirrelEngine::parseConfig(ConfigType type, const std::string& str)
{
    /*
     lua_getglobal(_stack->getLuaState(), "__onParseConfig");
     if (!lua_isfunction(_stack->getLuaState(), -1))
     {
     CCLOG("[LUA ERROR] name '%s' does not represent a Lua function", "__onParseConfig");
     lua_pop(_stack->getLuaState(), 1);
     return false;
     }
     
     _stack->pushInt((int)type);
     _stack->pushString(str.c_str());
     
     return _stack->executeFunction(2);
     */
    return true;
}

HSQUIRRELVM SquirrelEngine::getVM()
{
    return SquirrelEngine::_vm;
}

NS_CC_END
