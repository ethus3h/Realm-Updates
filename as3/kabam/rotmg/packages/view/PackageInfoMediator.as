﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.packages.view.PackageInfoMediator

package kabam.rotmg.packages.view{
    import robotlegs.bender.bundles.mvcs.Mediator;
    import kabam.rotmg.dialogs.control.CloseDialogsSignal;

    public class PackageInfoMediator extends Mediator {

        [Inject]
        public var view:PackageInfoDialog;
        [Inject]
        public var closeDialogs:CloseDialogsSignal;


        override public function initialize():void{
            this.view.closed.add(this.onClosed);
        }

        override public function destroy():void{
            this.view.closed.remove(this.onClosed);
        }

        private function onClosed():void{
            this.closeDialogs.dispatch();
        }


    }
}//package kabam.rotmg.packages.view

