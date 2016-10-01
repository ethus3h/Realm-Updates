// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//org.osflash.signals.natives.INativeDispatcher

package org.osflash.signals.natives{
    import flash.events.IEventDispatcher;
    import flash.events.Event;
    import org.osflash.signals.*;

    public interface INativeDispatcher extends IPrioritySignal {

        function get eventType():String;
        function get eventClass():Class;
        function get target():IEventDispatcher;
        function set target(_arg1:IEventDispatcher):void;
        function dispatchEvent(_arg1:Event):Boolean;

    }
}//package org.osflash.signals.natives

