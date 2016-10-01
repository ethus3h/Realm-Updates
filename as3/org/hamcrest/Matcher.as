// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//org.hamcrest.Matcher

package org.hamcrest{
    public interface Matcher extends SelfDescribing {

        function describeMismatch(_arg1:Object, _arg2:Description):void;
        function matches(_arg1:Object):Boolean;

    }
}//package org.hamcrest

