
--------------------------------
-- @module ProtectedNode
-- @extend Node
-- @parent_module cc

--------------------------------
-- @overload self, cc.Node, int         
-- @overload self, cc.Node         
-- @overload self, cc.Node, int, int         
-- @function [parent=#ProtectedNode] addProtectedChild
-- @param self
-- @param #cc.Node node
-- @param #int int
-- @param #int int
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#ProtectedNode] disableCascadeColor 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ProtectedNode] removeProtectedChildByTag 
-- @param self
-- @param #int int
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ProtectedNode] reorderProtectedChild 
-- @param self
-- @param #cc.Node node
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ProtectedNode] removeAllProtectedChildrenWithCleanup 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ProtectedNode] disableCascadeOpacity 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ProtectedNode] sortAllProtectedChildren 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ProtectedNode] getProtectedChildByTag 
-- @param self
-- @param #int int
-- @return Node#Node ret (return value: cc.Node)
        
--------------------------------
-- @function [parent=#ProtectedNode] removeProtectedChild 
-- @param self
-- @param #cc.Node node
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ProtectedNode] removeAllProtectedChildren 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ProtectedNode] create 
-- @param self
-- @return ProtectedNode#ProtectedNode ret (return value: cc.ProtectedNode)
        
--------------------------------
-- @function [parent=#ProtectedNode] visit 
-- @param self
-- @param #cc.Renderer renderer
-- @param #mat4_table mat4
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ProtectedNode] updateDisplayedOpacity 
-- @param self
-- @param #unsigned char char
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ProtectedNode] updateDisplayedColor 
-- @param self
-- @param #color3b_table color3b
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ProtectedNode] cleanup 
-- @param self
-- @return void#void ret (return value: void)
        
return nil
