
--------------------------------
-- @module Quaternion
-- @parent_module cc

--------------------------------
-- @function [parent=#Quaternion] normalize 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Quaternion] toAxisAngle 
-- @param self
-- @param #vec3_table vec3
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Quaternion] inverse 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Quaternion] getConjugated 
-- @param self
-- @return Quaternion#Quaternion ret (return value: cc.Quaternion)
        
--------------------------------
-- @function [parent=#Quaternion] multiply 
-- @param self
-- @param #cc.Quaternion quaternion
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, float         
-- @overload self, float, float, float, float         
-- @overload self, mat4_table         
-- @overload self, vec3_table, float         
-- @overload self, cc.Quaternion         
-- @function [parent=#Quaternion] set
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Quaternion] isIdentity 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Quaternion] conjugate 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Quaternion] isZero 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Quaternion] setIdentity 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Quaternion] getNormalized 
-- @param self
-- @return Quaternion#Quaternion ret (return value: cc.Quaternion)
        
--------------------------------
-- @function [parent=#Quaternion] getInversed 
-- @param self
-- @return Quaternion#Quaternion ret (return value: cc.Quaternion)
        
--------------------------------
-- @function [parent=#Quaternion] slerp 
-- @param self
-- @param #cc.Quaternion quaternion
-- @param #cc.Quaternion quaternion
-- @param #float float
-- @param #cc.Quaternion quaternion
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Quaternion] createFromRotationMatrix 
-- @param self
-- @param #mat4_table mat4
-- @param #cc.Quaternion quaternion
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Quaternion] lerp 
-- @param self
-- @param #cc.Quaternion quaternion
-- @param #cc.Quaternion quaternion
-- @param #float float
-- @param #cc.Quaternion quaternion
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Quaternion] zero 
-- @param self
-- @return Quaternion#Quaternion ret (return value: cc.Quaternion)
        
--------------------------------
-- @function [parent=#Quaternion] createFromAxisAngle 
-- @param self
-- @param #vec3_table vec3
-- @param #float float
-- @param #cc.Quaternion quaternion
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Quaternion] multiply 
-- @param self
-- @param #cc.Quaternion quaternion
-- @param #cc.Quaternion quaternion
-- @param #cc.Quaternion quaternion
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Quaternion] squad 
-- @param self
-- @param #cc.Quaternion quaternion
-- @param #cc.Quaternion quaternion
-- @param #cc.Quaternion quaternion
-- @param #cc.Quaternion quaternion
-- @param #float float
-- @param #cc.Quaternion quaternion
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Quaternion] identity 
-- @param self
-- @return Quaternion#Quaternion ret (return value: cc.Quaternion)
        
--------------------------------
-- @overload self, float, float, float, float         
-- @overload self         
-- @overload self, float         
-- @overload self, mat4_table         
-- @overload self, vec3_table, float         
-- @function [parent=#Quaternion] Quaternion
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @return void#void ret (retunr value: void)

return nil
