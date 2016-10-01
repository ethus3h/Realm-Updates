﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.view.dialogs.PetItemFactory

package kabam.rotmg.pets.view.dialogs{
    import kabam.rotmg.pets.view.components.PetIconFactory;
    import kabam.rotmg.pets.view.components.PetIcon;
    import kabam.rotmg.pets.data.PetVO;

    public class PetItemFactory {

        [Inject]
        public var petIconFactory:PetIconFactory;


        public function create(_arg1:PetVO, _arg2:int):PetItem{
            var _local3:PetItem = new PetItem();
            var _local4:PetIcon = this.petIconFactory.create(_arg1, _arg2);
            _local3.setPetIcon(_local4);
            _local3.setSize(_arg2);
            _local3.setBackground(PetItem.REGULAR);
            return (_local3);
        }


    }
}//package kabam.rotmg.pets.view.dialogs

