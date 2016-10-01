// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.extensions.mediatorMap.api.IMediatorMapping

package robotlegs.bender.extensions.mediatorMap.api{
    import robotlegs.bender.extensions.matching.ITypeFilter;

    public interface IMediatorMapping {

        function get matcher():ITypeFilter;
        function get mediatorClass():Class;
        function get guards():Array;
        function get hooks():Array;
        function validate():void;

    }
}//package robotlegs.bender.extensions.mediatorMap.api

