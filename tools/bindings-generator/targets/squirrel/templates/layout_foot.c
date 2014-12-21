extern int register_all_${prefix}(HSQUIRRELVM vm)
{
	sq_pushstring(vm, _SC("${target_ns}"), -1);
	sq_newtable(vm);

	#for jsclass in $sorted_classes
	#if $in_listed_classes(jsclass)
	squirrel_register_${prefix}_${jsclass}(vm);
	#end if
	#end for

	sq_newslot(vm, 1, SQFalse);

	return 1;
}

#if $macro_judgement
\#endif
#end if
