
--------------------------------
-- @module Menu
-- @extend Layer
-- @parent_module cc

--------------------------------
-- @function [parent=#Menu] setEnabled 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Menu] alignItemsVertically 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Menu] onTouchEnded 
-- @param self
-- @param #cc.Touch touch
-- @param #cc.Event event
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Menu] onTouchMoved 
-- @param self
-- @param #cc.Touch touch
-- @param #cc.Event event
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Menu] isEnabled 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Menu] onTouchCancelled 
-- @param self
-- @param #cc.Touch touch
-- @param #cc.Event event
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Menu] onTouchBegan 
-- @param self
-- @param #cc.Touch touch
-- @param #cc.Event event
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Menu] alignItemsHorizontally 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Menu] alignItemsHorizontallyWithPadding 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Menu] alignItemsVerticallyWithPadding 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, cc.MenuItem         
-- @overload self         
-- @function [parent=#Menu] create
-- @param self
-- @param #cc.MenuItem menuitem
-- @return Menu#Menu ret (retunr value: cc.Menu)

--------------------------------
-- @function [parent=#Menu] createWithArray 
-- @param self
-- @param #array_table array
-- @return Menu#Menu ret (return value: cc.Menu)
        
--------------------------------
-- @function [parent=#Menu] createWithItem 
-- @param self
-- @param #cc.MenuItem menuitem
-- @return Menu#Menu ret (return value: cc.Menu)
        
--------------------------------
-- @overload self, cc.Node, int         
-- @overload self, cc.Node         
-- @overload self, cc.Node, int, int         
-- @overload self, cc.Node, int, string         
-- @function [parent=#Menu] addChild
-- @param self
-- @param #cc.Node node
-- @param #int int
-- @param #string str
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Menu] isOpacityModifyRGB 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Menu] getDescription 
-- @param self
-- @return string#string ret (return value: string)
        
--------------------------------
-- @function [parent=#Menu] setOpacityModifyRGB 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Menu] removeChild 
-- @param self
-- @param #cc.Node node
-- @param #bool bool
-- @return void#void ret (return value: void)
        
return nil
