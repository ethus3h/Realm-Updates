// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.view.AvailablePetsMediator

package kabam.rotmg.pets.view{
    import robotlegs.bender.bundles.mvcs.Mediator;
    import kabam.rotmg.pets.controller.NotifyActivePetUpdated;
    import kabam.rotmg.pets.data.PetVO;

    public class AvailablePetsMediator extends Mediator {

        [Inject]
        public var view:AvailablePetsView;
        [Inject]
        public var notifyActivePetUpdated:NotifyActivePetUpdated;


        override public function initialize():void{
            this.view.petSelected.add(this.onPetUpdated);
            this.view.init();
        }

        private function onPetUpdated(_arg1:PetVO):void{
            this.notifyActivePetUpdated.dispatch(_arg1);
        }

        override public function destroy():void{
        }


    }
}//package kabam.rotmg.pets.view

