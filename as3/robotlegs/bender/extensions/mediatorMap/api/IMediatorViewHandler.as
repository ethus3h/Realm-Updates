// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.extensions.mediatorMap.api.IMediatorViewHandler

package robotlegs.bender.extensions.mediatorMap.api{
    import robotlegs.bender.extensions.viewManager.api.*;

    public interface IMediatorViewHandler extends IViewHandler {

        function addMapping(_arg1:IMediatorMapping):void;
        function removeMapping(_arg1:IMediatorMapping):void;
        function handleItem(_arg1:Object, _arg2:Class):void;

    }
}//package robotlegs.bender.extensions.mediatorMap.api

