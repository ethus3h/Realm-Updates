// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.extensions.commandCenter.dsl.ICommandMappingConfig

package robotlegs.bender.extensions.commandCenter.dsl{
    public interface ICommandMappingConfig {

        function withGuards(... _args):ICommandMappingConfig;
        function withHooks(... _args):ICommandMappingConfig;
        function once(_arg1:Boolean=true):ICommandMappingConfig;

    }
}//package robotlegs.bender.extensions.commandCenter.dsl

