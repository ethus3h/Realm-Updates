// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//org.swiftsuspenders.reflection.Reflector

package org.swiftsuspenders.reflection{
    import org.swiftsuspenders.typedescriptions.TypeDescription;

    public interface Reflector {

        function getClass(_arg1:Object):Class;
        function getFQCN(_arg1, _arg2:Boolean=false):String;
        function typeImplements(_arg1:Class, _arg2:Class):Boolean;
        function describeInjections(_arg1:Class):TypeDescription;

    }
}//package org.swiftsuspenders.reflection

