
--------------------------------
-- @module Vec2
-- @parent_module cc

--------------------------------
-- @function [parent=#Vec2] clamp 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, float         
-- @overload self, float, float         
-- @overload self, vec2_table         
-- @overload self, vec2_table, vec2_table         
-- @function [parent=#Vec2] set
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Vec2] getDistanceSq 
-- @param self
-- @param #vec2_table vec2
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Vec2] negate 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Vec2] distanceSquared 
-- @param self
-- @param #vec2_table vec2
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Vec2] isOne 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @overload self, vec2_table         
-- @overload self, float         
-- @function [parent=#Vec2] scale
-- @param self
-- @param #float float
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Vec2] getLength 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Vec2] cross 
-- @param self
-- @param #vec2_table vec2
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Vec2] rotateByAngle 
-- @param self
-- @param #vec2_table vec2
-- @param #float float
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Vec2] add 
-- @param self
-- @param #vec2_table vec2
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Vec2] fuzzyEquals 
-- @param self
-- @param #vec2_table vec2
-- @param #float float
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Vec2] getDistance 
-- @param self
-- @param #vec2_table vec2
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Vec2] isZero 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Vec2] getMidpoint 
-- @param self
-- @param #vec2_table vec2
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Vec2] getNormalized 
-- @param self
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Vec2] normalize 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Vec2] lengthSquared 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Vec2] lerp 
-- @param self
-- @param #vec2_table vec2
-- @param #float float
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Vec2] equals 
-- @param self
-- @param #vec2_table vec2
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Vec2] compOp 
-- @param self
-- @param #function func
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Vec2] unrotate 
-- @param self
-- @param #vec2_table vec2
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Vec2] getLengthSq 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Vec2] getPerp 
-- @param self
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Vec2] subtract 
-- @param self
-- @param #vec2_table vec2
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Vec2] distance 
-- @param self
-- @param #vec2_table vec2
-- @return float#float ret (return value: float)
        
--------------------------------
-- @overload self, vec2_table         
-- @overload self, vec2_table, float         
-- @function [parent=#Vec2] rotate
-- @param self
-- @param #vec2_table vec2
-- @param #float float
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#Vec2] getClampPoint 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @overload self, vec2_table         
-- @overload self         
-- @function [parent=#Vec2] getAngle
-- @param self
-- @param #vec2_table vec2
-- @return float#float ret (retunr value: float)

--------------------------------
-- @function [parent=#Vec2] setPoint 
-- @param self
-- @param #float float
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Vec2] smooth 
-- @param self
-- @param #vec2_table vec2
-- @param #float float
-- @param #float float
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Vec2] project 
-- @param self
-- @param #vec2_table vec2
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Vec2] getRPerp 
-- @param self
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Vec2] length 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Vec2] dot 
-- @param self
-- @param #vec2_table vec2
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Vec2] clamp 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Vec2] isLineParallel 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Vec2] isLineOverlap 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Vec2] angle 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @return float#float ret (return value: float)
        
--------------------------------
-- @function [parent=#Vec2] getIntersectPoint 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Vec2] isLineIntersect 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #float float
-- @param #float float
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Vec2] isSegmentOverlap 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Vec2] forAngle 
-- @param self
-- @param #float float
-- @return vec2_table#vec2_table ret (return value: vec2_table)
        
--------------------------------
-- @function [parent=#Vec2] isSegmentIntersect 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Vec2] add 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Vec2] subtract 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#Vec2] dot 
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @return float#float ret (return value: float)
        
--------------------------------
-- @overload self, float, float         
-- @overload self         
-- @overload self, float         
-- @overload self, vec2_table, vec2_table         
-- @function [parent=#Vec2] Vec2
-- @param self
-- @param #vec2_table vec2
-- @param #vec2_table vec2
-- @return void#void ret (retunr value: void)

return nil
