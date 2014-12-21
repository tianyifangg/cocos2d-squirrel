//
//  SquirrelBasicConversion.h
//  cocos2d_lua_bindings
//
//  Created by tkyaji on 2014/09/20.
//
//

#ifndef __cocos2d_lua_bindings__SquirrelBasicConversion__
#define __cocos2d_lua_bindings__SquirrelBasicConversion__

#include <squirrel.h>
#include "cocos2d.h"

using namespace cocos2d;

extern std::unordered_map<std::string, std::string>  g_sqType;
//extern std::unordered_map<std::string, std::string>  g_typeCast;

//#if COCOS2D_DEBUG >=1
//void sqval_to_native_err(HSQUIRRELVM vm,const char* msg,tolua_Error* err);
//#endif

#if defined(COCOS2D_DEBUG) && (COCOS2D_DEBUG > 0)
static const char* debug_get_sq_type_str(SQObjectType type)
{
    switch (type) {
        case OT_NULL: return "null"; break;
        case OT_INTEGER: return "integer"; break;
        case OT_FLOAT: return "float"; break;
        case OT_BOOL: return "bool"; break;
        case OT_STRING: return "string"; break;
        case OT_TABLE: return "table"; break;
        case OT_ARRAY: return "array"; break;
        case OT_USERDATA: return "userdata"; break;
        case OT_CLOSURE: return "closure"; break;
        case OT_NATIVECLOSURE: return "native closure"; break;
        case OT_GENERATOR: return "generator"; break;
        case OT_USERPOINTER: return "userpointer"; break;
        case OT_THREAD: return "thread"; break;
        case OT_FUNCPROTO: return "func proto"; break;
        case OT_CLASS: return "class"; break;
        case OT_INSTANCE: return "instance"; break;
        case OT_WEAKREF: return "weakref"; break;
        case OT_OUTER: return "outer"; break;
    }
}
static void debug_show_squirrel_stack(HSQUIRRELVM vm, const char *log = nullptr)
{
    if (log == nullptr) {
        CCLOG("# squirrel stack");
    } else {
        CCLOG("# squirrel stack : %s", log);
    }
    for (int i = (int)sq_gettop(vm); i >= 1; i--) {
        const char *type_str = debug_get_sq_type_str(sq_gettype(vm, i));
        CCLOG("%d: %s", i, type_str);
    }
    CCLOG("###");
}
#endif

#define SQ_PRECONDITION( condition, ...) if( ! (condition) ) {														\
cocos2d::log("squirrel: ERROR: File %s: Line: %d, Function: %s", __FILE__, __LINE__, __FUNCTION__ );                                                         \
cocos2d::log(__VA_ARGS__);                                                  \
}                                                                           \

/*
template <class T>
void cnv_sq_release_hook(HSQUIRRELVM vm, T *obj)
{
    delete obj;
}
*/

struct _SquirrelObject
{
    HSQUIRRELVM vm;
    HSQOBJECT po;
    const char *class_name;
    std::map<std::string, HSQOBJECT>closures;
    
    _SquirrelObject(HSQUIRRELVM &_vm, HSQOBJECT &_po, const char *_class_name) : vm(_vm), po(_po), class_name(_class_name)
    {
        sq_addref(vm, &po);
        CCLOG("create %s instance", class_name);
    }
    ~_SquirrelObject()
    {
        for (auto kv : closures) {
            sq_release(vm, &kv.second);
        }
        sq_release(vm, &po);
        CCLOG("delete %s instance", class_name);
    }
    void addClosure(std::string key, HSQOBJECT &closure)
    {
        sq_addref(vm, &closure);
        closures[key] = closure;
    }
};

inline bool sq_get_class(HSQUIRRELVM vm, const char* type)
{
    char str[128];
    strcpy(str, type);
    
    sq_pushroottable(vm);
    
    char *tp = strtok(str, ".");
    do {
        if (tp != NULL) {
            std::string tps(tp);
            sq_pushstring(vm, _SC(tps.c_str()), -1);
            if (SQ_FAILED(sq_get(vm, -2))) {
                sq_pop(vm, 2);
                return false;
            }
            sq_remove(vm, -2);
        }
        tp = strtok(NULL, ".");
    } while (tp != NULL);
    
    return true;
}

template <class T>
bool cnv_sq_create_instance(HSQUIRRELVM vm, const char *type, T *obj)
{
    SQInteger top = sq_gettop(vm);
    
    if (! sq_get_class(vm, type)) {
        return false;
    }
    
    if (SQ_FAILED(sq_createinstance(vm, -1))) {
        sq_settop(vm, top);
        return false;
    }
    sq_remove(vm, -2);

    if (SQ_FAILED(sq_setinstanceup(vm, -1, (SQUserPointer)obj))) {
        sq_settop(vm, top);
        return false;
    }

    cocos2d::Ref* ref = dynamic_cast<cocos2d::Ref *>(obj);
    if (nullptr != ref) {
        HSQOBJECT po;
        if (SQ_SUCCEEDED(sq_getstackobj(vm, -1, &po))) {
            if (ref->_scriptObject == nullptr) {
                ref->_scriptObject = new _SquirrelObject(vm, po, type);
            }
        }
    }
    
    return true;
}

template <class T>
bool cnv_sq_push_instance(HSQUIRRELVM vm, const char *type, T *obj)
{
    bool ok = true;
    
    if (nullptr == obj) {
        sq_pushnull(vm);
        ok = false;
    }
    
    if (ok) {
        cocos2d::Ref* ref = dynamic_cast<cocos2d::Ref *>(obj);
        if (nullptr != ref && nullptr != ref->_scriptObject) {
            _SquirrelObject *sqobj = (_SquirrelObject *)ref->_scriptObject;
            sq_pushobject(vm, sqobj->po);
            
        } else {
            if (! cnv_sq_create_instance<T>(vm, type, obj)) {
                ok = false;
            }
        }
        if (! ok) {
            sq_pushnull(vm);
        }
    }
    
    return ok;
}

//extern bool sqval_is_usertype(HSQUIRRELVM vm,int lo,const char* type, int def);
// to native
bool sqval_to_ushort(HSQUIRRELVM vm, int lo, unsigned short* outValue);
bool sqval_to_int32(HSQUIRRELVM vm,int lo,int* outValue);
bool sqval_to_uint32(HSQUIRRELVM vm, int lo, unsigned int* outValue);
bool sqval_to_uint16(HSQUIRRELVM vm,int lo,uint16_t* outValue);
bool sqval_to_boolean(HSQUIRRELVM vm,int lo,bool* outValue);
bool sqval_to_number(HSQUIRRELVM vm,int lo,double* outValue);
bool sqval_to_float(HSQUIRRELVM vm,int lo,float* outValue);
bool sqval_to_long_long(HSQUIRRELVM vm,int lo,long long* outValue);
bool sqval_to_std_string(HSQUIRRELVM vm, int lo, std::string* outValue);
bool sqval_to_long(HSQUIRRELVM vm,int lo, long* outValue);
bool sqval_to_ssize(HSQUIRRELVM vm,int lo, ssize_t* outValue);
bool sqval_to_size(HSQUIRRELVM vm,int lo,Size* &outValue);
bool sqval_to_rect(HSQUIRRELVM vm,int lo,Rect* &outValue);
bool sqval_to_color3b(HSQUIRRELVM vm,int lo,Color3B* &outValue);
bool sqval_to_color4b(HSQUIRRELVM vm,int lo,Color4B* &outValue);
bool sqval_to_color4f(HSQUIRRELVM vm,int lo,Color4F* &outValue);
bool sqval_to_physics_material(HSQUIRRELVM vm,int lo, cocos2d::PhysicsMaterial* &outValue);
bool sqval_to_affinetransform(HSQUIRRELVM vm,int lo, AffineTransform* &outValue);
bool sqval_to_fontdefinition(HSQUIRRELVM vm, int lo, FontDefinition* &outValue);
bool sqval_to_mat4(HSQUIRRELVM vm, int lo, cocos2d::Mat4* &outValue);
bool sqval_to_array(HSQUIRRELVM vm,int lo, __Array** outValue);
bool sqval_to_dictionary(HSQUIRRELVM vm,int lo, __Dictionary** outValue);
bool sqval_to_array_of_vec2(HSQUIRRELVM vm,int lo,cocos2d::Vec2 **points, int *numPoints);
bool sqvals_variadic_to_array(HSQUIRRELVM vm,int argc, __Array** ret);
bool sqvals_variadic_to_ccvaluevector(HSQUIRRELVM vm, int argc, cocos2d::ValueVector* ret);
bool sqval_to_vec2(HSQUIRRELVM vm,int lo,cocos2d::Vec2* &outValue);
bool sqval_to_vec3(HSQUIRRELVM vm,int lo,cocos2d::Vec3* &outValue);
bool sqval_to_vec4(HSQUIRRELVM vm,int lo,cocos2d::Vec4* &outValue);
bool sqval_to_blendfunc(HSQUIRRELVM vm, int lo, cocos2d::BlendFunc* &outValue);
bool sqval_to_ttfconfig(HSQUIRRELVM vm, int lo, cocos2d::TTFConfig* &outValue);
bool sqval_to_uniform(HSQUIRRELVM vm, int lo, cocos2d::Uniform* &outValue);
bool sqval_to_vertexattrib(HSQUIRRELVM vm, int lo, cocos2d::VertexAttrib* &outValue);
bool sqval_to_quaternion(HSQUIRRELVM vm,int lo,cocos2d::Quaternion* &outValue);
bool sqval_to_t2fquad(HSQUIRRELVM vm,int lo,cocos2d::T2F_Quad* &outValue);
bool sqval_to_animation3ddata(HSQUIRRELVM vm,int lo,Animation3DData* &outValue);
bool sqval_to_acceleration(HSQUIRRELVM vm,int lo,Acceleration* &outValue);
bool sqval_to_glcontextattrs(HSQUIRRELVM vm,int lo,GLContextAttrs* &outValue);

static inline bool sqval_to_point(HSQUIRRELVM vm,int lo,cocos2d::Vec2* outValue)
{
    return sqval_to_vec2(vm, lo, outValue);
}

CC_DEPRECATED_ATTRIBUTE static inline bool sqval_to_kmMat4(HSQUIRRELVM vm, int lo, cocos2d::Mat4* outValue)
{
    return sqval_to_mat4(vm, lo, outValue);
}
CC_DEPRECATED_ATTRIBUTE static inline bool sqval_to_array_of_Point(HSQUIRRELVM vm,int lo,cocos2d::Vec2 **points, int *numPoints)
{
    return sqval_to_array_of_vec2(vm, lo, points, numPoints);
}


template <class T>
bool sqvals_variadic_to_ccvector(HSQUIRRELVM vm, int argc, cocos2d::Vector<T>* ret)
{
    if (nullptr == vm || argc == 0 || nullptr == ret)
        return false;
    
    for (int i = 0; i < argc; i++) {
        T *obj = nullptr;
        sq_getinstanceup(vm, i + 2, (SQUserPointer *)&obj, 0);
        if (obj != nullptr) {
            ret->pushBack(obj);
        }
    }
    
    return true;
}

template <class T>
bool sqval_to_ccvector(HSQUIRRELVM vm, int lo , cocos2d::Vector<T>* ret)
{
    if (nullptr == vm || nullptr == ret)
        return false;
    
    if (sq_gettype(vm, lo) != OT_ARRAY)
        return false;
    
    int idx = 0;
    sq_pushinteger(vm, idx);
    while (SQ_SUCCEEDED(sq_get(vm, lo - 1))) {
        T *obj = nullptr;
        sq_getinstanceup(vm, -1, (SQUserPointer *)&obj, 0);
        sq_poptop(vm);
        if (obj != nullptr) {
            ret->pushBack(*obj);
        }
        sq_pushinteger(vm, ++idx);
    }
    sq_poptop(vm);
    
    return true;
}

template <class T>
bool sqval_to_ccvector_object(HSQUIRRELVM vm, int lo, std::vector<T*>& ret)
{
    if (nullptr == vm)
        return false;
    
    if (sq_gettype(vm, lo) != OT_ARRAY)
        return false;
    
    int idx = 0;
    sq_pushinteger(vm, idx);
    while (SQ_SUCCEEDED(sq_get(vm, lo - 1))) {
        T *obj = nullptr;
        sq_getinstanceup(vm, -1, (SQUserPointer *)&obj, 0);
        sq_poptop(vm);
        if (obj != nullptr) {
            ret.push_back(obj);
        }
        sq_pushinteger(vm, ++idx);
    }
    sq_poptop(vm);
    
    return true;
}

bool sqval_to_std_vector_string(HSQUIRRELVM vm, int lo, std::vector<std::string>* ret);
bool sqval_to_std_vector_int(HSQUIRRELVM vm, int lo, std::vector<int>* ret);

template <class T>
bool sqval_to_ccmap_string_key(HSQUIRRELVM vm, int lo, cocos2d::Map<std::string, T>* ret)
{
    if(nullptr == vm || nullptr == ret || sq_gettop(vm) < lo)
        return false;
    
    bool ok = true;
    if (sq_gettype(vm, lo) != OT_TABLE) {
        ok = false;
    }
    
    if (ok)
    {
        std::string stringKey = "";
        int size = (int)sq_getsize(vm, lo);
        sq_pushnull(vm);
        for (int i = 0; i < size; i++) {
            sq_next(vm, lo);
            if (sq_gettype(vm, -2) != OT_STRING) {
                sq_poptop(vm);
                continue;
            }
            if (sq_gettype(vm, -1) != OT_INSTANCE) {
                sq_poptop(vm);
                continue;
            }
            sqval_to_std_string(vm, -2, &stringKey);

            SQUserPointer po = nullptr;
            sq_getinstanceup(vm, -1, &po, 0);

            T obj = static_cast<T>(po);
            if (nullptr != obj) {
                ret->insert(stringKey, obj);
            }
            sq_pop(vm, 2);
        }
        sq_poptop(vm);
    }
    
    return ok;
}

bool sqval_to_ccvalue(HSQUIRRELVM vm, int lo, cocos2d::Value* ret);
bool sqval_to_ccvaluemap(HSQUIRRELVM vm, int lo, cocos2d::ValueMap* ret);
bool sqval_to_ccvaluemapintkey(HSQUIRRELVM vm, int lo, cocos2d::ValueMapIntKey* ret);
bool sqval_to_ccvaluevector(HSQUIRRELVM vm, int lo, cocos2d::ValueVector* ret);

template <class T>
bool sqval_to_object(HSQUIRRELVM vm, int lo, T** ret)
{
    if(nullptr == vm || sq_gettop(vm) < lo)
        return false;
    
    if (sq_gettype(vm, lo) != OT_INSTANCE)
        return false;

    sq_getinstanceup(vm, lo, (SQUserPointer *)ret, 0);
    
    if (nullptr == ret)
        SQ_PRECONDITION(ret, "Invalid Native Object");
    
    return true;
}

template <class T>
bool sqval_to_plain_object(HSQUIRRELVM vm, int lo, T* &outValue)
{
    if (nullptr == vm)
        return false;
    
    bool ok = true;
    
    if (sq_gettype(vm, lo) != OT_INSTANCE) {
        ok = false;
    }
    if (ok) {
        SQUserPointer po;
        if (SQ_SUCCEEDED(sq_getinstanceup(vm, lo, &po, 0))) {
            outValue = (T*)po;
            if (outValue == nullptr) {
                sq_throwerror(vm, _SC("instance in NULL."));
                ok = false;
            }
        } else {
            sq_throwerror(vm, _SC("cannot get instance"));
            ok = false;
        }
    }
    
    return ok;
}

bool sqval_to_mesh_vertex_attrib(HSQUIRRELVM vm, int lo, cocos2d::MeshVertexAttrib* ret);
bool sqval_to_std_vector_float(HSQUIRRELVM vm, int lo, std::vector<float>* ret);
bool sqval_to_std_vector_ushort(HSQUIRRELVM vm, int lo, std::vector<unsigned short>* ret);
bool sqval_to_float_array(HSQUIRRELVM vm, int lo, const float** ret);

// from native
void vec2_to_sqval(HSQUIRRELVM vm,const cocos2d::Vec2& vec2);
void vec3_to_sqval(HSQUIRRELVM vm,const cocos2d::Vec3& vec3);
void vec4_to_sqval(HSQUIRRELVM vm,const cocos2d::Vec4& vec3);
void vec2_array_to_sqval(HSQUIRRELVM vm,const cocos2d::Vec2* points, int count);
void size_to_sqval(HSQUIRRELVM vm,const Size& sz);
void rect_to_sqval(HSQUIRRELVM vm,const Rect& rt);
void color3b_to_sqval(HSQUIRRELVM vm,const Color3B& cc);
void color4b_to_sqval(HSQUIRRELVM vm,const Color4B& cc);
void color4f_to_sqval(HSQUIRRELVM vm,const Color4F& cc);
void physics_material_to_sqval(HSQUIRRELVM vm,const PhysicsMaterial& pm);
void physics_raycastinfo_to_sqval(HSQUIRRELVM vm, const PhysicsRayCastInfo& info);
void physics_contactdata_to_sqval(HSQUIRRELVM vm, const PhysicsContactData* data);
void affinetransform_to_sqval(HSQUIRRELVM vm,const AffineTransform& inValue);
void fontdefinition_to_sqval(HSQUIRRELVM vm,const FontDefinition& inValue);
void array_to_sqval(HSQUIRRELVM vm, __Array* inValue);
void dictionary_to_sqval(HSQUIRRELVM vm, __Dictionary* dict);
void mat4_to_sqval(HSQUIRRELVM vm, const cocos2d::Mat4& mat);
void blendfunc_to_sqval(HSQUIRRELVM vm, const cocos2d::BlendFunc& func);
void ttfconfig_to_sqval(HSQUIRRELVM vm, const cocos2d::TTFConfig& config);
void t2fquad_to_sqval(HSQUIRRELVM vm, const cocos2d::T2F_Quad& t2fquad);
void uniform_to_sqval(HSQUIRRELVM vm, const cocos2d::Uniform& uniform);
void vertexattrib_to_sqval(HSQUIRRELVM vm, const cocos2d::VertexAttrib& verAttrib);
void quaternion_to_sqval(HSQUIRRELVM vm, const Quaternion& inValue);
void animation3ddata_to_sqval(HSQUIRRELVM vm, const Animation3DData& inValue);
void acceleration_to_sqval(HSQUIRRELVM vm, const Acceleration* inValue);
void glcontextattrs_to_sqval(HSQUIRRELVM vm, const GLContextAttrs& inValue);
void aabb_to_sqval(HSQUIRRELVM vm, const AABB& inValue);
void sprite3ddata_to_sqval(HSQUIRRELVM vm, const Sprite3DCache::Sprite3DData* inValue);

static inline void point_to_sqval(HSQUIRRELVM vm,const cocos2d::Vec2& pt)
{
    vec2_to_sqval(vm, pt);
}

CC_DEPRECATED_ATTRIBUTE static inline void points_to_sqval(HSQUIRRELVM vm,const cocos2d::Vec2* points, int count)
{
    vec2_array_to_sqval(vm, points, count);
}

template <class T>
void ccvector_to_sqval(HSQUIRRELVM vm,const cocos2d::Vector<T>& inValue)
{
    if (nullptr == vm) {
        return;
    }
    
    sq_newarray(vm, 0);
    
    for (const auto &obj : inValue) {
        if (nullptr == obj)
            continue;
        
        if (nullptr != dynamic_cast<cocos2d::Ref *>(obj)) {
            if (cnv_sq_push_instance<cocos2d::Ref>(vm, "cc.Ref", (cocos2d::Ref *)obj)) {
                sq_arrayappend(vm, -2);
            }
        }
    }
}

template <class T>
void ccmap_string_key_to_sqval(HSQUIRRELVM vm, const cocos2d::Map<std::string, T>& v)
{
    if (nullptr == vm || nullptr == v)
        return;
    
    sq_newtable(vm);
    
    for (auto iter = v.begin(); iter != v.end(); ++iter) {
        std::string key = iter->first;
        T obj = iter->second;
        if (nullptr != dynamic_cast<cocos2d::Ref *>(obj)) {
            SQInteger top = sq_gettop(vm);
            
            sq_pushstring(vm, _SC(key.c_str()), -1);
            if (cnv_sq_push_instance<cocos2d::Ref>(vm, "cc.Ref", (cocos2d::Ref *)obj)) {
                if (SQ_FAILED(sq_newslot(vm, -3, SQFalse))) {
                    sq_settop(vm, top);
                    continue;
                }
            }
        }
    }
}

void ccvalue_to_sqval(HSQUIRRELVM vm,const cocos2d::Value& inValue);
void ccvaluemap_to_sqval(HSQUIRRELVM vm,const cocos2d::ValueMap& inValue);
void ccvaluemapintkey_to_sqval(HSQUIRRELVM vm, const cocos2d::ValueMapIntKey& inValue);
void ccvaluevector_to_sqval(HSQUIRRELVM vm, const cocos2d::ValueVector& inValue);

/**
 Because all override functions wouldn't be bound,so we must use `typeid` to get the real class name
 */
/*
template <class T>
const char* getSqTypeName(T* ret,const char* type)
{
    if (nullptr != ret)
    {
        std::string hashName = typeid(*ret).name();
        auto iter =  g_sqType.find(hashName);
        if(g_sqType.end() != iter)
        {
            return iter->second.c_str();
        }
        else
        {
            return type;
        }
    }
    
    return nullptr;
}
 */

template <class T>
void object_to_sqval(HSQUIRRELVM vm, const char *type, T* ret)
{
    if (nullptr == ret) {
        sq_pushnull(vm);
        
    } else {
        cnv_sq_push_instance<T>(vm, type, ret);
    }
}

void mesh_vertex_attrib_to_sqval(HSQUIRRELVM vm, const cocos2d::MeshVertexAttrib& inValue);
void ccvector_int_to_sqval(HSQUIRRELVM vm, const std::vector<int>& inValue);
void ccvector_float_to_sqval(HSQUIRRELVM vm, const std::vector<float>& inValue);
void ccvector_ushort_to_sqval(HSQUIRRELVM vm, const std::vector<unsigned short>& inValue);
void ccvector_string_to_sqval(HSQUIRRELVM vm, const std::vector<std::string>& inValue);
template <class T>
void ccvector_object_to_sqval(HSQUIRRELVM vm, const char *type, const std::vector<T*>& inValue)
{
    if (nullptr == vm)
        return;
    
    sq_newarray(vm, 0);
    
    for (T* value : inValue) {
        object_to_sqval(vm, type, value);
        sq_arrayappend(vm, -2);
    }
}
void ccfunction_to_sqval(HSQUIRRELVM vm, Ref *ref, const char* funcName);

//std::string get_ccclass_name(HSQUIRRELVM vm, int lo);

bool instanceof_cclass(HSQUIRRELVM vm, int lo, const char *cclassName);

void to_squirrel_function(HSQUIRRELVM vm, const char *funcName, SQFUNCTION sqFunc, SQBool bstatic = SQFalse);

void to_squirrel_variable_object(HSQUIRRELVM vm, const char *varName, SQUserPointer sqVar, SQBool bstatic = SQFalse);
void to_squirrel_variable_integer(HSQUIRRELVM vm, const char *varName, SQInteger sqVar, SQBool bstatic = SQFalse);
void to_squirrel_variable_float(HSQUIRRELVM vm, const char *varName, SQFloat sqVar, SQBool bstatic = SQFalse);
void to_squirrel_variable_bool(HSQUIRRELVM vm, const char *varName, SQBool sqVar, SQBool bstatic = SQFalse);
void to_squirrel_variable_char(HSQUIRRELVM vm, const char *varName, const char *sqVar, SQBool bstatic = SQFalse);
void to_squirrel_variable_string(HSQUIRRELVM vm, const char *varName, std::string sqVar, SQBool bstatic = SQFalse);

SQInteger squirrel_releasehook_Ref(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_Point(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_Vec2(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_Vec3(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_Vec4(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_Rect(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_Size(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_Color4B(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_Color4F(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_Color3B(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_PhysicsMaterial(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_PhysicsContactData(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_PhysicsRayCastInfo(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_AffineTransform(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_FontDefinition(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_Mat4(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_BlendFunc(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_ttfConfig(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_BlendFunc(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_Uniform(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_VertexAttrib(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_MeshVertexAttrib(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_T2F_Quad(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_Quaternion(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_Animation3DData(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_Acceleration(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_GLContextAttrs(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_AABB(SQUserPointer p, SQInteger size);
SQInteger squirrel_releasehook_Sprite3DData(SQUserPointer p, SQInteger size);

void set_squirrel_object(HSQUIRRELVM vm, int lo, cocos2d::Ref *ref, const char *sq_class_name);

bool call_squirrel_closure(HSQUIRRELVM vm, int lo, const char *funcName);

#endif /* defined(__cocos2d_lua_bindings__SquirrelBasicConversion__) */
