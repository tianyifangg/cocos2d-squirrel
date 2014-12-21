
--------------------------------
-- @module Scene
-- @extend Node
-- @parent_module cc

--------------------------------
-- @function [parent=#Scene] getPhysicsWorld 
-- @param self
-- @return PhysicsWorld#PhysicsWorld ret (return value: cc.PhysicsWorld)
        
--------------------------------
-- @function [parent=#Scene] getCameras 
-- @param self
-- @return array_table#array_table ret (return value: array_table)
        
--------------------------------
-- @function [parent=#Scene] getLights 
-- @param self
-- @return array_table#array_table ret (return value: array_table)
        
--------------------------------
-- @function [parent=#Scene] render 
-- @param self
-- @param #cc.Renderer renderer
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Scene] createWithSize 
-- @param self
-- @param #size_table size
-- @return Scene#Scene ret (return value: cc.Scene)
        
--------------------------------
-- @function [parent=#Scene] create 
-- @param self
-- @return Scene#Scene ret (return value: cc.Scene)
        
--------------------------------
-- @function [parent=#Scene] createWithPhysics 
-- @param self
-- @return Scene#Scene ret (return value: cc.Scene)
        
--------------------------------
-- @overload self, cc.Node, int, string         
-- @overload self, cc.Node, int, int         
-- @function [parent=#Scene] addChild
-- @param self
-- @param #cc.Node node
-- @param #int int
-- @param #int int
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Scene] getDescription 
-- @param self
-- @return string#string ret (return value: string)
        
--------------------------------
-- @function [parent=#Scene] update 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
return nil
