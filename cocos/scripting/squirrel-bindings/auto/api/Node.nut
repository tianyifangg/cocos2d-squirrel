
--------------------------------
-- @module Node
-- @extend Ref
-- @parent_module cc

--------------------------------
-- @overload self, cc.Node, int         
-- @overload self, cc.Node         
-- @overload self, cc.Node, int, int         
-- @overload self, cc.Node, int, string         
-- @function [parent=#Node] addChild
-- @param self
-- @param #cc.Node node
-- @param #int int
-- @param #string str
-- @return void#void ret (retunr value: void)

--------------------------------
-- @overload self, cc.Component         
-- @overload self, string         
-- @function [parent=#Node] removeComponent
-- @param self
-- @param #string str
-- @return bool#bool ret (retunr value: bool)

--------------------------------
-- @function [parent=#Node] setPhysicsBody 
-- @param self
-- @param #cc.PhysicsBody physicsbody
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getDescription 
-- @param self
-- @return string#string ret (return value: string)
        
--------------------------------
-- @function [parent=#Node] setRotationSkewY 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setOpacityModifyRGB 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setCascadeOpacityEnabled 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self         
-- @overload self         
-- @function [parent=#Node] getChildren
-- @param self
-- @return array_table#array_table ret (retunr value: array_table)

--------------------------------
-- @function [parent=#Node] unschedule 
-- @param self
-- @param #string str
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] scheduleOnce 
-- @param self
-- @param #function func
-- @param #float float
-- @param #string str
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setOnExitCallback 
-- @param self
-- @param #function func
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] pause 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] convertToWorldSpaceAR 
-- @param self
-- @param #vec2_table vec2
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Node] isIgnoreAnchorPointForPosition 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Node] getChildByName 
-- @param self
-- @param #string str
-- @return Node#Node ret (return value: cc.Node)
        
--------------------------------
-- @function [parent=#Node] updateDisplayedOpacity 
-- @param self
-- @param #unsigned char char
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getCameraMask 
-- @param self
-- @return unsigned short#unsigned short ret (return value: unsigned short)
        
--------------------------------
-- @function [parent=#Node] setRotation 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setScaleZ 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setScaleY 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setScaleX 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setRotationSkewX 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] scheduleUpdateWithPriority 
-- @param self
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setonEnterTransitionDidFinishCallback 
-- @param self
-- @param #function func
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] removeFromPhysicsWorld 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] removeAllComponents 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getOpacity 
-- @param self
-- @return unsigned char#unsigned char ret (return value: unsigned char)
        
--------------------------------
-- @function [parent=#Node] setCameraMask 
-- @param self
-- @param #unsigned short short
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getTag 
-- @param self
-- @return int#int ret (return value: int)
        
--------------------------------
-- @function [parent=#Node] getGLProgram 
-- @param self
-- @return GLProgram#GLProgram ret (return value: cc.GLProgram)
        
--------------------------------
-- @function [parent=#Node] getNodeToWorldTransform 
-- @param self
-- @return mat4_table#mat4_table ret (return value: mat4_table)
        
--------------------------------
-- @function [parent=#Node] getPosition3D 
-- @param self
-- @return vec3_table#vec3_table ret (return value: vec3_table)
        
--------------------------------
-- @function [parent=#Node] removeChild 
-- @param self
-- @param #cc.Node node
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] convertToWorldSpace 
-- @param self
-- @param #vec2_table vec2
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Node] getScene 
-- @param self
-- @return Scene#Scene ret (return value: cc.Scene)
        
--------------------------------
-- @function [parent=#Node] getEventDispatcher 
-- @param self
-- @return EventDispatcher#EventDispatcher ret (return value: cc.EventDispatcher)
        
--------------------------------
-- @function [parent=#Node] setSkewX 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setGLProgramState 
-- @param self
-- @param #cc.GLProgramState glprogramstate
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setOnEnterCallback 
-- @param self
-- @param #function func
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setNormalizedPosition 
-- @param self
-- @param #vec2_table vec2
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setonExitTransitionDidStartCallback 
-- @param self
-- @param #function func
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] unscheduleAllCallbacks 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] convertTouchToNodeSpace 
-- @param self
-- @param #cc.Touch touch
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Node] removeAllChildren 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getNodeToParentAffineTransform 
-- @param self
-- @return AffineTransform#AffineTransform ret (return value: cc.AffineTransform)
        
--------------------------------
-- @function [parent=#Node] unscheduleUpdate 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] isCascadeOpacityEnabled 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Node] setParent 
-- @param self
-- @param #cc.Node node
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getName 
-- @param self
-- @return string#string ret (return value: string)
        
--------------------------------
-- @function [parent=#Node] resume 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getRotation3D 
-- @param self
-- @return vec3_table#vec3_table ret (return value: vec3_table)
        
--------------------------------
-- @function [parent=#Node] getNodeToParentTransform 
-- @param self
-- @return mat4_table#mat4_table ret (return value: mat4_table)
        
--------------------------------
-- @function [parent=#Node] convertTouchToNodeSpaceAR 
-- @param self
-- @param #cc.Touch touch
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Node] convertToNodeSpace 
-- @param self
-- @param #vec2_table vec2
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @overload self, function, float, string         
-- @overload self, function, string         
-- @overload self, function, float, unsigned int, float, string         
-- @function [parent=#Node] schedule
-- @param self
-- @param #function func
-- @param #float float
-- @param #unsigned int int
-- @param #float float
-- @param #string str
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Node] removeAllChildrenWithCleanup 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] removeFromParentAndCleanup 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getPhysicsBody 
-- @param self
-- @return PhysicsBody#PhysicsBody ret (return value: cc.PhysicsBody)
        
--------------------------------
-- @overload self, float, float         
-- @overload self, vec2_table         
-- @function [parent=#Node] setPosition
-- @param self
-- @param #float float
-- @param #float float
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Node] stopActionByTag 
-- @param self
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] reorderChild 
-- @param self
-- @param #cc.Node node
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] ignoreAnchorPointForPosition 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setSkewY 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setPositionZ 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setRotation3D 
-- @param self
-- @param #vec3_table vec3
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setPositionX 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setNodeToParentTransform 
-- @param self
-- @param #mat4_table mat4
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getAnchorPoint 
-- @param self
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Node] getNumberOfRunningActions 
-- @param self
-- @return long#long ret (return value: long)
        
--------------------------------
-- @function [parent=#Node] updateTransform 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] isVisible 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Node] getChildrenCount 
-- @param self
-- @return long#long ret (return value: long)
        
--------------------------------
-- @function [parent=#Node] setAnchorPoint 
-- @param self
-- @param #vec2_table vec2
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] convertToNodeSpaceAR 
-- @param self
-- @param #vec2_table vec2
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Node] addComponent 
-- @param self
-- @param #cc.Component component
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Node] runAction 
-- @param self
-- @param #cc.Action action
-- @return Action#Action ret (return value: cc.Action)
        
--------------------------------
-- @function [parent=#Node] isOpacityModifyRGB 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Node] scheduleUpdateWithPriorityLua 
-- @param self
-- @param #int int
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getRotation 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Node] getAnchorPointInPoints 
-- @param self
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @overload self         
-- @overload self, cc.Renderer, mat4_table, unsigned int         
-- @function [parent=#Node] visit
-- @param self
-- @param #cc.Renderer renderer
-- @param #mat4_table mat4
-- @param #unsigned int int
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Node] removeChildByName 
-- @param self
-- @param #string str
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getGLProgramState 
-- @param self
-- @return GLProgramState#GLProgramState ret (return value: cc.GLProgramState)
        
--------------------------------
-- @function [parent=#Node] setScheduler 
-- @param self
-- @param #cc.Scheduler scheduler
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] stopAllActions 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getSkewX 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Node] getSkewY 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Node] getDisplayedColor 
-- @param self
-- @return color3b_table#color3b_table ret (return value: color3b_table)
        
--------------------------------
-- @function [parent=#Node] getActionByTag 
-- @param self
-- @param #int int
-- @return Action#Action ret (return value: cc.Action)
        
--------------------------------
-- @function [parent=#Node] setName 
-- @param self
-- @param #string str
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, cc.AffineTransform         
-- @overload self, mat4_table         
-- @function [parent=#Node] setAdditionalTransform
-- @param self
-- @param #mat4_table mat4
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Node] getDisplayedOpacity 
-- @param self
-- @return unsigned char#unsigned char ret (return value: unsigned char)
        
--------------------------------
-- @function [parent=#Node] getLocalZOrder 
-- @param self
-- @return int#int ret (return value: int)
        
--------------------------------
-- @overload self         
-- @overload self         
-- @function [parent=#Node] getScheduler
-- @param self
-- @return Scheduler#Scheduler ret (retunr value: cc.Scheduler)

--------------------------------
-- @function [parent=#Node] getParentToNodeAffineTransform 
-- @param self
-- @return AffineTransform#AffineTransform ret (return value: cc.AffineTransform)
        
--------------------------------
-- @function [parent=#Node] getOrderOfArrival 
-- @param self
-- @return int#int ret (return value: int)
        
--------------------------------
-- @function [parent=#Node] setContentSize 
-- @param self
-- @param #size_table size
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setActionManager 
-- @param self
-- @param #cc.ActionManager actionmanager
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, float, float         
-- @overload self         
-- @function [parent=#Node] getPosition
-- @param self
-- @param #float float
-- @param #float float
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Node] setColor 
-- @param self
-- @param #color3b_table color3b
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] isRunning 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @overload self         
-- @overload self         
-- @function [parent=#Node] getParent
-- @param self
-- @return Node#Node ret (retunr value: cc.Node)

--------------------------------
-- @function [parent=#Node] getPositionZ 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Node] getPositionY 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Node] getPositionX 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Node] removeChildByTag 
-- @param self
-- @param #int int
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setPositionY 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getNodeToWorldAffineTransform 
-- @param self
-- @return AffineTransform#AffineTransform ret (return value: cc.AffineTransform)
        
--------------------------------
-- @function [parent=#Node] updateDisplayedColor 
-- @param self
-- @param #color3b_table color3b
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setVisible 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getParentToNodeTransform 
-- @param self
-- @return mat4_table#mat4_table ret (return value: mat4_table)
        
--------------------------------
-- @function [parent=#Node] isScheduled 
-- @param self
-- @param #string str
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Node] setGlobalZOrder 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, float, float         
-- @overload self, float         
-- @function [parent=#Node] setScale
-- @param self
-- @param #float float
-- @param #float float
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Node] getChildByTag 
-- @param self
-- @param #int int
-- @return Node#Node ret (return value: cc.Node)
        
--------------------------------
-- @function [parent=#Node] setOrderOfArrival 
-- @param self
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getScaleZ 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Node] getScaleY 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Node] getScaleX 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Node] setLocalZOrder 
-- @param self
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getWorldToNodeAffineTransform 
-- @param self
-- @return AffineTransform#AffineTransform ret (return value: cc.AffineTransform)
        
--------------------------------
-- @function [parent=#Node] setCascadeColorEnabled 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setOpacity 
-- @param self
-- @param #unsigned char char
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] cleanup 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getComponent 
-- @param self
-- @param #string str
-- @return Component#Component ret (return value: cc.Component)
        
--------------------------------
-- @function [parent=#Node] getContentSize 
-- @param self
-- @return size_table#size_table ret (return value: size_table)
        
--------------------------------
-- @function [parent=#Node] stopAllActionsByTag 
-- @param self
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getColor 
-- @param self
-- @return color3b_table#color3b_table ret (return value: color3b_table)
        
--------------------------------
-- @function [parent=#Node] getBoundingBox 
-- @param self
-- @return rect_table#rect_table ret (return value: rect_table)
        
--------------------------------
-- @function [parent=#Node] setEventDispatcher 
-- @param self
-- @param #cc.EventDispatcher eventdispatcher
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getGlobalZOrder 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @overload self         
-- @overload self, cc.Renderer, mat4_table, unsigned int         
-- @function [parent=#Node] draw
-- @param self
-- @param #cc.Renderer renderer
-- @param #mat4_table mat4
-- @param #unsigned int int
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Node] setUserObject 
-- @param self
-- @param #cc.Ref ref
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] removeFromParent 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] setPosition3D 
-- @param self
-- @param #vec3_table vec3
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] update 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] sortAllChildren 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getWorldToNodeTransform 
-- @param self
-- @return mat4_table#mat4_table ret (return value: mat4_table)
        
--------------------------------
-- @function [parent=#Node] setGLProgram 
-- @param self
-- @param #cc.GLProgram glprogram
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] getScale 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Node] getNormalizedPosition 
-- @param self
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Node] getRotationSkewX 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Node] getRotationSkewY 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Node] setTag 
-- @param self
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] isCascadeColorEnabled 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Node] scheduleUpdate 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Node] stopAction 
-- @param self
-- @param #cc.Action action
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self         
-- @overload self         
-- @function [parent=#Node] getActionManager
-- @param self
-- @return ActionManager#ActionManager ret (retunr value: cc.ActionManager)

--------------------------------
-- @function [parent=#Node] create 
-- @param self
-- @return Node#Node ret (return value: cc.Node)
        
return nil
