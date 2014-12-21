
--------------------------------
-- @module MenuItemToggle
-- @extend MenuItem
-- @parent_module cc

--------------------------------
-- @function [parent=#MenuItemToggle] setSubItems 
-- @param self
-- @param #array_table array
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self         
-- @overload self         
-- @function [parent=#MenuItemToggle] getSubItems
-- @param self
-- @return array_table#array_table ret (retunr value: array_table)

--------------------------------
-- @function [parent=#MenuItemToggle] getSelectedIndex 
-- @param self
-- @return unsigned int#unsigned int ret (return value: unsigned int)
        
--------------------------------
-- @function [parent=#MenuItemToggle] addSubItem 
-- @param self
-- @param #cc.MenuItem menuitem
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#MenuItemToggle] getSelectedItem 
-- @param self
-- @return MenuItem#MenuItem ret (return value: cc.MenuItem)
        
--------------------------------
-- @function [parent=#MenuItemToggle] setSelectedIndex 
-- @param self
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, cc.MenuItem         
-- @overload self         
-- @function [parent=#MenuItemToggle] create
-- @param self
-- @param #cc.MenuItem menuitem
-- @return MenuItemToggle#MenuItemToggle ret (retunr value: cc.MenuItemToggle)

--------------------------------
-- @overload self, function, cc.MenuItem         
-- @overload self, function, array_table         
-- @function [parent=#MenuItemToggle] createWithCallback
-- @param self
-- @param #function func
-- @param #array_table array
-- @return MenuItemToggle#MenuItemToggle ret (retunr value: cc.MenuItemToggle)

--------------------------------
-- @function [parent=#MenuItemToggle] setEnabled 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#MenuItemToggle] activate 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#MenuItemToggle] unselected 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#MenuItemToggle] selected 
-- @param self
-- @return void#void ret (return value: void)
        
return nil
