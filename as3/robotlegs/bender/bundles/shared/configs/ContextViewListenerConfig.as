﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.bundles.shared.configs.ContextViewListenerConfig

package robotlegs.bender.bundles.shared.configs{
    import flash.display.DisplayObjectContainer;
    import robotlegs.bender.extensions.viewManager.api.IViewManager;

    public class ContextViewListenerConfig {

        [Inject]
        public var contextView:DisplayObjectContainer;
        [Inject]
        public var viewManager:IViewManager;


        [PostConstruct]
        public function init():void{
            this.viewManager.addContainer(this.contextView);
        }


    }
}//package robotlegs.bender.bundles.shared.configs

