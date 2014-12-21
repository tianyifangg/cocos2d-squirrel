
--------------------------------
-- @module TextureCache
-- @extend Ref
-- @parent_module cc

--------------------------------
-- @function [parent=#TextureCache] reloadTexture 
-- @param self
-- @param #string str
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#TextureCache] unbindAllImageAsync 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#TextureCache] removeTextureForKey 
-- @param self
-- @param #string str
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#TextureCache] removeAllTextures 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#TextureCache] getDescription 
-- @param self
-- @return string#string ret (return value: string)
        
--------------------------------
-- @function [parent=#TextureCache] getCachedTextureInfo 
-- @param self
-- @return string#string ret (return value: string)
        
--------------------------------
-- @overload self, cc.Image, string         
-- @overload self, string         
-- @function [parent=#TextureCache] addImage
-- @param self
-- @param #cc.Image image
-- @param #string str
-- @return Texture2D#Texture2D ret (retunr value: cc.Texture2D)

--------------------------------
-- @function [parent=#TextureCache] unbindImageAsync 
-- @param self
-- @param #string str
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#TextureCache] getTextureForKey 
-- @param self
-- @param #string str
-- @return Texture2D#Texture2D ret (return value: cc.Texture2D)
        
--------------------------------
-- @function [parent=#TextureCache] removeUnusedTextures 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#TextureCache] removeTexture 
-- @param self
-- @param #cc.Texture2D texture2d
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#TextureCache] waitForQuit 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#TextureCache] TextureCache 
-- @param self
-- @return void#void ret (return value: void)
        
return nil
