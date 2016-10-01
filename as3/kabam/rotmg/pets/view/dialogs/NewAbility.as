﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.view.dialogs.NewAbility

package kabam.rotmg.pets.view.dialogs{
    import com.company.assembleegameclient.ui.dialogs.CloseDialogComponent;
    import flash.display.DisplayObjectContainer;
    import kabam.rotmg.pets.view.components.FusionStrengthFactory;
    import kabam.rotmg.text.view.TextFieldDisplayConcrete;
    import com.company.assembleegameclient.ui.dialogs.Dialog;
    import flash.text.TextFieldAutoSize;
    import kabam.rotmg.text.view.stringBuilder.LineBuilder;
    import org.osflash.signals.Signal;
    import com.company.assembleegameclient.ui.dialogs.*;

    public class NewAbility extends PetDialog implements DialogCloser {

        private const closeDialogComponent:CloseDialogComponent = new CloseDialogComponent();
        private const abilityBox:DisplayObjectContainer = FusionStrengthFactory.makeRoundedBox();
        private const ABILITY_BOX_WIDTH:Number = NewAbility.abilityBox.width;
        private const ABILITY_BOX_HEIGHT:Number = NewAbility.abilityBox.height;

        public var ability:String;
        private var abilityText:TextFieldDisplayConcrete;

        public function NewAbility(_arg1:String){
            this.abilityText = new TextFieldDisplayConcrete();
            this.ability = _arg1;
            super("NewAbility.gratz", "NewAbility.text", "NewAbility.righteous", null, null);
            this.closeDialogComponent.add(this, Dialog.LEFT_BUTTON);
        }

        public function getAbility():String{
            return (this.ability);
        }

        override protected function makeUIAndAdd():void{
            this.abilityText.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(TextFieldDisplayConcrete.MIDDLE).setColor(9632505).setSize(16).setBold(true).setStringBuilder(new LineBuilder().setParams(this.ability));
            this.abilityBox.addChild(this.abilityText);
            addChild(this.abilityBox);
            box_.addChild(this.abilityBox);
            uiWaiter.pushArgs(this.abilityText.textChanged);
        }

        override protected function drawAdditionalUI():void{
            super.drawAdditionalUI();
            this.abilityText.x = (this.ABILITY_BOX_WIDTH / 2);
            this.abilityText.y = (this.ABILITY_BOX_HEIGHT / 2);
            this.abilityBox.x = ((WIDTH - this.abilityBox.width) / 2);
            this.abilityBox.y = (textText_.getBounds(box_).bottom + titleYPosition);
            leftButton.y = (this.abilityBox.getBounds(box_).bottom + buttonSpace);
        }

        public function getCloseSignal():Signal{
            return (this.closeDialogComponent.getCloseSignal());
        }


    }
}//package kabam.rotmg.pets.view.dialogs

