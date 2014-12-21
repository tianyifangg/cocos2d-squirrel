
--------------------------------
-- @module ParallaxNode
-- @extend Node
-- @parent_module cc

--------------------------------
-- @function [parent=#ParallaxNode] addChild 
-- @param self
-- @param #cc.Node node
-- @param #int int
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ParallaxNode] create 
-- @param self
-- @return ParallaxNode#ParallaxNode ret (return value: cc.ParallaxNode)
        
--------------------------------
-- @overload self, cc.Node, int, string         
-- @overload self, cc.Node, int, int         
-- @function [parent=#ParallaxNode] addChild
-- @param self
-- @param #cc.Node node
-- @param #int int
-- @param #int int
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#ParallaxNode] removeAllChildrenWithCleanup 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ParallaxNode] visit 
-- @param self
-- @param #cc.Renderer renderer
-- @param #mat4_table mat4
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ParallaxNode] removeChild 
-- @param self
-- @param #cc.Node node
-- @param #bool bool
-- @return void#void ret (return value: void)
        
return nil
