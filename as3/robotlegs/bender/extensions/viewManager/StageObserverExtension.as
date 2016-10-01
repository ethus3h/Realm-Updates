﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.extensions.viewManager.StageObserverExtension

package robotlegs.bender.extensions.viewManager{
    import robotlegs.bender.extensions.viewManager.impl.StageObserver;
    import robotlegs.bender.framework.impl.UID;
    import org.swiftsuspenders.Injector;
    import robotlegs.bender.framework.api.IContext;
    import robotlegs.bender.extensions.viewManager.impl.ContainerRegistry;
    import robotlegs.bender.framework.api.*;

    public class StageObserverExtension implements IExtension {

        private static var _stageObserver:StageObserver;
        private static var _installCount:uint;

        private const _uid:String = UID.create(StageObserverExtension);

        private var _injector:Injector;


        public function extend(_arg1:IContext):void{
            _installCount++;
            this._injector = _arg1.injector;
            _arg1.lifecycle.whenInitializing(this.whenInitializing);
            _arg1.lifecycle.whenDestroying(this.whenDestroying);
        }

        public function toString():String{
            return (this._uid);
        }

        private function whenInitializing():void{
            var _local1:ContainerRegistry;
            if (_stageObserver == null){
                _local1 = this._injector.getInstance(ContainerRegistry);
                _stageObserver = new StageObserver(_local1);
            };
        }

        private function whenDestroying():void{
            _installCount--;
            if (_installCount == 0){
                _stageObserver.destroy();
                _stageObserver = null;
            };
        }


    }
}//package robotlegs.bender.extensions.viewManager

