
--------------------------------
-- @module MenuItemLabel
-- @extend MenuItem
-- @parent_module cc

--------------------------------
-- @function [parent=#MenuItemLabel] getDisabledColor 
-- @param self
-- @return color3b_table#color3b_table ret (return value: color3b_table)
        
--------------------------------
-- @function [parent=#MenuItemLabel] setString 
-- @param self
-- @param #string str
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#MenuItemLabel] setLabel 
-- @param self
-- @param #cc.Node node
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#MenuItemLabel] setDisabledColor 
-- @param self
-- @param #color3b_table color3b
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#MenuItemLabel] getLabel 
-- @param self
-- @return Node#Node ret (return value: cc.Node)
        
--------------------------------
-- @overload self, cc.Node         
-- @overload self, cc.Node, function         
-- @function [parent=#MenuItemLabel] create
-- @param self
-- @param #cc.Node node
-- @param #function func
-- @return MenuItemLabel#MenuItemLabel ret (retunr value: cc.MenuItemLabel)

--------------------------------
-- @function [parent=#MenuItemLabel] setEnabled 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#MenuItemLabel] activate 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#MenuItemLabel] unselected 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#MenuItemLabel] selected 
-- @param self
-- @return void#void ret (return value: void)
        
return nil
