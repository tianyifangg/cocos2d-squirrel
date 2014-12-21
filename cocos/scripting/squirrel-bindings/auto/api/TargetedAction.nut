
--------------------------------
-- @module TargetedAction
-- @extend ActionInterval
-- @parent_module cc

--------------------------------
-- @overload self         
-- @overload self         
-- @function [parent=#TargetedAction] getForcedTarget
-- @param self
-- @return Node#Node ret (retunr value: cc.Node)

--------------------------------
-- @function [parent=#TargetedAction] setForcedTarget 
-- @param self
-- @param #cc.Node node
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#TargetedAction] create 
-- @param self
-- @param #cc.Node node
-- @param #cc.FiniteTimeAction finitetimeaction
-- @return TargetedAction#TargetedAction ret (return value: cc.TargetedAction)
        
--------------------------------
-- @function [parent=#TargetedAction] startWithTarget 
-- @param self
-- @param #cc.Node node
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#TargetedAction] clone 
-- @param self
-- @return TargetedAction#TargetedAction ret (return value: cc.TargetedAction)
        
--------------------------------
-- @function [parent=#TargetedAction] stop 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#TargetedAction] reverse 
-- @param self
-- @return TargetedAction#TargetedAction ret (return value: cc.TargetedAction)
        
--------------------------------
-- @function [parent=#TargetedAction] update 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
return nil
