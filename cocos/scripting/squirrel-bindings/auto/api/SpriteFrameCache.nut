
--------------------------------
-- @module SpriteFrameCache
-- @extend Ref
-- @parent_module cc

--------------------------------
-- @function [parent=#SpriteFrameCache] getSpriteFrameByName 
-- @param self
-- @param #string str
-- @return SpriteFrame#SpriteFrame ret (return value: cc.SpriteFrame)
        
--------------------------------
-- @function [parent=#SpriteFrameCache] addSpriteFramesWithFileContent 
-- @param self
-- @param #string str
-- @param #cc.Texture2D texture2d
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, string, string         
-- @overload self, string         
-- @overload self, string, cc.Texture2D         
-- @function [parent=#SpriteFrameCache] addSpriteFramesWithFile
-- @param self
-- @param #string str
-- @param #cc.Texture2D texture2d
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#SpriteFrameCache] addSpriteFrame 
-- @param self
-- @param #cc.SpriteFrame spriteframe
-- @param #string str
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteFrameCache] removeUnusedSpriteFrames 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteFrameCache] removeSpriteFramesFromFile 
-- @param self
-- @param #string str
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteFrameCache] init 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#SpriteFrameCache] removeSpriteFrames 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteFrameCache] removeSpriteFramesFromTexture 
-- @param self
-- @param #cc.Texture2D texture2d
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteFrameCache] removeSpriteFramesFromFileContent 
-- @param self
-- @param #string str
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteFrameCache] removeSpriteFrameByName 
-- @param self
-- @param #string str
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteFrameCache] destroyInstance 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteFrameCache] getInstance 
-- @param self
-- @return SpriteFrameCache#SpriteFrameCache ret (return value: cc.SpriteFrameCache)
        
return nil
