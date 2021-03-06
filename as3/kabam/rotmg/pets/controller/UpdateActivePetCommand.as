﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.controller.UpdateActivePetCommand

package kabam.rotmg.pets.controller{
    import robotlegs.bender.bundles.mvcs.Command;
    import kabam.rotmg.pets.data.PetsModel;
    import kabam.rotmg.pets.data.PetSlotsState;

    public class UpdateActivePetCommand extends Command {

        [Inject]
        public var instanceID:int;
        [Inject]
        public var petsModel:PetsModel;
        [Inject]
        public var notifyActivePetUpdated:NotifyActivePetUpdated;
        [Inject]
        public var petSlotsState:PetSlotsState;


        override public function execute():void{
            if (this.instanceID < 0){
                this.petsModel.removeActivePet();
            }
            else {
                this.petsModel.setActivePet(this.petsModel.getPet(this.instanceID));
            };
            this.petSlotsState.leftSlotPetVO = (((this.instanceID < 0)) ? null : this.petSlotsState.leftSlotPetVO = this.petsModel.getPet(this.instanceID));
        }


    }
}//package kabam.rotmg.pets.controller

