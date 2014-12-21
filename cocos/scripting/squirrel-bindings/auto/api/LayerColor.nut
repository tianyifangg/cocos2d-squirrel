
--------------------------------
-- @module LayerColor
-- @extend Layer,BlendProtocol
-- @parent_module cc

--------------------------------
-- @function [parent=#LayerColor] changeWidthAndHeight 
-- @param self
-- @param #float float
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#LayerColor] changeHeight 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#LayerColor] changeWidth 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, color4b_table, float, float         
-- @overload self         
-- @overload self, color4b_table         
-- @function [parent=#LayerColor] create
-- @param self
-- @param #color4b_table color4b
-- @param #float float
-- @param #float float
-- @return LayerColor#LayerColor ret (retunr value: cc.LayerColor)

--------------------------------
-- @function [parent=#LayerColor] draw 
-- @param self
-- @param #cc.Renderer renderer
-- @param #mat4_table mat4
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#LayerColor] getDescription 
-- @param self
-- @return string#string ret (return value: string)
        
--------------------------------
-- @function [parent=#LayerColor] setContentSize 
-- @param self
-- @param #size_table size
-- @return void#void ret (return value: void)
        
return nil
