// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.extensions.mediatorMap.api.IMediatorFactory

package robotlegs.bender.extensions.mediatorMap.api{
    import flash.events.*;

    public interface IMediatorFactory extends IEventDispatcher {

        function getMediator(_arg1:Object, _arg2:IMediatorMapping):Object;
        function createMediators(_arg1:Object, _arg2:Class, _arg3:Array):Array;
        function removeMediators(_arg1:Object):void;
        function removeAllMediators():void;

    }
}//package robotlegs.bender.extensions.mediatorMap.api

