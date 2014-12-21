
--------------------------------
-- @module Mat4
-- @parent_module cc

--------------------------------
-- @function [parent=#Mat4] getBackVector 
-- @param self
-- @param #vec3_table vec3
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, float         
-- @overload self, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float         
-- @overload self, mat4_table         
-- @function [parent=#Mat4] set
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Mat4] getTransposed 
-- @param self
-- @return mat4_table#mat4_table ret (return value: mat4_table)
        
--------------------------------
-- @function [parent=#Mat4] getDownVector 
-- @param self
-- @param #vec3_table vec3
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Mat4] getRightVector 
-- @param self
-- @param #vec3_table vec3
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Mat4] getTranslation 
-- @param self
-- @param #vec3_table vec3
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Mat4] getRotation 
-- @param self
-- @param #cc.Quaternion quaternion
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Mat4] negate 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Mat4] getUpVector 
-- @param self
-- @param #vec3_table vec3
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Mat4] inverse 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @overload self, vec3_table, vec3_table         
-- @overload self, vec3_table         
-- @function [parent=#Mat4] transformPoint
-- @param self
-- @param #vec3_table vec3
-- @param #vec3_table vec3
-- @return void#void ret (retunr value: void)

--------------------------------
-- @overload self, float, mat4_table         
-- @overload self, float         
-- @function [parent=#Mat4] rotateZ
-- @param self
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (retunr value: void)

--------------------------------
-- @overload self, float, mat4_table         
-- @overload self, float         
-- @function [parent=#Mat4] rotateX
-- @param self
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (retunr value: void)

--------------------------------
-- @overload self, float, mat4_table         
-- @overload self, float         
-- @function [parent=#Mat4] rotateY
-- @param self
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (retunr value: void)

--------------------------------
-- @overload self, float, mat4_table         
-- @overload self, float         
-- @overload self, mat4_table         
-- @function [parent=#Mat4] add
-- @param self
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (retunr value: void)

--------------------------------
-- @overload self, float, float, float, mat4_table         
-- @overload self, float, float, float         
-- @overload self, vec3_table         
-- @overload self, vec3_table, mat4_table         
-- @function [parent=#Mat4] translate
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Mat4] setIdentity 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Mat4] determinant 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Mat4] getForwardVector 
-- @param self
-- @param #vec3_table vec3
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Mat4] transpose 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, cc.Quaternion, mat4_table         
-- @overload self, cc.Quaternion         
-- @overload self, vec3_table, float         
-- @overload self, vec3_table, float, mat4_table         
-- @function [parent=#Mat4] rotate
-- @param self
-- @param #vec3_table vec3
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (retunr value: void)

--------------------------------
-- @overload self, float, mat4_table         
-- @overload self, float         
-- @overload self, float, float, float         
-- @overload self, float, float, float, mat4_table         
-- @overload self, vec3_table         
-- @overload self, vec3_table, mat4_table         
-- @function [parent=#Mat4] scale
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (retunr value: void)

--------------------------------
-- @overload self, vec3_table, vec3_table         
-- @overload self, vec3_table         
-- @overload self, float, float, float, float, vec3_table         
-- @overload self, vec4_table         
-- @overload self, vec4_table, vec4_table         
-- @function [parent=#Mat4] transformVector
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #vec3_table vec3
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Mat4] getScale 
-- @param self
-- @param #vec3_table vec3
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Mat4] subtract 
-- @param self
-- @param #mat4_table mat4
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Mat4] getNegated 
-- @param self
-- @return mat4_table#mat4_table ret (return value: mat4_table)
        
--------------------------------
-- @function [parent=#Mat4] getLeftVector 
-- @param self
-- @param #vec3_table vec3
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Mat4] setZero 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Mat4] isIdentity 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Mat4] decompose 
-- @param self
-- @param #vec3_table vec3
-- @param #cc.Quaternion quaternion
-- @param #vec3_table vec3
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Mat4] getInversed 
-- @param self
-- @return mat4_table#mat4_table ret (return value: mat4_table)
        
--------------------------------
-- @overload self, float, float, float, float, float, float, float, float, float, mat4_table         
-- @overload self, vec3_table, vec3_table, vec3_table, mat4_table         
-- @function [parent=#Mat4] createLookAt
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Mat4] createOrthographic 
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Mat4] createRotationX 
-- @param self
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Mat4] createRotationZ 
-- @param self
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, vec3_table, float, mat4_table         
-- @overload self, cc.Quaternion, mat4_table         
-- @function [parent=#Mat4] createRotation
-- @param self
-- @param #vec3_table vec3
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Mat4] createPerspective 
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, float, float, float, mat4_table         
-- @overload self, vec3_table, mat4_table         
-- @function [parent=#Mat4] createScale
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Mat4] add 
-- @param self
-- @param #mat4_table mat4
-- @param #mat4_table mat4
-- @param #mat4_table mat4
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, float, float, float, mat4_table         
-- @overload self, vec3_table, mat4_table         
-- @function [parent=#Mat4] createTranslation
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Mat4] createRotationY 
-- @param self
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, vec3_table, vec3_table, vec3_table, vec3_table, mat4_table         
-- @overload self, vec3_table, vec3_table, vec3_table, mat4_table         
-- @function [parent=#Mat4] createBillboard
-- @param self
-- @param #vec3_table vec3
-- @param #vec3_table vec3
-- @param #vec3_table vec3
-- @param #vec3_table vec3
-- @param #mat4_table mat4
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Mat4] subtract 
-- @param self
-- @param #mat4_table mat4
-- @param #mat4_table mat4
-- @param #mat4_table mat4
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Mat4] createOrthographicOffCenter 
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #mat4_table mat4
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float         
-- @overload self         
-- @overload self, float         
-- @function [parent=#Mat4] Mat4
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @return void#void ret (retunr value: void)

return nil
