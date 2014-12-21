\#include "base/ccConfig.h"
#if $macro_judgement
$macro_judgement
#end if 
\#ifndef __${prefix}_h__
\#define __${prefix}_h__

\#include <squirrel.h>

int register_all_${prefix}(HSQUIRRELVM vm);
