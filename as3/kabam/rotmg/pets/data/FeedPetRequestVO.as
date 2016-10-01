// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.data.FeedPetRequestVO

package kabam.rotmg.pets.data{
    import kabam.rotmg.messaging.impl.data.SlotObjectData;

    public class FeedPetRequestVO implements IUpgradePetRequestVO {

        public var petInstanceId:int;
        public var slotObject:SlotObjectData;
        public var paymentTransType:int;

        public function FeedPetRequestVO(_arg1:int, _arg2:SlotObjectData, _arg3:int){
            this.petInstanceId = _arg1;
            this.slotObject = _arg2;
            this.paymentTransType = _arg3;
        }

    }
}//package kabam.rotmg.pets.data

