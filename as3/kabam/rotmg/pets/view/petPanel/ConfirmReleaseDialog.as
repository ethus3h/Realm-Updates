﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.view.petPanel.ConfirmReleaseDialog

package kabam.rotmg.pets.view.petPanel{
    import kabam.rotmg.pets.view.dialogs.PetDialog;
    import com.company.assembleegameclient.ui.dialogs.CloseDialogComponent;
    import kabam.rotmg.pets.data.PetVO;
    import kabam.rotmg.text.model.TextKey;
    import com.company.assembleegameclient.ui.dialogs.Dialog;
    import flash.events.Event;
    import org.osflash.signals.Signal;
    import com.company.assembleegameclient.ui.dialogs.*;

    public class ConfirmReleaseDialog extends PetDialog implements DialogCloser {

        private const closeDialogComponent:CloseDialogComponent = new CloseDialogComponent();

        [Inject]
        public var release:ReleasePetSignal;
        private var petVO:PetVO;

        public function ConfirmReleaseDialog(_arg1:PetVO){
            super(TextKey.PET_PANEL_CONFIRM_TITLE, TextKey.PET_PANEL_CONFIRM__SUBTEXT, TextKey.RELEASE, TextKey.FRAME_CANCEL, null);
            this.petVO = _arg1;
            this.addButtonBehavior();
        }

        override protected function setDialogWidth():int{
            return (400);
        }

        private function addButtonBehavior():void{
            this.closeDialogComponent.add(this, Dialog.RIGHT_BUTTON);
            this.closeDialogComponent.add(this, Dialog.LEFT_BUTTON);
            addEventListener(Dialog.LEFT_BUTTON, this.onLeftButton);
        }

        private function onLeftButton(_arg1:Event):void{
            removeEventListener(Dialog.LEFT_BUTTON, this.onLeftButton);
            this.release.dispatch(this.petVO.getID());
        }

        public function getCloseSignal():Signal{
            return (this.closeDialogComponent.getCloseSignal());
        }

        public function getPetVO():PetVO{
            return (this.petVO);
        }


    }
}//package kabam.rotmg.pets.view.petPanel

