
--------------------------------
-- @module ParticleBatchNode
-- @extend Node,TextureProtocol
-- @parent_module cc

--------------------------------
-- @function [parent=#ParticleBatchNode] setTexture 
-- @param self
-- @param #cc.Texture2D texture2d
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ParticleBatchNode] disableParticle 
-- @param self
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ParticleBatchNode] getTexture 
-- @param self
-- @return Texture2D#Texture2D ret (return value: cc.Texture2D)
        
--------------------------------
-- @function [parent=#ParticleBatchNode] setTextureAtlas 
-- @param self
-- @param #cc.TextureAtlas textureatlas
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ParticleBatchNode] removeAllChildrenWithCleanup 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ParticleBatchNode] getTextureAtlas 
-- @param self
-- @return TextureAtlas#TextureAtlas ret (return value: cc.TextureAtlas)
        
--------------------------------
-- @function [parent=#ParticleBatchNode] insertChild 
-- @param self
-- @param #cc.ParticleSystem particlesystem
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ParticleBatchNode] removeChildAtIndex 
-- @param self
-- @param #int int
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ParticleBatchNode] create 
-- @param self
-- @param #string str
-- @param #int int
-- @return ParticleBatchNode#ParticleBatchNode ret (return value: cc.ParticleBatchNode)
        
--------------------------------
-- @function [parent=#ParticleBatchNode] createWithTexture 
-- @param self
-- @param #cc.Texture2D texture2d
-- @param #int int
-- @return ParticleBatchNode#ParticleBatchNode ret (return value: cc.ParticleBatchNode)
        
--------------------------------
-- @overload self, cc.Node, int, string         
-- @overload self, cc.Node, int, int         
-- @function [parent=#ParticleBatchNode] addChild
-- @param self
-- @param #cc.Node node
-- @param #int int
-- @param #int int
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#ParticleBatchNode] draw 
-- @param self
-- @param #cc.Renderer renderer
-- @param #mat4_table mat4
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ParticleBatchNode] visit 
-- @param self
-- @param #cc.Renderer renderer
-- @param #mat4_table mat4
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ParticleBatchNode] reorderChild 
-- @param self
-- @param #cc.Node node
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#ParticleBatchNode] removeChild 
-- @param self
-- @param #cc.Node node
-- @param #bool bool
-- @return void#void ret (return value: void)
        
return nil
