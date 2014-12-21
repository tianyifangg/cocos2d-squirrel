
--------------------------------
-- @module AtlasNode
-- @extend Node,TextureProtocol
-- @parent_module cc

--------------------------------
-- @function [parent=#AtlasNode] updateAtlasValues 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#AtlasNode] getTexture 
-- @param self
-- @return Texture2D#Texture2D ret (return value: cc.Texture2D)
        
--------------------------------
-- @function [parent=#AtlasNode] setTextureAtlas 
-- @param self
-- @param #cc.TextureAtlas textureatlas
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#AtlasNode] getTextureAtlas 
-- @param self
-- @return TextureAtlas#TextureAtlas ret (return value: cc.TextureAtlas)
        
--------------------------------
-- @function [parent=#AtlasNode] getQuadsToDraw 
-- @param self
-- @return long#long ret (return value: long)
        
--------------------------------
-- @function [parent=#AtlasNode] setTexture 
-- @param self
-- @param #cc.Texture2D texture2d
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#AtlasNode] setQuadsToDraw 
-- @param self
-- @param #long long
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#AtlasNode] create 
-- @param self
-- @param #string str
-- @param #int int
-- @param #int int
-- @param #int int
-- @return AtlasNode#AtlasNode ret (return value: cc.AtlasNode)
        
--------------------------------
-- @function [parent=#AtlasNode] draw 
-- @param self
-- @param #cc.Renderer renderer
-- @param #mat4_table mat4
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#AtlasNode] isOpacityModifyRGB 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#AtlasNode] setColor 
-- @param self
-- @param #color3b_table color3b
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#AtlasNode] getColor 
-- @param self
-- @return color3b_table#color3b_table ret (return value: color3b_table)
        
--------------------------------
-- @function [parent=#AtlasNode] setOpacityModifyRGB 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#AtlasNode] setOpacity 
-- @param self
-- @param #unsigned char char
-- @return void#void ret (return value: void)
        
return nil
