﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.extensions.commandCenter.impl.CommandCenter

package robotlegs.bender.extensions.commandCenter.impl{
    import flash.utils.Dictionary;
    import robotlegs.bender.extensions.commandCenter.dsl.ICommandUnmapper;
    import robotlegs.bender.extensions.commandCenter.api.ICommandTrigger;
    import robotlegs.bender.extensions.commandCenter.dsl.ICommandMapper;
    import robotlegs.bender.extensions.commandCenter.api.*;

    public class CommandCenter implements ICommandCenter {

        private const _mappers:Dictionary = new Dictionary();
        private const NULL_UNMAPPER:ICommandUnmapper = new NullCommandUnmapper();


        public function map(_arg1:ICommandTrigger):ICommandMapper{
            return ((this._mappers[_arg1] = ((this._mappers[_arg1]) || (new CommandMapper(_arg1)))));
        }

        public function unmap(_arg1:ICommandTrigger):ICommandUnmapper{
            return (((this._mappers[_arg1]) || (this.NULL_UNMAPPER)));
        }


    }
}//package robotlegs.bender.extensions.commandCenter.impl

