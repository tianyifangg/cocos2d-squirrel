
--------------------------------
-- @module Director
-- @parent_module cc

--------------------------------
-- @function [parent=#Director] pause 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] setEventDispatcher 
-- @param self
-- @param #cc.EventDispatcher eventdispatcher
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] setContentScaleFactor 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] getContentScaleFactor 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Director] getWinSizeInPixels 
-- @param self
-- @return size_table#size_table ret (return value: size_table)
        
--------------------------------
-- @function [parent=#Director] getDeltaTime 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Director] setGLDefaultValues 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] setActionManager 
-- @param self
-- @param #cc.ActionManager actionmanager
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] setAlphaBlending 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] popToRootScene 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] loadMatrix 
-- @param self
-- @param #int matrix_stack_type
-- @param #mat4_table mat4
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] getNotificationNode 
-- @param self
-- @return Node#Node ret (return value: cc.Node)
        
--------------------------------
-- @function [parent=#Director] getWinSize 
-- @param self
-- @return size_table#size_table ret (return value: size_table)
        
--------------------------------
-- @function [parent=#Director] end 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] getTextureCache 
-- @param self
-- @return TextureCache#TextureCache ret (return value: cc.TextureCache)
        
--------------------------------
-- @function [parent=#Director] isSendCleanupToScene 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Director] getVisibleOrigin 
-- @param self
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Director] mainLoop 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] setDepthTest 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] getFrameRate 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Director] getSecondsPerFrame 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Director] resetMatrixStack 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] convertToUI 
-- @param self
-- @param #vec2_table vec2
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Director] pushMatrix 
-- @param self
-- @param #int matrix_stack_type
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] setDefaultValues 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] init 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Director] setScheduler 
-- @param self
-- @param #cc.Scheduler scheduler
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] startAnimation 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] getOpenGLView 
-- @param self
-- @return GLView#GLView ret (return value: cc.GLView)
        
--------------------------------
-- @function [parent=#Director] getRunningScene 
-- @param self
-- @return Scene#Scene ret (return value: cc.Scene)
        
--------------------------------
-- @function [parent=#Director] setViewport 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] stopAnimation 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] popToSceneStackLevel 
-- @param self
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] resume 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] isNextDeltaTimeZero 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Director] setOpenGLView 
-- @param self
-- @param #cc.GLView glview
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] convertToGL 
-- @param self
-- @param #vec2_table vec2
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Director] purgeCachedData 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] getTotalFrames 
-- @param self
-- @return unsigned int#unsigned int ret (return value: unsigned int)
        
--------------------------------
-- @function [parent=#Director] runWithScene 
-- @param self
-- @param #cc.Scene scene
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] setNotificationNode 
-- @param self
-- @param #cc.Node node
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] drawScene 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] getMatrix 
-- @param self
-- @param #int matrix_stack_type
-- @return mat4_table#mat4_table ret (return value: mat4_table)
        
--------------------------------
-- @function [parent=#Director] popScene 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] loadIdentityMatrix 
-- @param self
-- @param #int matrix_stack_type
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] isDisplayStats 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Director] setProjection 
-- @param self
-- @param #int projection
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] getConsole 
-- @param self
-- @return Console#Console ret (return value: cc.Console)
        
--------------------------------
-- @function [parent=#Director] multiplyMatrix 
-- @param self
-- @param #int matrix_stack_type
-- @param #mat4_table mat4
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] getZEye 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Director] setNextDeltaTimeZero 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] popMatrix 
-- @param self
-- @param #int matrix_stack_type
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] getVisibleSize 
-- @param self
-- @return size_table#size_table ret (return value: size_table)
        
--------------------------------
-- @function [parent=#Director] getScheduler 
-- @param self
-- @return Scheduler#Scheduler ret (return value: cc.Scheduler)
        
--------------------------------
-- @function [parent=#Director] pushScene 
-- @param self
-- @param #cc.Scene scene
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] getAnimationInterval 
-- @param self
-- @return double#double ret (return value: double)
        
--------------------------------
-- @function [parent=#Director] isPaused 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Director] setDisplayStats 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] getEventDispatcher 
-- @param self
-- @return EventDispatcher#EventDispatcher ret (return value: cc.EventDispatcher)
        
--------------------------------
-- @function [parent=#Director] replaceScene 
-- @param self
-- @param #cc.Scene scene
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] setAnimationInterval 
-- @param self
-- @param #double double
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Director] getActionManager 
-- @param self
-- @return ActionManager#ActionManager ret (return value: cc.ActionManager)
        
--------------------------------
-- @function [parent=#Director] getInstance 
-- @param self
-- @return Director#Director ret (return value: cc.Director)
        
return nil
