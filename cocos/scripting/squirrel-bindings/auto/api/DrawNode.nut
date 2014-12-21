
--------------------------------
-- @module DrawNode
-- @extend Node
-- @parent_module cc

--------------------------------
-- @function [parent=#DrawNode] drawLine 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #color4f_table color4f
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#DrawNode] drawPoints 
-- @param self
-- @param #vec2_table vec2
-- @param #unsigned int int
-- @param #color4f_table color4f
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, vec2_table, vec2_table, vec2_table, vec2_table, color4f_table         
-- @overload self, vec2_table, vec2_table, color4f_table         
-- @function [parent=#DrawNode] drawRect
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #color4f_table color4f
-- @return void#void ret (retunr value: void)

--------------------------------
-- @overload self, vec2_table, float, float, unsigned int, color4f_table         
-- @overload self, vec2_table, float, float, unsigned int, float, float, color4f_table         
-- @function [parent=#DrawNode] drawSolidCircle
-- @param self
-- @param #vec2_table vec2
-- @param #float float
-- @param #float float
-- @param #unsigned int int
-- @param #float float
-- @param #float float
-- @param #color4f_table color4f
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#DrawNode] onDrawGLPoint 
-- @param self
-- @param #mat4_table mat4
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#DrawNode] drawDot 
-- @param self
-- @param #vec2_table vec2
-- @param #float float
-- @param #color4f_table color4f
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#DrawNode] drawCatmullRom 
-- @param self
-- @param #point_table pointarray
-- @param #unsigned int int
-- @param #color4f_table color4f
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#DrawNode] drawSegment 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #float float
-- @param #color4f_table color4f
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#DrawNode] onDraw 
-- @param self
-- @param #mat4_table mat4
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, vec2_table, float, float, unsigned int, bool, color4f_table         
-- @overload self, vec2_table, float, float, unsigned int, bool, float, float, color4f_table         
-- @function [parent=#DrawNode] drawCircle
-- @param self
-- @param #vec2_table vec2
-- @param #float float
-- @param #float float
-- @param #unsigned int int
-- @param #bool bool
-- @param #float float
-- @param #float float
-- @param #color4f_table color4f
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#DrawNode] drawQuadBezier 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #unsigned int int
-- @param #color4f_table color4f
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#DrawNode] onDrawGLLine 
-- @param self
-- @param #mat4_table mat4
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#DrawNode] drawSolidPoly 
-- @param self
-- @param #vec2_table vec2
-- @param #unsigned int int
-- @param #color4f_table color4f
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#DrawNode] drawTriangle 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #color4f_table color4f
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#DrawNode] clear 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#DrawNode] drawCardinalSpline 
-- @param self
-- @param #point_table pointarray
-- @param #float float
-- @param #unsigned int int
-- @param #color4f_table color4f
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#DrawNode] drawSolidRect 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #color4f_table color4f
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#DrawNode] drawPoly 
-- @param self
-- @param #vec2_table vec2
-- @param #unsigned int int
-- @param #bool bool
-- @param #color4f_table color4f
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#DrawNode] drawPoint 
-- @param self
-- @param #vec2_table vec2
-- @param #float float
-- @param #color4f_table color4f
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#DrawNode] drawCubicBezier 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #unsigned int int
-- @param #color4f_table color4f
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#DrawNode] create 
-- @param self
-- @return DrawNode#DrawNode ret (return value: cc.DrawNode)
        
--------------------------------
-- @function [parent=#DrawNode] draw 
-- @param self
-- @param #cc.Renderer renderer
-- @param #mat4_table mat4
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
return nil
