// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap

package robotlegs.bender.extensions.eventCommandMap.api{
    import robotlegs.bender.extensions.commandCenter.dsl.ICommandMapper;
    import robotlegs.bender.extensions.commandCenter.dsl.ICommandUnmapper;

    public interface IEventCommandMap {

        function map(_arg1:String, _arg2:Class=null):ICommandMapper;
        function unmap(_arg1:String, _arg2:Class=null):ICommandUnmapper;

    }
}//package robotlegs.bender.extensions.eventCommandMap.api

