﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.extensions.eventDispatcher.EventDispatcherExtension

package robotlegs.bender.extensions.eventDispatcher{
    import robotlegs.bender.framework.impl.UID;
    import flash.events.IEventDispatcher;
    import flash.events.EventDispatcher;
    import robotlegs.bender.framework.api.IContext;
    import robotlegs.bender.framework.api.*;

    public class EventDispatcherExtension implements IExtension {

        private const _uid:String = UID.create(EventDispatcherExtension);

        private var _eventDispatcher:IEventDispatcher;

        public function EventDispatcherExtension(_arg1:IEventDispatcher=null){
            this._eventDispatcher = ((_arg1) || (new EventDispatcher()));
        }

        public function extend(_arg1:IContext):void{
            _arg1.injector.map(IEventDispatcher).toValue(this._eventDispatcher);
        }

        public function toString():String{
            return (this._uid);
        }


    }
}//package robotlegs.bender.extensions.eventDispatcher

