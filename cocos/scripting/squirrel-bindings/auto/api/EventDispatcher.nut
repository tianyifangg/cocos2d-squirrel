
--------------------------------
-- @module EventDispatcher
-- @extend Ref
-- @parent_module cc

--------------------------------
-- @function [parent=#EventDispatcher] pauseEventListenersForTarget 
-- @param self
-- @param #cc.Node node
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#EventDispatcher] addEventListenerWithSceneGraphPriority 
-- @param self
-- @param #cc.EventListener eventlistener
-- @param #cc.Node node
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#EventDispatcher] setEnabled 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#EventDispatcher] addEventListenerWithFixedPriority 
-- @param self
-- @param #cc.EventListener eventlistener
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#EventDispatcher] removeEventListener 
-- @param self
-- @param #cc.EventListener eventlistener
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#EventDispatcher] resumeEventListenersForTarget 
-- @param self
-- @param #cc.Node node
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#EventDispatcher] removeEventListenersForTarget 
-- @param self
-- @param #cc.Node node
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#EventDispatcher] setPriority 
-- @param self
-- @param #cc.EventListener eventlistener
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#EventDispatcher] addCustomEventListener 
-- @param self
-- @param #string str
-- @param #function func
-- @return EventListenerCustom#EventListenerCustom ret (return value: cc.EventListenerCustom)
        
--------------------------------
-- @function [parent=#EventDispatcher] dispatchEvent 
-- @param self
-- @param #cc.Event event
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#EventDispatcher] removeAllEventListeners 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#EventDispatcher] removeCustomEventListeners 
-- @param self
-- @param #string str
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#EventDispatcher] isEnabled 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#EventDispatcher] removeEventListenersForType 
-- @param self
-- @param #int type
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#EventDispatcher] EventDispatcher 
-- @param self
-- @return void#void ret (return value: void)
        
return nil
