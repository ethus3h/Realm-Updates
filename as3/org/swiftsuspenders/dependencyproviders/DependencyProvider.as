// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//org.swiftsuspenders.dependencyproviders.DependencyProvider

package org.swiftsuspenders.dependencyproviders{
    import org.swiftsuspenders.Injector;
    import flash.utils.Dictionary;

    public interface DependencyProvider {

        function apply(_arg1:Class, _arg2:Injector, _arg3:Dictionary):Object;
        function destroy():void;

    }
}//package org.swiftsuspenders.dependencyproviders

