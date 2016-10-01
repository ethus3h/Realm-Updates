﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.questrewards.view.QuestRewardsPanelMediator

package kabam.rotmg.questrewards.view{
    import robotlegs.bender.bundles.mvcs.Mediator;
    import kabam.rotmg.dialogs.control.OpenDialogNoModalSignal;
    import kabam.rotmg.dialogs.control.OpenDialogSignal;
    import flash.events.MouseEvent;
    import flash.events.KeyboardEvent;
    import com.company.assembleegameclient.parameters.Parameters;

    public class QuestRewardsPanelMediator extends Mediator {

        [Inject]
        public var view:QuestRewardsPanel;
        [Inject]
        public var openNoModalDialog:OpenDialogNoModalSignal;
        [Inject]
        public var openDialog:OpenDialogSignal;


        override public function initialize():void{
            this.view.init();
            if (QuestRewardsPanel.hasQuests()){
                if (!QuestRewardsContainer.modalIsOpen){
                    this.view.feedButton.addEventListener(MouseEvent.CLICK, this.onButtonLeftClick);
                    WebMain.STAGE.addEventListener(KeyboardEvent.KEY_DOWN, this.onKeyDown);
                }
                else {
                    QuestRewardsView.closed.add(this.enableInteract);
                };
            };
        }

        override public function destroy():void{
            QuestRewardsView.closed.remove(this.enableInteract);
            this.view.feedButton.removeEventListener(MouseEvent.CLICK, this.onButtonLeftClick);
            WebMain.STAGE.removeEventListener(KeyboardEvent.KEY_DOWN, this.onKeyDown);
            super.destroy();
        }

        protected function onButtonLeftClick(_arg1:MouseEvent):void{
            if (!QuestRewardsContainer.modalIsOpen){
                this.openNoModalDialog.dispatch(new QuestRewardsContainer());
                this.view.feedButton.removeEventListener(MouseEvent.CLICK, this.onButtonLeftClick);
                WebMain.STAGE.removeEventListener(KeyboardEvent.KEY_DOWN, this.onKeyDown);
                QuestRewardsView.closed.add(this.enableInteract);
            };
        }

        private function enableInteract():void{
            QuestRewardsView.closed.remove(this.enableInteract);
            this.view.feedButton.addEventListener(MouseEvent.CLICK, this.onButtonLeftClick);
            WebMain.STAGE.addEventListener(KeyboardEvent.KEY_DOWN, this.onKeyDown);
        }

        private function onKeyDown(_arg1:KeyboardEvent):void{
            if ((((_arg1.keyCode == Parameters.data_.interact)) && ((WebMain.STAGE.focus == null)))){
                this.onButtonLeftClick(null);
            };
        }


    }
}//package kabam.rotmg.questrewards.view

