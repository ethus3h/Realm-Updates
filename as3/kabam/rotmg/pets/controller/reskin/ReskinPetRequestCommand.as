﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.controller.reskin.ReskinPetRequestCommand

package kabam.rotmg.pets.controller.reskin{
    import robotlegs.bender.bundles.mvcs.Command;
    import kabam.rotmg.pets.data.ReskinPetVO;
    import kabam.lib.net.impl.SocketServer;
    import kabam.lib.net.api.MessageProvider;
    import kabam.rotmg.pets.data.PetFormModel;
    import kabam.rotmg.messaging.impl.ReskinPet;
    import kabam.rotmg.messaging.impl.GameServerConnection;

    public class ReskinPetRequestCommand extends Command {

        [Inject]
        public var vo:ReskinPetVO;
        [Inject]
        public var socketServer:SocketServer;
        [Inject]
        public var messages:MessageProvider;
        [Inject]
        public var reskinModel:PetFormModel;


        override public function execute():void{
            var _local1:ReskinPet;
            _local1 = (this.messages.require(GameServerConnection.PET_CHANGE_FORM_MSG) as ReskinPet);
            _local1.petInstanceId = this.reskinModel.getSelectedPet().getID();
            _local1.pickedNewPetType = this.reskinModel.getpetTypeFromSkinID(this.reskinModel.getSelectedSkin());
            _local1.item = this.reskinModel.slotObjectData;
            this.socketServer.sendMessage(_local1);
        }


    }
}//package kabam.rotmg.pets.controller.reskin

