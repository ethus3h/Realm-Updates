// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.extensions.viewManager.api.IViewManager

package robotlegs.bender.extensions.viewManager.api{
    import __AS3__.vec.Vector;
    import flash.display.DisplayObjectContainer;
    import flash.events.*;

    public interface IViewManager extends IEventDispatcher {

        function get containers():Vector.<DisplayObjectContainer>;
        function addContainer(_arg1:DisplayObjectContainer):void;
        function removeContainer(_arg1:DisplayObjectContainer):void;
        function addViewHandler(_arg1:IViewHandler):void;
        function removeViewHandler(_arg1:IViewHandler):void;
        function removeAllHandlers():void;

    }
}//package robotlegs.bender.extensions.viewManager.api

