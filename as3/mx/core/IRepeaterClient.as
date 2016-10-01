// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//mx.core.IRepeaterClient

package mx.core{
    public interface IRepeaterClient {

        function get instanceIndices():Array;
        function set instanceIndices(_arg1:Array):void;
        function get isDocument():Boolean;
        function get repeaterIndices():Array;
        function set repeaterIndices(_arg1:Array):void;
        function get repeaters():Array;
        function set repeaters(_arg1:Array):void;
        function initializeRepeaterArrays(_arg1:IRepeaterClient):void;

    }
}//package mx.core

