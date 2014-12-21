
--------------------------------
-- @module MenuItem
-- @extend Node
-- @parent_module cc

--------------------------------
-- @function [parent=#MenuItem] setEnabled 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#MenuItem] activate 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#MenuItem] isEnabled 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#MenuItem] selected 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#MenuItem] isSelected 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#MenuItem] setCallback 
-- @param self
-- @param #function func
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#MenuItem] unselected 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#MenuItem] rect 
-- @param self
-- @return rect_table#rect_table ret (return value: rect_table)
        
--------------------------------
-- @overload self, function         
-- @overload self         
-- @function [parent=#MenuItem] create
-- @param self
-- @param #function func
-- @return MenuItem#MenuItem ret (retunr value: cc.MenuItem)

--------------------------------
-- @function [parent=#MenuItem] getDescription 
-- @param self
-- @return string#string ret (return value: string)
        
return nil
