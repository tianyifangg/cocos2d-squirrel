
--------------------------------
-- @module SpriteBatchNode
-- @extend Node,TextureProtocol
-- @parent_module cc

--------------------------------
-- @function [parent=#SpriteBatchNode] appendChild 
-- @param self
-- @param #cc.Sprite sprite
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] addSpriteWithoutQuad 
-- @param self
-- @param #cc.Sprite sprite
-- @param #int int
-- @param #int int
-- @return SpriteBatchNode#SpriteBatchNode ret (return value: cc.SpriteBatchNode)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] reorderBatch 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] lowestAtlasIndexInChild 
-- @param self
-- @param #cc.Sprite sprite
-- @return long#long ret (return value: long)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] atlasIndexForChild 
-- @param self
-- @param #cc.Sprite sprite
-- @param #int int
-- @return long#long ret (return value: long)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] setTextureAtlas 
-- @param self
-- @param #cc.TextureAtlas textureatlas
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] getTexture 
-- @param self
-- @return Texture2D#Texture2D ret (return value: cc.Texture2D)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] increaseAtlasCapacity 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] getTextureAtlas 
-- @param self
-- @return TextureAtlas#TextureAtlas ret (return value: cc.TextureAtlas)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] insertQuadFromSprite 
-- @param self
-- @param #cc.Sprite sprite
-- @param #long long
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] setTexture 
-- @param self
-- @param #cc.Texture2D texture2d
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] rebuildIndexInOrder 
-- @param self
-- @param #cc.Sprite sprite
-- @param #long long
-- @return long#long ret (return value: long)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] highestAtlasIndexInChild 
-- @param self
-- @param #cc.Sprite sprite
-- @return long#long ret (return value: long)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] removeChildAtIndex 
-- @param self
-- @param #long long
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] removeSpriteFromAtlas 
-- @param self
-- @param #cc.Sprite sprite
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] create 
-- @param self
-- @param #string str
-- @param #long long
-- @return SpriteBatchNode#SpriteBatchNode ret (return value: cc.SpriteBatchNode)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] createWithTexture 
-- @param self
-- @param #cc.Texture2D texture2d
-- @param #long long
-- @return SpriteBatchNode#SpriteBatchNode ret (return value: cc.SpriteBatchNode)
        
--------------------------------
-- @overload self, cc.Node, int, string         
-- @overload self, cc.Node, int, int         
-- @function [parent=#SpriteBatchNode] addChild
-- @param self
-- @param #cc.Node node
-- @param #int int
-- @param #int int
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#SpriteBatchNode] draw 
-- @param self
-- @param #cc.Renderer renderer
-- @param #mat4_table mat4
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] visit 
-- @param self
-- @param #cc.Renderer renderer
-- @param #mat4_table mat4
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] removeAllChildrenWithCleanup 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] sortAllChildren 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] removeChild 
-- @param self
-- @param #cc.Node node
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] reorderChild 
-- @param self
-- @param #cc.Node node
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#SpriteBatchNode] getDescription 
-- @param self
-- @return string#string ret (return value: string)
        
return nil
