﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//org.hamcrest.core.not

package org.hamcrest.core{
    import org.hamcrest.Matcher;
    import org.hamcrest.object.equalTo;

    public function not(_arg1:Object):Matcher{
        if ((_arg1 is Matcher)){
            return (new IsNotMatcher((_arg1 as Matcher)));
        };
        return (not(equalTo(_arg1)));
    }

}//package org.hamcrest.core

