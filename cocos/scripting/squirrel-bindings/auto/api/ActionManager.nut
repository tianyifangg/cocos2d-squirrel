
--------------------------------
-- @module ActionManager
-- @extend Ref
-- @parent_module cc

--------------------------------
-- @function [parent=#ActionManager] getActionByTag 
-- @param self
-- @param #int int
-- @param #cc.Node node
-- @return Action#Action ret (return value: cc.Action)
        
--------------------------------
-- @function [parent=#ActionManager] removeActionByTag 
-- @param self
-- @param #int int
-- @param #cc.Node node
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ActionManager] removeAllActions 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ActionManager] addAction 
-- @param self
-- @param #cc.Action action
-- @param #cc.Node node
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ActionManager] resumeTarget 
-- @param self
-- @param #cc.Node node
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ActionManager] update 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ActionManager] pauseTarget 
-- @param self
-- @param #cc.Node node
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ActionManager] getNumberOfRunningActionsInTarget 
-- @param self
-- @param #cc.Node node
-- @return long#long ret (return value: long)
        
--------------------------------
-- @function [parent=#ActionManager] removeAllActionsFromTarget 
-- @param self
-- @param #cc.Node node
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ActionManager] resumeTargets 
-- @param self
-- @param #array_table array
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ActionManager] removeAction 
-- @param self
-- @param #cc.Action action
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ActionManager] removeAllActionsByTag 
-- @param self
-- @param #int int
-- @param #cc.Node node
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ActionManager] pauseAllRunningActions 
-- @param self
-- @return array_table#array_table ret (return value: array_table)
        
--------------------------------
-- @function [parent=#ActionManager] ActionManager 
-- @param self
-- @return void#void ret (return value: void)
        
return nil
