﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.data.FusePetRequestVO

package kabam.rotmg.pets.data{
    public class FusePetRequestVO implements IUpgradePetRequestVO {

        public var petInstanceIdOne:int;
        public var petInstanceIdTwo:int;
        public var paymentTransType:int;

        public function FusePetRequestVO(_arg1:int, _arg2:int, _arg3:int){
            this.petInstanceIdOne = _arg1;
            this.petInstanceIdTwo = _arg2;
            this.paymentTransType = _arg3;
        }

    }
}//package kabam.rotmg.pets.data

