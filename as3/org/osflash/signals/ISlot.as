// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//org.osflash.signals.ISlot

package org.osflash.signals{
    public interface ISlot {

        function get listener():Function;
        function set listener(_arg1:Function):void;
        function get params():Array;
        function set params(_arg1:Array):void;
        function get once():Boolean;
        function get priority():int;
        function get enabled():Boolean;
        function set enabled(_arg1:Boolean):void;
        function execute0():void;
        function execute1(_arg1:Object):void;
        function execute(_arg1:Array):void;
        function remove():void;

    }
}//package org.osflash.signals

