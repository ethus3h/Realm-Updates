// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.extensions.commandCenter.api.ICommandMapping

package robotlegs.bender.extensions.commandCenter.api{
    public interface ICommandMapping {

        function get commandClass():Class;
        function get guards():Array;
        function get hooks():Array;
        function get fireOnce():Boolean;
        function validate():void;
        function get next():ICommandMapping;
        function set next(_arg1:ICommandMapping):void;

    }
}//package robotlegs.bender.extensions.commandCenter.api

