// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.controller.OpenCaretakerQueryDialogCommand

package kabam.rotmg.pets.controller{
    import kabam.rotmg.dialogs.control.OpenDialogSignal;
    import kabam.rotmg.pets.view.dialogs.CaretakerQueryDialog;

    public class OpenCaretakerQueryDialogCommand {

        [Inject]
        public var openDialog:OpenDialogSignal;


        public function execute():void{
            var _local1:CaretakerQueryDialog = new CaretakerQueryDialog();
            this.openDialog.dispatch(_local1);
        }


    }
}//package kabam.rotmg.pets.controller

