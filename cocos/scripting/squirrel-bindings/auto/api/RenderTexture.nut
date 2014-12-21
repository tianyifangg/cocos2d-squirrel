
--------------------------------
-- @module RenderTexture
-- @extend Node
-- @parent_module cc

--------------------------------
-- @function [parent=#RenderTexture] setVirtualViewport 
-- @param self
-- @param #vec2_table vec2
-- @param #rect_table rect
-- @param #rect_table rect
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#RenderTexture] clearStencil 
-- @param self
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#RenderTexture] getClearDepth 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#RenderTexture] getClearStencil 
-- @param self
-- @return int#int ret (return value: int)
        
--------------------------------
-- @function [parent=#RenderTexture] end 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#RenderTexture] setClearStencil 
-- @param self
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#RenderTexture] setSprite 
-- @param self
-- @param #cc.Sprite sprite
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#RenderTexture] getSprite 
-- @param self
-- @return Sprite#Sprite ret (return value: cc.Sprite)
        
--------------------------------
-- @function [parent=#RenderTexture] isAutoDraw 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#RenderTexture] setKeepMatrix 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#RenderTexture] setClearFlags 
-- @param self
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#RenderTexture] begin 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, string, int, bool, function         
-- @overload self, string, bool, function         
-- @function [parent=#RenderTexture] saveToFile
-- @param self
-- @param #string str
-- @param #int format
-- @param #bool bool
-- @param #function func
-- @return bool#bool ret (retunr value: bool)

--------------------------------
-- @function [parent=#RenderTexture] setAutoDraw 
-- @param self
-- @param #bool bool
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#RenderTexture] setClearColor 
-- @param self
-- @param #color4f_table color4f
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#RenderTexture] endToLua 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, float, float, float, float, float         
-- @overload self, float, float, float, float         
-- @overload self, float, float, float, float, float, int         
-- @function [parent=#RenderTexture] beginWithClear
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #int int
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#RenderTexture] clearDepth 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#RenderTexture] getClearColor 
-- @param self
-- @return color4f_table#color4f_table ret (return value: color4f_table)
        
--------------------------------
-- @function [parent=#RenderTexture] clear 
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#RenderTexture] getClearFlags 
-- @param self
-- @return unsigned int#unsigned int ret (return value: unsigned int)
        
--------------------------------
-- @function [parent=#RenderTexture] newImage 
-- @param self
-- @return Image#Image ret (return value: cc.Image)
        
--------------------------------
-- @function [parent=#RenderTexture] setClearDepth 
-- @param self
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, int, int, int, unsigned int         
-- @overload self, int, int, int         
-- @function [parent=#RenderTexture] initWithWidthAndHeight
-- @param self
-- @param #int int
-- @param #int int
-- @param #int pixelformat
-- @param #unsigned int int
-- @return bool#bool ret (retunr value: bool)

--------------------------------
-- @overload self, int, int, int         
-- @overload self, int, int, int, unsigned int         
-- @overload self, int, int         
-- @function [parent=#RenderTexture] create
-- @param self
-- @param #int int
-- @param #int int
-- @param #int pixelformat
-- @param #unsigned int int
-- @return RenderTexture#RenderTexture ret (retunr value: cc.RenderTexture)

--------------------------------
-- @function [parent=#RenderTexture] draw 
-- @param self
-- @param #cc.Renderer renderer
-- @param #mat4_table mat4
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#RenderTexture] visit 
-- @param self
-- @param #cc.Renderer renderer
-- @param #mat4_table mat4
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#RenderTexture] RenderTexture 
-- @param self
-- @return void#void ret (return value: void)
        
return nil
