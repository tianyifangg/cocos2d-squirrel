
--------------------------------
-- @module Rect
-- @parent_module cc

--------------------------------
-- @function [parent=#Rect] getMaxX 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Rect] unionWithRect 
-- @param self
-- @param #rect_table rect
-- @return rect_table#rect_table ret (return value: rect_table)
        
--------------------------------
-- @function [parent=#Rect] equals 
-- @param self
-- @param #rect_table rect
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Rect] getMinY 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Rect] getMinX 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Rect] getMidY 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Rect] getMidX 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Rect] merge 
-- @param self
-- @param #rect_table rect
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Rect] intersectsRect 
-- @param self
-- @param #rect_table rect
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Rect] getMaxY 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Rect] containsPoint 
-- @param self
-- @param #vec2_table vec2
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Rect] setRect 
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, float, float, float, float         
-- @overload self         
-- @function [parent=#Rect] Rect
-- @param self
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float
-- @return void#void ret (retunr value: void)

return nil
