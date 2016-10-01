// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//org.swiftsuspenders.typedescriptions.InjectionPoint

package org.swiftsuspenders.typedescriptions{
    import flash.utils.Dictionary;
    import org.swiftsuspenders.Injector;

    public class InjectionPoint {

        public var next:InjectionPoint;
        public var last:InjectionPoint;
        public var injectParameters:Dictionary;


        public function applyInjection(_arg1:Object, _arg2:Class, _arg3:Injector):void{
        }


    }
}//package org.swiftsuspenders.typedescriptions

