
--------------------------------
-- @module Sprite3D
-- @extend Node,BlendProtocol
-- @parent_module cc

--------------------------------
-- @function [parent=#Sprite3D] setCullFaceEnabled 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, cc.Texture2D         
-- @overload self, string         
-- @function [parent=#Sprite3D] setTexture
-- @param self
-- @param #string str
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Sprite3D] getLightMask 
-- @param self
-- @return unsigned int#unsigned int ret (return value: unsigned int)
        
--------------------------------
-- @function [parent=#Sprite3D] removeAllAttachNode 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Sprite3D] setBlendFunc 
-- @param self
-- @param #cc.BlendFunc blendfunc
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Sprite3D] getMesh 
-- @param self
-- @return Mesh#Mesh ret (return value: cc.Mesh)
        
--------------------------------
-- @function [parent=#Sprite3D] setCullFace 
-- @param self
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Sprite3D] setLightMask 
-- @param self
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Sprite3D] getBlendFunc 
-- @param self
-- @return BlendFunc#BlendFunc ret (return value: cc.BlendFunc)
        
--------------------------------
-- @function [parent=#Sprite3D] getMeshCount 
-- @param self
-- @return long#long ret (return value: long)
        
--------------------------------
-- @function [parent=#Sprite3D] getAABB 
-- @param self
-- @return AABB#AABB ret (return value: cc.AABB)
        
--------------------------------
-- @function [parent=#Sprite3D] removeAttachNode 
-- @param self
-- @param #string str
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Sprite3D] getSkeleton 
-- @param self
-- @return Skeleton3D#Skeleton3D ret (return value: cc.Skeleton3D)
        
--------------------------------
-- @function [parent=#Sprite3D] getMeshByIndex 
-- @param self
-- @param #int int
-- @return Mesh#Mesh ret (return value: cc.Mesh)
        
--------------------------------
-- @function [parent=#Sprite3D] getMeshByName 
-- @param self
-- @param #string str
-- @return Mesh#Mesh ret (return value: cc.Mesh)
        
--------------------------------
-- @function [parent=#Sprite3D] getMeshArrayByName 
-- @param self
-- @param #string str
-- @return array_table#array_table ret (return value: array_table)
        
--------------------------------
-- @function [parent=#Sprite3D] getAttachNode 
-- @param self
-- @param #string str
-- @return AttachNode#AttachNode ret (return value: cc.AttachNode)
        
--------------------------------
-- @overload self, string, string         
-- @overload self, string         
-- @function [parent=#Sprite3D] create
-- @param self
-- @param #string str
-- @param #string str
-- @return Sprite3D#Sprite3D ret (retunr value: cc.Sprite3D)

--------------------------------
-- @function [parent=#Sprite3D] getBoundingBox 
-- @param self
-- @return rect_table#rect_table ret (return value: rect_table)
        
--------------------------------
-- @function [parent=#Sprite3D] setGLProgramState 
-- @param self
-- @param #cc.GLProgramState glprogramstate
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Sprite3D] setGLProgram 
-- @param self
-- @param #cc.GLProgram glprogram
-- @return void#void ret (return value: void)
        
return nil