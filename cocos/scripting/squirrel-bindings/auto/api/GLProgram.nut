
--------------------------------
-- @module GLProgram
-- @extend Ref
-- @parent_module cc

--------------------------------
-- @function [parent=#GLProgram] getFragmentShaderLog 
-- @param self
-- @return string#string ret (return value: string)
        
--------------------------------
-- @function [parent=#GLProgram] initWithByteArrays 
-- @param self
-- @param #char char
-- @param #char char
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#GLProgram] initWithFilenames 
-- @param self
-- @param #string str
-- @param #string str
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#GLProgram] getVertexShaderLog 
-- @param self
-- @return string#string ret (return value: string)
        
--------------------------------
-- @function [parent=#GLProgram] use 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#GLProgram] setUniformLocationWith1i 
-- @param self
-- @param #int int
-- @param #int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @overload self, mat4_table         
-- @overload self         
-- @function [parent=#GLProgram] setUniformsForBuiltins
-- @param self
-- @param #mat4_table mat4
-- @return void#void ret (retunr value: void)

--------------------------------
-- @function [parent=#GLProgram] updateUniforms 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#GLProgram] link 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#GLProgram] reset 
-- @param self
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#GLProgram] bindAttribLocation 
-- @param self
-- @param #string str
-- @param #unsigned int int
-- @return void#void ret (return value: void)
        
--------------------------------
-- @function [parent=#GLProgram] getAttribLocation 
-- @param self
-- @param #string str
-- @return int#int ret (return value: int)
        
--------------------------------
-- @function [parent=#GLProgram] createWithByteArrays 
-- @param self
-- @param #char char
-- @param #char char
-- @return GLProgram#GLProgram ret (return value: cc.GLProgram)
        
--------------------------------
-- @function [parent=#GLProgram] createWithFilenames 
-- @param self
-- @param #string str
-- @param #string str
-- @return GLProgram#GLProgram ret (return value: cc.GLProgram)
        
--------------------------------
-- @function [parent=#GLProgram] GLProgram 
-- @param self
-- @return void#void ret (return value: void)
        
return nil
