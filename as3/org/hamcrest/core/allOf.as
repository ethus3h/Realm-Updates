// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//org.hamcrest.core.allOf

package org.hamcrest.core{
    import org.hamcrest.Matcher;

    public function allOf(... _args):Matcher{
        var _local2:Array = _args;
        if ((((_args.length == 1)) && ((_args[0] is Array)))){
            _local2 = _args[0];
        };
        return (new AllOfMatcher(_local2));
    }

}//package org.hamcrest.core

