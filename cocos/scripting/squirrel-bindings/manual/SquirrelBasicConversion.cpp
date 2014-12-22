//
//  SquirrelBasicConversion.cpp
//  cocos2d_lua_bindings
//
//  Created by tkyaji on 2014/09/20.
//
//

#include "SquirrelBasicConversion.h"

std::unordered_map<std::string, std::string>  g_sqType;
//std::unordered_map<std::string, std::string>  g_sqTypeCast;

/*
#if COCOS2D_DEBUG >=1
void sqval_to_native_err(HSQUIRRELVM vm, const char* msg, tolua_Error* err)
{
    if (NULL == L || NULL == err || NULL == msg || 0 == strlen(msg))
        return;
    
    if (msg[0] == '#')
    {
        const char* expected = err->type;
        const char* provided = tolua_typename(L,err->index);
        if (msg[1]=='f')
        {
            int narg = err->index;
            if (err->array)
                CCLOG("%s\n     argument #%d is array of '%s'; array of '%s' expected.\n",msg+2,narg,provided,expected);
            else
                CCLOG("%s\n     argument #%d is '%s'; '%s' expected.\n",msg+2,narg,provided,expected);
        }
        else if (msg[1]=='v')
        {
            if (err->array)
                CCLOG("%s\n     value is array of '%s'; array of '%s' expected.\n",msg+2,provided,expected);
            else
                CCLOG("%s\n     value is '%s'; '%s' expected.\n",msg+2,provided,expected);
        }
    }
}
#endif
*/

/*
#ifdef __cplusplus
extern "C" {
#endif
    extern int lua_isusertype (HSQUIRRELVM vm, int lo, const char* type);
#ifdef __cplusplus
}
#endif
 */

/*
bool sqval_is_usertype(HSQUIRRELVM vm,int lo,const char* type, int def)
{
    if (def && lua_gettop(L)<abs(lo))
        return true;
    
    if (lua_isnil(L,lo) || lua_isusertype(L,lo,type))
        return true;
    
    return false;
}
*/

bool sqval_to_ushort(HSQUIRRELVM vm, int lo, unsigned short* outValue)
{
    if (nullptr == vm || nullptr == outValue)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_INTEGER) {
        ok = false;
    }
    if (ok) {
        SQInteger sqValue;
        if (SQ_SUCCEEDED(sq_getinteger(vm, lo, &sqValue))) {
            *outValue = (unsigned short)sqValue;
        } else {
            ok = false;
        }
    }
    
    return ok;
}


bool sqval_to_int32(HSQUIRRELVM vm, int lo,int* outValue)
{
    if (nullptr == vm || nullptr == outValue)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_INTEGER) {
        ok = false;
    }
    if (ok) {
        SQInteger sqValue;
        if (SQ_SUCCEEDED(sq_getinteger(vm, lo, &sqValue))) {
            *outValue = (int)sqValue;
        } else {
            ok = false;
        }
    }
    
    return ok;
}

bool sqval_to_uint32(HSQUIRRELVM vm, int lo, unsigned int* outValue)
{
    if (nullptr == vm || nullptr == outValue)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_INTEGER) {
        ok = false;
    }
    if (ok) {
        SQInteger sqValue;
        if (SQ_SUCCEEDED(sq_getinteger(vm, lo, &sqValue))) {
            *outValue = (unsigned int)sqValue;
        } else {
            ok = false;
        }
    }
    
    return ok;
}

bool sqval_to_uint16(HSQUIRRELVM vm, int lo, uint16_t* outValue)
{
    if (nullptr == vm || nullptr == outValue)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_INTEGER) {
        ok = false;
    }
    if (ok) {
        SQInteger sqValue;
        if (SQ_SUCCEEDED(sq_getinteger(vm, lo, &sqValue))) {
            *outValue = (unsigned char)sqValue;
        } else {
            ok = false;
        }
    }
    
    return ok;
}

bool sqval_to_boolean(HSQUIRRELVM vm, int lo, bool* outValue)
{
    if (nullptr == vm || nullptr == outValue)
        return false;
    
    bool ok = true;

    if (sq_gettype(vm, lo) != OT_BOOL) {
        ok = false;
    }
    if (ok) {
        SQBool sqValue;
        if (SQ_SUCCEEDED(sq_getbool(vm, lo, &sqValue))) {
            *outValue = (bool)sqValue;
        } else {
            ok = false;
        }
    }
    
    return ok;
}

bool sqval_to_number(HSQUIRRELVM vm, int lo, double* outValue)
{
    if (nullptr == vm || nullptr == outValue)
        return false;
    
    bool ok = true;
    
    SQObjectType type = sq_gettype(vm, lo);
    if (type != OT_FLOAT && type != OT_INTEGER) {
        ok = false;
    }
    if (ok) {
        SQFloat sqValue;
        if (SQ_SUCCEEDED(sq_getfloat(vm, lo, &sqValue))) {
            *outValue = (double)sqValue;
        } else {
            ok = false;
        }
    }
    
    return ok;
}

bool sqval_to_float(HSQUIRRELVM vm, int lo, float* outValue)
{
    if (nullptr == vm || nullptr == outValue)
        return false;
    
    bool ok = true;
    
    SQObjectType type = sq_gettype(vm, lo);
    if (type != OT_FLOAT && type != OT_INTEGER) {
        ok = false;
    }
    if (ok) {
        SQFloat sqValue;
        if (SQ_SUCCEEDED(sq_getfloat(vm, lo, &sqValue))) {
            *outValue = (float)sqValue;
        } else {
            ok = false;
        }
    }
    
    return ok;
}

bool sqval_to_long_long(HSQUIRRELVM vm, int lo, long long* outValue)
{
    if (nullptr == vm || nullptr == outValue)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_INTEGER) {
        ok = false;
    }
    if (ok) {
        SQInteger sqValue;
        if (SQ_SUCCEEDED(sq_getinteger(vm, lo, &sqValue))) {
            *outValue = (long long)sqValue;
        } else {
            ok = false;
        }
    }
    
    return ok;
}

bool sqval_to_std_string(HSQUIRRELVM vm, int lo, std::string* outValue)
{
    if (nullptr == vm || nullptr == outValue)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_STRING) {
        ok = false;
    }
    if (ok) {
        const SQChar *sqValue;
        if (SQ_SUCCEEDED(sq_getstring(vm, lo, &sqValue))) {
            *outValue = std::string(sqValue);
        } else {
            ok = false;
        }
    }
    
    return ok;
}

bool sqval_to_vec2(HSQUIRRELVM vm, int lo, cocos2d::Vec2* &outValue)
{
    return sqval_to_plain_object<cocos2d::Vec2>(vm, lo, outValue);
}

bool sqval_to_vec3(HSQUIRRELVM vm,int lo,cocos2d::Vec3* &outValue)
{
    return sqval_to_plain_object<cocos2d::Vec3>(vm, lo, outValue);
}

bool sqval_to_vec4(HSQUIRRELVM vm,int lo,cocos2d::Vec4* &outValue)
{
    return sqval_to_plain_object<cocos2d::Vec4>(vm, lo, outValue);
}

bool sqval_to_blendfunc(HSQUIRRELVM vm, int lo, cocos2d::BlendFunc* &outValue)
{
    return sqval_to_plain_object<cocos2d::BlendFunc>(vm, lo, outValue);
}

bool sqval_to_physics_material(HSQUIRRELVM vm, int lo, PhysicsMaterial* &outValue)
{
    return sqval_to_plain_object<cocos2d::PhysicsMaterial>(vm, lo, outValue);
}

bool sqval_to_ssize(HSQUIRRELVM vm, int lo, ssize_t* outValue)
{
    return sqval_to_long(vm, lo, reinterpret_cast<long*>(outValue));
}

bool sqval_to_long(HSQUIRRELVM vm, int lo, long* outValue)
{
    if (nullptr == vm || nullptr == outValue)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_INTEGER) {
        ok = false;
    }
    if (ok) {
        SQInteger sqValue;
        if (SQ_SUCCEEDED(sq_getinteger(vm, lo, &sqValue))) {
            *outValue = (long)sqValue;
        } else {
            ok = false;
        }
    }
    
    return ok;
}

bool sqval_to_ulong(HSQUIRRELVM vm,int lo, unsigned long* outValue)
{
    if (nullptr == vm || nullptr == outValue)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_INTEGER) {
        ok = false;
    }
    if (ok) {
        SQInteger sqValue;
        if (SQ_SUCCEEDED(sq_getinteger(vm, lo, &sqValue))) {
            *outValue = (unsigned long)sqValue;
        } else {
            ok = false;
        }
    }
    
    return ok;
}

bool sqval_to_size(HSQUIRRELVM vm, int lo, Size* &outValue)
{
    return sqval_to_plain_object<cocos2d::Size>(vm, lo, outValue);
}

bool sqval_to_rect(HSQUIRRELVM vm, int lo, Rect* &outValue)
{
    return sqval_to_plain_object<cocos2d::Rect>(vm, lo, outValue);
}

bool sqval_to_color4b(HSQUIRRELVM vm, int lo, Color4B* &outValue)
{
    return sqval_to_plain_object<cocos2d::Color4B>(vm, lo, outValue);
}

bool sqval_to_color4f(HSQUIRRELVM vm, int lo, Color4F* &outValue)
{
    return sqval_to_plain_object<cocos2d::Color4F>(vm, lo, outValue);
}

bool sqval_to_color3b(HSQUIRRELVM vm,int lo,Color3B* &outValue)
{
    return sqval_to_plain_object<cocos2d::Color3B>(vm, lo, outValue);
}

bool sqval_to_affinetransform(HSQUIRRELVM vm,int lo, AffineTransform* &outValue)
{
    return sqval_to_plain_object<cocos2d::AffineTransform>(vm, lo, outValue);
}

bool sqval_to_fontdefinition(HSQUIRRELVM vm, int lo, FontDefinition* &outValue )
{
    return sqval_to_plain_object<cocos2d::FontDefinition>(vm, lo, outValue);
}

bool sqval_to_ttfconfig(HSQUIRRELVM vm,int lo, cocos2d::TTFConfig* &outValue)
{
    return sqval_to_plain_object<cocos2d::TTFConfig>(vm, lo, outValue);
}

bool sqval_to_uniform(HSQUIRRELVM vm, int lo, cocos2d::Uniform* &outValue)
{
    return sqval_to_plain_object<cocos2d::Uniform>(vm, lo, outValue);
}

bool sqval_to_vertexattrib(HSQUIRRELVM vm, int lo, cocos2d::VertexAttrib* &outValue)
{
    return sqval_to_plain_object<cocos2d::VertexAttrib>(vm, lo, outValue);
}

bool sqval_to_quaternion(HSQUIRRELVM vm, int lo, cocos2d::Quaternion* &outValue)
{
    return sqval_to_plain_object<cocos2d::Quaternion>(vm, lo, outValue);
}

bool sqval_to_t2fquad(HSQUIRRELVM vm,int lo,cocos2d::T2F_Quad* &outValue)
{
    return sqval_to_plain_object<cocos2d::T2F_Quad>(vm, lo, outValue);
}

bool sqval_to_animation3ddata(HSQUIRRELVM vm,int lo,Animation3DData* &outValue)
{
    return sqval_to_plain_object<cocos2d::Animation3DData>(vm, lo, outValue);
}

bool sqval_to_acceleration(HSQUIRRELVM vm,int lo,Acceleration* &outValue)
{
    return sqval_to_plain_object<cocos2d::Acceleration>(vm, lo, outValue);
}

bool sqval_to_glcontextattrs(HSQUIRRELVM vm,int lo,GLContextAttrs* &outValue)
{
    return sqval_to_plain_object<GLContextAttrs>(vm, lo, outValue);
}

bool sqval_to_mat4(HSQUIRRELVM vm, int lo, cocos2d::Mat4* &outValue)
{
    return sqval_to_plain_object<cocos2d::Mat4>(vm, lo, outValue);
}

bool sqval_to_array(HSQUIRRELVM vm, int lo, __Array** outValue)
{
    if (nullptr == vm || nullptr == *outValue)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_ARRAY) {
        ok = false;
    }
    
    if (ok) {
        auto *arr = __Array::create();
        int size = (int)sq_getsize(vm, lo);
        for (int i = 0; i < size; i++) {
            sq_pushinteger(vm, i);
            if (SQ_SUCCEEDED(sq_get(vm, lo))) {
                if (sq_gettype(vm, -1) == OT_INSTANCE) {
                    cocos2d::Ref *ref = nullptr;
                    sq_getinstanceup(vm, -1, (SQUserPointer *)&ref, 0);
                    if (nullptr != ref) {
                        arr->addObject(ref);
                    }
                }
                sq_poptop(vm);
            }
        }
    }
    
    return ok;
}

bool sqval_to_dictionary(HSQUIRRELVM vm,int lo, __Dictionary** outValue)
{
    if (nullptr == vm || nullptr == *outValue)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_TABLE) {
        ok = false;
    }
    
    if (ok) {
        auto dic = __Dictionary::create();
        int size = (int)sq_getsize(vm, lo);
        sq_pushnull(vm);
        for (int i = 0; i < size; i++) {
            sq_next(vm, lo);
            const char *key;
            sq_getstring(vm, -2, &key);
            auto keyStr = std::string(key);
            cocos2d::Ref *ref = nullptr;
            sq_getinstanceup(vm, -1, (SQUserPointer *)&ref, 0);
            if (nullptr != ref) {
                dic->setObject(ref, keyStr);
            }
            sq_pop(vm, 2);
        }
        sq_poptop(vm);
    }
    
    return ok;
}

bool sqval_to_array_of_vec2(HSQUIRRELVM vm, int lo, cocos2d::Vec2 **points, int *numPoints)
{
    return false;
}


bool sqvals_variadic_to_array(HSQUIRRELVM vm, int argc, __Array** ret)
{
    return false;
}

bool sqvals_variadic_to_ccvaluevector(HSQUIRRELVM vm, int argc, cocos2d::ValueVector* ret)
{
    if (nullptr == vm || argc == 0)
        return false;
    
    bool ok = true;
    
    for (int i = 0; i < argc; i++) {
        cocos2d::Value value;
        if (sqval_to_ccvalue(vm, i + 2, &value)) {
            ret->push_back(value);
        }
    }
    
    return ok;
}

bool sqval_to_ccvalue(HSQUIRRELVM vm, int lo, cocos2d::Value* ret)
{
    if (nullptr == vm || nullptr == ret)
        return false;
    
    bool ok = true;
    
    switch (sq_gettype(vm, lo)) {
        case OT_TABLE:
        {
            ValueMap dictVal;
            if (SQ_SUCCEEDED(sqval_to_ccvaluemap(vm, lo, &dictVal))) {
                *ret = Value(dictVal);
            } else {
                ok = false;
            }
            break;
        }
            
        case OT_ARRAY:
        {
            ValueVector arrVal;
            if (SQ_SUCCEEDED(sqval_to_ccvaluevector(vm, lo, &arrVal))) {
                *ret = Value(arrVal);
            } else {
                ok = false;
            }
            break;
        }
            
        case OT_STRING:
        {
            const char *str;
            if (SQ_SUCCEEDED(sq_getstring(vm, lo, &str))) {
                std::string stringValue = std::string(str);
                *ret = Value(str);
            } else {
                ok = false;
            }
            break;
        }
            
        case OT_BOOL:
        {
            SQBool sqboolValue;
            if (SQ_SUCCEEDED(sq_getbool(vm, lo, &sqboolValue))) {
                bool boolValue = (bool)sqboolValue;
                *ret = Value(boolValue);
            } else {
                ok = false;
            }
            break;
        }
            
        case OT_INTEGER:
        {
            SQInteger sqintValue;
            if (SQ_SUCCEEDED(sq_getinteger(vm, lo, &sqintValue))) {
                int intValue = (int)sqintValue;
                *ret = Value(intValue);
            } else {
                ok = false;
            }
            break;
        }
        
        case OT_FLOAT:
        {
            SQFloat sqfloatValue;
            if (SQ_SUCCEEDED(sq_getfloat(vm, lo, &sqfloatValue))) {
                float floatValue = (float)sqfloatValue;
                *ret = Value(floatValue);
            } else {
                ok = false;
            }
        }
            
        default:
            CCASSERT(false, "not supported type");
            ok = false;
            break;
    }
    
    return ok;
}

bool sqval_to_ccvaluemap(HSQUIRRELVM vm, int lo, cocos2d::ValueMap* ret)
{
    if (nullptr == vm || nullptr == ret)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_TABLE) {
        ok = false;
    }
    
    if (ok) {
        cocos2d::ValueMap& values = *ret;
        int size = (int)sq_getsize(vm, lo);
        sq_pushnull(vm);
        for (int i = 0; i < size; i++) {
            sq_next(vm, lo);
            const char *key;
            if (SQ_FAILED(sq_getstring(vm, -2, &key))) {
                continue;
            }
            auto keyStr = std::string(key);
            Value value;
            if (sqval_to_ccvalue(vm, -1, &value)) {
                values[keyStr] = value;
            }
            sq_pop(vm, 2);
        }
        sq_poptop(vm);
    }
    
    return ok;
}

bool sqval_to_ccvaluemapintkey(HSQUIRRELVM vm, int lo, cocos2d::ValueMapIntKey* ret)
{
    if (nullptr == vm || nullptr == ret)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_TABLE) {
        ok = false;
    }

    if (ok) {
        cocos2d::ValueMapIntKey& values = *ret;
        int size = (int)sq_getsize(vm, lo);
        sq_pushnull(vm);
        for (int i = 0; i < size; i++) {
            sq_next(vm, lo);
            const char *key;
            if (SQ_FAILED(sq_getstring(vm, -2, &key))) {
                continue;
            }
            int keyInt = atoi(key);
            Value value;
            if (sqval_to_ccvalue(vm, -1, &value)) {
                values[keyInt] = value;
            }
            sq_pop(vm, 2);
        }
        sq_poptop(vm);
    }
    
    return ok;
}

bool sqval_to_ccvaluevector(HSQUIRRELVM vm, int lo, cocos2d::ValueVector* ret)
{
    if (nullptr == vm || nullptr == ret)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_ARRAY) {
        ok = false;
    }
    
    if (ok) {
        int size = (int)sq_getsize(vm, lo);
        for (int i = 0; i < size; i++) {
            sq_pushinteger(vm, i);
            if (SQ_SUCCEEDED(sq_get(vm, lo))) {
                Value value;
                if (sqval_to_ccvalue(vm, -1, &value)) {
                    ret->push_back(value);
                }
                sq_poptop(vm);
            }
        }
    }
    
    return ok;
}

bool sqval_to_std_vector_string(HSQUIRRELVM vm, int lo, std::vector<std::string>* ret)
{
    if (nullptr == vm || nullptr == ret)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_ARRAY) {
        ok = false;
    }
    
    if (ok) {
        int size = (int)sq_getsize(vm, lo);
        for (int i = 0; i < size; i++) {
            sq_pushinteger(vm, i);
            if (SQ_SUCCEEDED(sq_get(vm, lo))) {
                std::string str;
                if (sqval_to_std_string(vm, -1, &str)) {
                    ret->push_back(str);
                }
                sq_poptop(vm);
            }
        }
    }
    
    return ok;
}

bool sqval_to_std_vector_int(HSQUIRRELVM vm, int lo, std::vector<int>* ret)
{
    if (nullptr == vm || nullptr == ret)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_ARRAY) {
        ok = false;
    }
    
    if (ok) {
        int size = (int)sq_getsize(vm, lo);
        for (int i = 0; i < size; i++) {
            sq_pushinteger(vm, i);
            if (SQ_SUCCEEDED(sq_get(vm, lo))) {
                int intValue;
                if (sqval_to_int32(vm, -1, &intValue)) {
                    ret->push_back(intValue);
                }
                sq_poptop(vm);
            }
        }
    }
    
    return ok;
}

bool sqval_to_mesh_vertex_attrib(HSQUIRRELVM vm, int lo, cocos2d::MeshVertexAttrib* &ret)
{
    return sqval_to_plain_object<cocos2d::MeshVertexAttrib>(vm, lo, ret);
}

bool sqval_to_std_vector_float(HSQUIRRELVM vm, int lo, std::vector<float>* ret)
{
    if (nullptr == vm || nullptr == ret)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_ARRAY) {
        ok = false;
    }
    
    if (ok) {
        int size = (int)sq_getsize(vm, lo);
        for (int i = 0; i < size; i++) {
            sq_pushinteger(vm, i);
            if (SQ_SUCCEEDED(sq_get(vm, lo))) {
                float floatValue;
                if (sqval_to_float(vm, -1, &floatValue)) {
                    ret->push_back(floatValue);
                }
                sq_poptop(vm);
            }
        }
    }
    
    return ok;
}


bool sqval_to_std_vector_ushort(HSQUIRRELVM vm, int lo, std::vector<unsigned short>* ret)
{
    if (nullptr == vm || nullptr == ret)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_ARRAY) {
        ok = false;
    }
    
    if (ok) {
        int size = (int)sq_getsize(vm, lo);
        for (int i = 0; i < size; i++) {
            sq_pushinteger(vm, i);
            if (SQ_SUCCEEDED(sq_get(vm, lo))) {
                unsigned short shotValue;
                if (sqval_to_ushort(vm, -1, &shotValue)) {
                    ret->push_back(shotValue);
                }
                sq_poptop(vm);
            }
        }
    }
    
    return ok;
}

bool sqval_to_float_array(HSQUIRRELVM vm, int lo, const float** ret)
{
    if (nullptr == vm)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_ARRAY) {
        ok = false;
    }
    
    if (ok) {
        int size = (int)sq_getsize(vm, lo);
        float arr[size];
        for (int i = 0; i < size; i++) {
            sq_pushinteger(vm, i);
            if (SQ_SUCCEEDED(sq_get(vm, lo))) {
                float floatValue;
                if (sqval_to_float(vm, lo, &floatValue)) {
                    arr[i] = floatValue;
                }
                sq_poptop(vm);
            }
        }
        const float *arrp = arr;
        ret = &arrp;
    }
    
    return ok;
}

template <class T>
bool plain_obj_to_sqval(HSQUIRRELVM vm, const char *className, T *obj)
{
    if (nullptr == vm)
        return false;
    
    if (! sq_get_class(vm, className)) {
        sq_poptop(vm);
        return false;
    }
    
    if (SQ_FAILED(sq_createinstance(vm, -1))) {
        sq_poptop(vm);
        return false;
    }
    sq_remove(vm, -2);
    
    sq_setinstanceup(vm, -1, (SQUserPointer)obj);
    
    return true;
}

void vec2_array_to_sqval(HSQUIRRELVM vm, const cocos2d::Vec2* points, int count)
{
    if (nullptr == vm)
        return;
    
    sq_newarray(vm, 0);
    for (int i = 0; i < count; i++) {
        auto *pt = new Point(points[i]);
        if (plain_obj_to_sqval(vm, "cc.Point", pt)) {
            sq_setreleasehook(vm, -1, squirrel_releasehook_Point);
            sq_arrayappend(vm, -1);
        }
    }
}

void vec2_to_sqval(HSQUIRRELVM vm,const cocos2d::Vec2& vec2)
{
    auto *v2 = new Vec2(vec2);
    if (plain_obj_to_sqval(vm, "cc.Vec2", v2)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_Vec2);
    }
}

void vec3_to_sqval(HSQUIRRELVM vm,const cocos2d::Vec3& vec3)
{
    auto *v3 = new Vec3(vec3);
    if (plain_obj_to_sqval(vm, "cc.Vec3", v3)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_Vec3);
    }
}

void vec4_to_sqval(HSQUIRRELVM vm,const cocos2d::Vec4& vec4)
{
    auto *v4 = new Vec4(vec4);
    if (plain_obj_to_sqval(vm, "cc.Vec4", v4)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_Vec4);
    }
}

void physics_material_to_sqval(HSQUIRRELVM vm,const PhysicsMaterial& pm)
{
    auto *p = new PhysicsMaterial(pm);
    if (plain_obj_to_sqval(vm, "cc.PhysicsMaterial", p)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_PhysicsMaterial);
    }
}

void physics_raycastinfo_to_sqval(HSQUIRRELVM vm, const PhysicsRayCastInfo& info)
{
    auto *inf = new PhysicsRayCastInfo(info);
    if (plain_obj_to_sqval(vm, "cc.PhysicsRayCastInfo", inf)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_PhysicsRayCastInfo);
    }
}

void physics_contactdata_to_sqval(HSQUIRRELVM vm, const PhysicsContactData* data)
{
    auto *dt = new PhysicsContactData();
    for (int i = 0; i < PhysicsContactData::POINT_MAX; i++) {
        dt->points[i] = Vec2(data->points[i]);
    }
    dt->normal = Vec2(data->normal);
    dt->count = data->count;
    
    if (plain_obj_to_sqval(vm, "cc.PhysicsContactData", dt)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_PhysicsContactData);
    }
}

void size_to_sqval(HSQUIRRELVM vm, const Size& sz)
{
    auto *size = new Size(sz);
    if (plain_obj_to_sqval(vm, "cc.Size", size)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_Size);
    }
}

void rect_to_sqval(HSQUIRRELVM vm, const Rect& rt)
{
    auto *rect = new Rect(rt);
    if (plain_obj_to_sqval(vm, "cc.Rect", rect)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_Rect);
    }
}

void color4b_to_sqval(HSQUIRRELVM vm, const Color4B& cc)
{
    auto *color = new Color4B(cc);
    if (plain_obj_to_sqval(vm, "cc.Color4B", color)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_Color4B);
    }
}

void color4f_to_sqval(HSQUIRRELVM vm, const Color4F& cc)
{
    auto *color = new Color4F(cc);
    if (plain_obj_to_sqval(vm, "cc.Color4F", color)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_Color4F);
    }
}

void color3b_to_sqval(HSQUIRRELVM vm, const Color3B& cc)
{
    auto color = new Color3B(cc);
    if (plain_obj_to_sqval(vm, "cc.Color3B", color)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_Color4B);
    }
}

void affinetransform_to_sqval(HSQUIRRELVM vm, const AffineTransform& inValue)
{
    auto *transform = new AffineTransform(inValue);
    if (plain_obj_to_sqval(vm, "cc.AffineTransform", transform)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_AffineTransform);
    }
}

void fontdefinition_to_sqval(HSQUIRRELVM vm, const FontDefinition& inValue)
{
    auto *fontDef = new FontDefinition(inValue);
    if (plain_obj_to_sqval(vm, "cc.FontDefinition", fontDef)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_FontDefinition);
    }
}

void quaternion_to_sqval(HSQUIRRELVM vm, const Quaternion& inValue)
{
    auto *quat = new Quaternion(inValue);
    if (plain_obj_to_sqval(vm, "cc.Quaternion", quat)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_Quaternion);
    }
}

void animation3ddata_to_sqval(HSQUIRRELVM vm, const Animation3DData& inValue)
{
    auto *adata = new Animation3DData(inValue);
    if (plain_obj_to_sqval(vm, "cc.Animation3DData", adata)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_Animation3DData);
    }
}

void acceleration_to_sqval(HSQUIRRELVM vm, const Acceleration* inValue)
{
    auto *acc = new Acceleration(*inValue);
    if (plain_obj_to_sqval(vm, "cc.Acceleration", acc)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_Acceleration);
    }
}

void glcontextattrs_to_sqval(HSQUIRRELVM vm, const GLContextAttrs& inValue)
{
    auto *glctxattrs = new GLContextAttrs(inValue);
    if (plain_obj_to_sqval(vm, "GLContextAttrs", glctxattrs)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_GLContextAttrs);
    }
}

void aabb_to_sqval(HSQUIRRELVM vm, const AABB& inValue)
{
    auto *aabb = new AABB(inValue);
    if (plain_obj_to_sqval(vm, "cc.AABB", aabb)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_AABB);
    }
}

void sprite3ddata_to_sqval(HSQUIRRELVM vm, const Sprite3DCache::Sprite3DData* inValue)
{
    auto *data = new Sprite3DCache::Sprite3DData(*inValue);
    if (plain_obj_to_sqval(vm, "cc.Sprite3DCache.Sprite3DData", data)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_Sprite3DData);
    }
}

void array_to_sqval(HSQUIRRELVM vm, __Array* inValue)
{
    if (nullptr == vm || nullptr == inValue)
        return;

    sq_newarray(vm, 0);
    
    Ref* obj = nullptr;
    std::string className = "";
    __String* strVal = nullptr;
    __Dictionary* dictVal = nullptr;
    __Array* arrVal = nullptr;
    __Double* doubleVal = nullptr;
    __Bool* boolVal = nullptr;
    __Float* floatVal = nullptr;
    __Integer* intVal = nullptr;
    
    CCARRAY_FOREACH(inValue, obj) {
        if (nullptr == obj)
            continue;
        
        std::string typeName = typeid(*obj).name();
        auto iter = g_sqType.find(typeName);
        if (g_sqType.end() != iter)
        {
            className = iter->second;
            if (nullptr != dynamic_cast<cocos2d::Ref *>(obj))
            {
                if (sq_get_class(vm, className.c_str())) {
                    if (SQ_SUCCEEDED(sq_createinstance(vm, -1))) {
                        sq_setinstanceup(vm, -1, (SQUserPointer)obj);
                    }
                }
            }
        }
        else if((strVal = dynamic_cast<__String *>(obj)))
        {
            sq_pushstring(vm, _SC(strVal->getCString()), -1);
            sq_arrayappend(vm, -1);
        }
        else if ((dictVal = dynamic_cast<__Dictionary*>(obj)))
        {
            dictionary_to_sqval(vm, dictVal);
            sq_arrayappend(vm, -1);
        }
        else if ((arrVal = dynamic_cast<__Array*>(obj)))
        {
            array_to_sqval(vm, arrVal);
            sq_arrayappend(vm, -1);
        }
        else if ((doubleVal = dynamic_cast<__Double*>(obj)))
        {
            sq_pushfloat(vm, SQFloat(doubleVal->getValue()));
            sq_arrayappend(vm, -1);
        }
        else if ((floatVal = dynamic_cast<__Float*>(obj)))
        {
            sq_pushfloat(vm, SQFloat(floatVal->getValue()));
            sq_arrayappend(vm, -1);
        }
        else if ((intVal = dynamic_cast<__Integer*>(obj)))
        {
            sq_pushinteger(vm, SQInteger(intVal->getValue()));
            sq_arrayappend(vm, -1);
        }
        else if ((boolVal = dynamic_cast<__Bool*>(obj)))
        {
            sq_pushbool(vm, SQBool(boolVal->getValue()));
            sq_arrayappend(vm, -1);
        }
        else
        {
            CCASSERT(false, "the type isn't suppored.");
        }
    }
}

void dictionary_to_sqval(HSQUIRRELVM vm, __Dictionary* dict)
{
    if (nullptr == vm || nullptr == dict)
        return;
    
    sq_newtable(vm);
    
    DictElement* element = nullptr;
    
    std::string className = "";
    __String* strVal = nullptr;
    __Dictionary* dictVal = nullptr;
    __Array* arrVal = nullptr;
    __Double* doubleVal = nullptr;
    __Bool* boolVal = nullptr;
    __Float* floatVal = nullptr;
    __Integer* intVal = nullptr;
    
    CCDICT_FOREACH(dict, element)
    {
        if (NULL == element)
            continue;
        
        std::string typeName = typeid(element->getObject()).name();
        
        auto iter = g_sqType.find(typeName);
        if (g_sqType.end() != iter)
        {
            className = iter->second;
            if ( nullptr != dynamic_cast<Ref*>(element->getObject()))
            {
                if (sq_get_class(vm, className.c_str())) {
                    sq_pushstring(vm, _SC(element->getStrKey()), -1);
                    if (SQ_SUCCEEDED(sq_createinstance(vm, -1))) {
                        sq_setinstanceup(vm, -1, (SQUserPointer)element->getObject());
                        sq_set(vm, -3);
                    }
                }
            }
        }
        else if((strVal = dynamic_cast<__String *>(element->getObject())))
        {
            sq_pushstring(vm, _SC(element->getStrKey()), -1);
            sq_pushstring(vm, _SC(strVal->getCString()), -1);
            sq_set(vm, -3);
        }
        else if ((dictVal = dynamic_cast<__Dictionary*>(element->getObject())))
        {
            sq_pushstring(vm, _SC(element->getStrKey()), -1);
            dictionary_to_sqval(vm, dictVal);
            sq_set(vm, -3);
        }
        else if ((arrVal = dynamic_cast<__Array*>(element->getObject())))
        {
            sq_pushstring(vm, _SC(element->getStrKey()), -1);
            array_to_sqval(vm, arrVal);
            sq_set(vm, -3);
        }
        else if ((doubleVal = dynamic_cast<__Double*>(element->getObject())))
        {
            sq_pushstring(vm, _SC(element->getStrKey()), -1);
            sq_pushfloat(vm, SQFloat(doubleVal->getValue()));
            sq_set(vm, -3);
        }
        else if ((floatVal = dynamic_cast<__Float*>(element->getObject())))
        {
            sq_pushstring(vm, _SC(element->getStrKey()), -1);
            sq_pushfloat(vm, SQFloat(floatVal->getValue()));
            sq_set(vm, -3);
        }
        else if ((intVal = dynamic_cast<__Integer*>(element->getObject())))
        {
            sq_pushstring(vm, _SC(element->getStrKey()), -1);
            sq_pushinteger(vm, SQInteger(intVal->getValue()));
            sq_set(vm, -3);
        }
        else if ((boolVal = dynamic_cast<__Bool*>(element->getObject())))
        {
            sq_pushstring(vm, _SC(element->getStrKey()), -1);
            sq_pushbool(vm, SQBool(boolVal->getValue()));
            sq_set(vm, -3);
        }
        else
        {
            CCASSERT(false, "the type isn't suppored.");
        }
    }
}

void ccvalue_to_sqval(HSQUIRRELVM vm, const cocos2d::Value& inValue)
{
    if (nullptr == vm)
        return;
    
    const Value& obj = inValue;
    switch (obj.getType())
    {
        case Value::Type::BOOLEAN:
            sq_pushbool(vm, (SQBool)obj.asBool());
            break;
        case Value::Type::FLOAT:
        case Value::Type::DOUBLE:
            sq_pushfloat(vm, (SQFloat)obj.asFloat());
            break;
        case Value::Type::INTEGER:
            sq_pushinteger(vm, (SQInteger)obj.asInt());
            break;
        case Value::Type::STRING:
            sq_pushstring(vm, (SQChar *)obj.asString().c_str(), -1);
            break;
        case Value::Type::VECTOR:
            ccvaluevector_to_sqval(vm, obj.asValueVector());
            break;
        case Value::Type::MAP:
            ccvaluemap_to_sqval(vm, obj.asValueMap());
            break;
        case Value::Type::INT_KEY_MAP:
            ccvaluemapintkey_to_sqval(vm, obj.asIntKeyMap());
            break;
        default:
            sq_pushnull(vm);
            break;
    }
}

void ccvaluemap_to_sqval(HSQUIRRELVM vm, const cocos2d::ValueMap& inValue)
{
    if (nullptr == vm)
        return;
    
    sq_newtable(vm);
    
    for (auto iter = inValue.begin(); iter != inValue.end(); ++iter) {
        
        std::string key = iter->first;
        const cocos2d::Value& obj = iter->second;
        
        sq_pushstring(vm, _SC(key.c_str()), -1);
        ccvalue_to_sqval(vm, obj);
        sq_set(vm, -3);
    }
}

void ccvaluemapintkey_to_sqval(HSQUIRRELVM vm, const cocos2d::ValueMapIntKey& inValue)
{
    if (nullptr == vm)
        return;
    
    sq_newtable(vm);
    
    for (auto iter = inValue.begin(); iter != inValue.end(); ++iter)
    {
        std::stringstream keyss;
        keyss << iter->first;
        std::string key = keyss.str();
        
        const Value& obj = iter->second;
        
        sq_pushstring(vm, _SC(key.c_str()), -1);
        ccvalue_to_sqval(vm, obj);
        sq_set(vm, -3);
    }
}

void ccvaluevector_to_sqval(HSQUIRRELVM vm, const cocos2d::ValueVector& inValue)
{
    if (nullptr == vm)
        return;
    
    sq_newarray(vm, 0);
    
    for (const auto& obj : inValue)
    {
        ccvalue_to_sqval(vm, obj);
        sq_arrayappend(vm, -2);
    }
}

void mat4_to_sqval(HSQUIRRELVM vm, const cocos2d::Mat4& mat)
{
    auto *mt = new Mat4(mat);
    if (plain_obj_to_sqval(vm, "cc.Mat4", mt)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_Mat4);
    }
}

void blendfunc_to_sqval(HSQUIRRELVM vm, const cocos2d::BlendFunc& func)
{
    auto *bf = new BlendFunc(func);
    if (plain_obj_to_sqval(vm, "cc.BlendFunc", bf)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_BlendFunc);
    }
}

void ttfconfig_to_sqval(HSQUIRRELVM vm, const cocos2d::TTFConfig& config)
{
    auto *cfg = new TTFConfig(config);
    if (plain_obj_to_sqval(vm, "cc.TTFConfig", cfg)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_ttfConfig);
    }
}

void t2fquad_to_sqval(HSQUIRRELVM vm, const cocos2d::T2F_Quad& t2fquad)
{
    auto *t2fq = new T2F_Quad(t2fquad);
    if (plain_obj_to_sqval(vm, "cc.T2F_Quad", t2fq)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_T2F_Quad);
    }
}

void uniform_to_sqval(HSQUIRRELVM vm, const cocos2d::Uniform& uniform)
{
    auto *unf = new Uniform(uniform);
    if (plain_obj_to_sqval(vm, "cc.Uniform", unf)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_Uniform);
    }
}

void vertexattrib_to_sqval(HSQUIRRELVM vm, const cocos2d::VertexAttrib& verAttrib)
{
    auto *vattr = new VertexAttrib(verAttrib);
    if (plain_obj_to_sqval(vm, "cc.VertexAttrib", vattr)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_VertexAttrib);
    }
}

void mesh_vertex_attrib_to_sqval(HSQUIRRELVM vm, const cocos2d::MeshVertexAttrib& inValue)
{
    auto *mva = new MeshVertexAttrib(inValue);
    if (plain_obj_to_sqval(vm, "cc.MeshVertexAttrib", mva)) {
        sq_setreleasehook(vm, -1, squirrel_releasehook_MeshVertexAttrib);
    }
}


void ccvector_int_to_sqval(HSQUIRRELVM vm, const std::vector<int>& inValue)
{
    if (nullptr == vm)
        return;
    
    sq_newarray(vm, 0);
    
    for (int value : inValue) {
        sq_pushinteger(vm, (SQInteger)value);
        sq_arrayappend(vm, -2);
    }
}

void ccvector_float_to_sqval(HSQUIRRELVM vm, const std::vector<float>& inValue)
{
    if (nullptr == vm)
        return;
    
    sq_newarray(vm, 0);
    
    for (float value : inValue) {
        sq_pushfloat(vm, (SQFloat)value);
        sq_arrayappend(vm, -2);
    }
}

void ccvector_ushort_to_sqval(HSQUIRRELVM vm, const std::vector<unsigned short>& inValue)
{
    if (nullptr == vm)
        return;
    
    sq_newarray(vm, 0);
    
    for (float value : inValue) {
        sq_pushinteger(vm, (SQInteger)value);
        sq_arrayappend(vm, -2);
    }
}

void ccvector_string_to_sqval(HSQUIRRELVM vm, const std::vector<std::string>& inValue)
{
    if (nullptr == vm)
        return;
    
    sq_newarray(vm, 0);
    
    for (std::string value : inValue) {
        sq_pushstring(vm, value.c_str(), -1);
        sq_arrayappend(vm, -2);
    }
}

void ccfunction_to_sqval(HSQUIRRELVM vm, Ref *ref, const char* funcName)
{
    if (ref->_scriptObject) {
        _SquirrelObject *sqObj = (_SquirrelObject *)ref->_scriptObject;
        HSQOBJECT po = sqObj->closures[funcName];
        if (po._type == OT_CLOSURE) {
            sq_pushobject(vm, po);
        }
    }
}

/*
std::string get_ccclass_name(HSQUIRRELVM vm, int lo)
{
    if (nullptr == vm)
        return nullptr;
    
    if (sq_gettype(vm, lo) != OT_CLASS && sq_gettype(vm, lo) != OT_INSTANCE) {
        return nullptr;
    }
    
    sq_pushstring(vm, _SC("_C_CLASS"), -1);
    if (SQ_SUCCEEDED(sq_get(vm, 1))) {
        const SQChar *sqValue;
        sq_getstring(vm, -1, &sqValue);
        return std::string(sqValue);
    }
    sq_poptop(vm);
    
    return nullptr;
}
*/

bool instanceof_cclass(HSQUIRRELVM vm, int lo, const char *cclassName)
{
    if (nullptr == vm)
        return false;
    
    if (sq_gettype(vm, lo) != OT_CLASS && sq_gettype(vm, lo) != OT_INSTANCE) {
        return false;
    }
    
    bool ok = false;
    
    sq_pushstring(vm, _SC("_C_CLASS"), -1);
    if (SQ_SUCCEEDED(sq_get(vm, lo))) {
        const SQChar *sqValue;
        sq_getstring(vm, -1, &sqValue);
        if (strcmp(sqValue, cclassName) == 0) {
            ok = true;
        }
    }
    sq_poptop(vm);
    if (ok) {
        return ok;
    }
    
    sq_pushstring(vm, _SC("_C_BASE_CLASSES"), -1);
    if (SQ_SUCCEEDED(sq_get(vm, lo))) {
        int size = (int)sq_getsize(vm, -1);
        for (int i = 0; i < size; i++) {
            sq_pushinteger(vm, i);
            if (SQ_SUCCEEDED(sq_get(vm, -2))) {
                const SQChar *sqValue;
                sq_getstring(vm, -1, &sqValue);
                if (strcmp(sqValue, cclassName) == 0) {
                    ok = true;
                }
            }
            sq_poptop(vm);
            if (ok) {
                break;
            }
        }
    }
    sq_poptop(vm);
    if (ok) {
        return ok;
    }
    
    return ok;
}

void to_squirrel_function(HSQUIRRELVM vm, const char *funcName, SQFUNCTION sqFunc, SQBool bstatic)
{
    sq_pushstring(vm, _SC(funcName), -1);
    sq_newclosure(vm, sqFunc, 0);
    CCASSERT(SQ_SUCCEEDED(sq_newslot(vm, -3, bstatic)), "to_squirrel function failed.");
}

void to_squirrel_variable_object(HSQUIRRELVM vm, const char *varName, SQUserPointer sqVar, SQBool bstatic)
{
    sq_pushstring(vm, _SC(varName), -1);
    sq_createinstance(vm, -2);
    sq_setinstanceup(vm, -1, sqVar);
    CCASSERT(SQ_SUCCEEDED(sq_newslot(vm, -3, bstatic)), "to_squirrel function failed.");
}

void to_squirrel_variable_integer(HSQUIRRELVM vm, const char *varName, SQInteger sqVar, SQBool bstatic)
{
    sq_pushstring(vm, _SC(varName), -1);
    sq_pushinteger(vm, sqVar);
    sq_newslot(vm, -3, bstatic);
}

void to_squirrel_variable_float(HSQUIRRELVM vm, const char *varName, SQFloat sqVar, SQBool bstatic)
{
    sq_pushstring(vm, _SC(varName), -1);
    sq_pushfloat(vm, sqVar);
    sq_newslot(vm, -3, bstatic);
}

void to_squirrel_variable_bool(HSQUIRRELVM vm, const char *varName, SQBool sqVar, SQBool bstatic)
{
    sq_pushstring(vm, _SC(varName), -1);
    sq_pushbool(vm, sqVar);
    sq_newslot(vm, -3, bstatic);
}

void to_squirrel_variable_char(HSQUIRRELVM vm, const char *varName, const char *sqVar, SQBool bstatic)
{
    sq_pushstring(vm, _SC(varName), -1);
    sq_pushstring(vm, _SC(sqVar), -1);
    sq_newslot(vm, -3, bstatic);
}

void to_squirrel_variable_string(HSQUIRRELVM vm, const char *varName, std::string sqVar, SQBool bstatic)
{
    sq_pushstring(vm, _SC(varName), -1);
    sq_pushstring(vm, _SC(sqVar.c_str()), -1);
    sq_newslot(vm, -3, bstatic);
}

SQInteger squirrel_releasehook_Ref(SQUserPointer p, SQInteger size)
{
    if (p) {
        cocos2d::Ref *ref = (Ref *)p;
        ref->release();
    }
    return 0;
}

template <class T>
SQInteger squirrel_releasehook_Object(SQUserPointer p, SQInteger size)
{
    if (p) {
        auto *obj = (T *)p;
        delete obj;
    }
    return 0;
}

SQInteger squirrel_releasehook_Point(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: Point release");
    return squirrel_releasehook_Object<cocos2d::Point>(p, size);
}

SQInteger squirrel_releasehook_Vec2(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: Vec2 release");
    return squirrel_releasehook_Object<cocos2d::Vec2>(p, size);
}

SQInteger squirrel_releasehook_Vec3(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: Vec3 release");
    return squirrel_releasehook_Object<cocos2d::Vec3>(p, size);
}

SQInteger squirrel_releasehook_Vec4(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: Vec4 release");
    return squirrel_releasehook_Object<cocos2d::Vec4>(p, size);
}

SQInteger squirrel_releasehook_Rect(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: Rect release");
    return squirrel_releasehook_Object<cocos2d::Rect>(p, size);
}

SQInteger squirrel_releasehook_Size(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: Size release");
    return squirrel_releasehook_Object<cocos2d::Size>(p, size);
}

SQInteger squirrel_releasehook_Color4B(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: Color4B release");
    return squirrel_releasehook_Object<cocos2d::Color4B>(p, size);
}

SQInteger squirrel_releasehook_Color4F(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: Color4F release");
    return squirrel_releasehook_Object<cocos2d::Color4F>(p, size);
}

SQInteger squirrel_releasehook_Color3B(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: Color3B release");
    return squirrel_releasehook_Object<cocos2d::Color3B>(p, size);
}

SQInteger squirrel_releasehook_PhysicsMaterial(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: PhysicsMaterial release");
    return squirrel_releasehook_Object<cocos2d::PhysicsMaterial>(p, size);
}

SQInteger squirrel_releasehook_PhysicsContactData(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: PhysicsContactData release");
    return squirrel_releasehook_Object<cocos2d::PhysicsContactData>(p, size);
}

SQInteger squirrel_releasehook_PhysicsRayCastInfo(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: PhysicsRayCastInfo release");
    return squirrel_releasehook_Object<cocos2d::PhysicsRayCastInfo>(p, size);
}

SQInteger squirrel_releasehook_AffineTransform(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: AffineTransform release");
    return squirrel_releasehook_Object<cocos2d::AffineTransform>(p, size);
}

SQInteger squirrel_releasehook_FontDefinition(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: FontDefinition release");
    return squirrel_releasehook_Object<cocos2d::FontDefinition>(p, size);
}

SQInteger squirrel_releasehook_Mat4(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: Mat4 release");
    return squirrel_releasehook_Object<cocos2d::Mat4>(p, size);
}

SQInteger squirrel_releasehook_BlendFunc(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: BlendFunc release");
    return squirrel_releasehook_Object<cocos2d::BlendFunc>(p, size);
}

SQInteger squirrel_releasehook_ttfConfig(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: ttfConfig release");
    return squirrel_releasehook_Object<cocos2d::_ttfConfig>(p, size);
}

SQInteger squirrel_releasehook_Uniform(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: Uniform release");
    return squirrel_releasehook_Object<cocos2d::Uniform>(p, size);
}

SQInteger squirrel_releasehook_VertexAttrib(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: VertexAttrib release");
    return squirrel_releasehook_Object<cocos2d::VertexAttrib>(p, size);
}

SQInteger squirrel_releasehook_MeshVertexAttrib(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: MeshVertexAttrib release");
    return squirrel_releasehook_Object<cocos2d::MeshVertexAttrib>(p, size);
}

SQInteger squirrel_releasehook_T2F_Quad(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: T2F_Quad release");
    return squirrel_releasehook_Object<cocos2d::T2F_Quad>(p, size);
}

SQInteger squirrel_releasehook_Quaternion(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: Quaternion release");
    return squirrel_releasehook_Object<cocos2d::Quaternion>(p, size);
}

SQInteger squirrel_releasehook_Animation3DData(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: Animation3DData release");
    return squirrel_releasehook_Object<cocos2d::Animation3DData>(p, size);
}

SQInteger squirrel_releasehook_Acceleration(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: Acceleration release");
    return squirrel_releasehook_Object<cocos2d::Acceleration>(p, size);
}

SQInteger squirrel_releasehook_GLContextAttrs(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: GLContextAttrs release");
    return squirrel_releasehook_Object<GLContextAttrs>(p, size);
}

SQInteger squirrel_releasehook_AABB(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: AABB release");
    return squirrel_releasehook_Object<AABB>(p, size);
}

SQInteger squirrel_releasehook_Sprite3DData(SQUserPointer p, SQInteger size)
{
    CCLOG("squirrel: Sprite3DData release");
    return squirrel_releasehook_Object<Sprite3DCache::Sprite3DData>(p, size);
}

void set_squirrel_object(HSQUIRRELVM vm, int lo, cocos2d::Ref *ref, const char *sq_class_name)
{
    if (ref->_scriptObject != nullptr) {
        return;
    }
    
    HSQOBJECT po;
    if (SQ_SUCCEEDED(sq_getstackobj(vm, lo, &po))) {
        ref->_scriptObject = new _SquirrelObject(vm, po, sq_class_name);
    }
}

bool call_squirrel_closure(HSQUIRRELVM vm, int lo, const char *funcName, bool check)
{
    bool ok = false;
    sq_pushstring(vm, _SC(funcName), -1);
    if (SQ_SUCCEEDED(sq_get(vm, lo - 1))) {
        if (sq_gettype(vm, -1) == OT_CLOSURE) {
            sq_push(vm, lo - 1);
            if (SQ_SUCCEEDED(sq_call(vm, 1, SQFalse, SQTrue))) {
                ok = true;
            }
        }
        sq_poptop(vm);
    }
    if (check && ! ok) {
        CCLOG("Call a function named \"%s\".", funcName);
        CCASSERT(false, "This function is not exists.");
    }
    return ok;
}
