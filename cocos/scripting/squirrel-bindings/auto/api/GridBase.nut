
--------------------------------
-- @module GridBase
-- @extend Ref
-- @parent_module cc

--------------------------------
-- @function [parent=#GridBase] setGridSize 
-- @param self
-- @param #size_table size
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#GridBase] afterBlit 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#GridBase] afterDraw 
-- @param self
-- @param #cc.Node node
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#GridBase] beforeDraw 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#GridBase] calculateVertexPoints 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#GridBase] isTextureFlipped 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#GridBase] getGridSize 
-- @param self
-- @return size_table#size_table ret (return value: size_table)
        
--------------------------------
-- @function [parent=#GridBase] getStep 
-- @param self
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#GridBase] set2DProjection 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#GridBase] setStep 
-- @param self
-- @param #vec2_table vec2
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#GridBase] setTextureFlipped 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#GridBase] blit 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#GridBase] setActive 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#GridBase] getReuseGrid 
-- @param self
-- @return int#int ret (return value: int)
        
--------------------------------
-- @overload self, size_table         
-- @overload self, size_table, cc.Texture2D, bool         
-- @function [parent=#GridBase] initWithSize
-- @param self
-- @param #size_table size
-- @param #cc.Texture2D texture2d
-- @param #bool bool
-- @return bool#bool ret (retunr value: bool)

--------------------------------
-- @function [parent=#GridBase] beforeBlit 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#GridBase] setReuseGrid 
-- @param self
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#GridBase] isActive 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#GridBase] reuse 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, size_table         
-- @overload self, size_table, cc.Texture2D, bool         
-- @function [parent=#GridBase] create
-- @param self
-- @param #size_table size
-- @param #cc.Texture2D texture2d
-- @param #bool bool
-- @return GridBase#GridBase ret (retunr value: cc.GridBase)

return nil
