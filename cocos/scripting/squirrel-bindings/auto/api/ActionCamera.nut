
--------------------------------
-- @module ActionCamera
-- @extend ActionInterval
-- @parent_module cc

--------------------------------
-- @overload self, float, float, float         
-- @overload self, vec3_table         
-- @function [parent=#ActionCamera] setEye
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#ActionCamera] getEye 
-- @param self
-- @return vec3_table#vec3_table ret (return value: vec3_table)
        
--------------------------------
-- @function [parent=#ActionCamera] setUp 
-- @param self
-- @param #vec3_table vec3
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ActionCamera] getCenter 
-- @param self
-- @return vec3_table#vec3_table ret (return value: vec3_table)
        
--------------------------------
-- @function [parent=#ActionCamera] setCenter 
-- @param self
-- @param #vec3_table vec3
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ActionCamera] getUp 
-- @param self
-- @return vec3_table#vec3_table ret (return value: vec3_table)
        
--------------------------------
-- @function [parent=#ActionCamera] startWithTarget 
-- @param self
-- @param #cc.Node node
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ActionCamera] clone 
-- @param self
-- @return ActionCamera#ActionCamera ret (return value: cc.ActionCamera)
        
--------------------------------
-- @function [parent=#ActionCamera] reverse 
-- @param self
-- @return ActionCamera#ActionCamera ret (return value: cc.ActionCamera)
        
--------------------------------
-- @function [parent=#ActionCamera] ActionCamera 
-- @param self
-- @return void#void ret (return value: void)
        
return nil
