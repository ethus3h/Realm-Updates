﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.game.view.CreditDisplayMediator

package kabam.rotmg.game.view{
    import robotlegs.bender.bundles.mvcs.Mediator;
    import kabam.rotmg.core.model.PlayerModel;
    import kabam.rotmg.account.core.signals.OpenMoneyWindowSignal;

    public class CreditDisplayMediator extends Mediator {

        [Inject]
        public var view:CreditDisplay;
        [Inject]
        public var model:PlayerModel;
        [Inject]
        public var openMoneyWindow:OpenMoneyWindowSignal;


        override public function initialize():void{
            this.model.creditsChanged.add(this.onCreditsChanged);
            this.model.fameChanged.add(this.onFameChanged);
            this.model.tokensChanged.add(this.onTokensChanged);
            this.view.openAccountDialog.add(this.onOpenAccountDialog);
        }

        override public function destroy():void{
            this.model.creditsChanged.remove(this.onCreditsChanged);
            this.model.fameChanged.remove(this.onFameChanged);
            this.view.openAccountDialog.remove(this.onOpenAccountDialog);
        }

        private function onCreditsChanged(_arg1:int):void{
            this.view.draw(_arg1, this.model.getFame());
        }

        private function onFameChanged(_arg1:int):void{
            this.view.draw(this.model.getCredits(), _arg1);
        }

        private function onTokensChanged(_arg1:int):void{
            this.view.draw(this.model.getCredits(), this.model.getFame(), _arg1);
        }

        private function onOpenAccountDialog():void{
            this.openMoneyWindow.dispatch();
        }


    }
}//package kabam.rotmg.game.view

