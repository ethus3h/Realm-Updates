﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.view.dialogs.evolving.configuration.EvolveTransitionConfiguration

package kabam.rotmg.pets.view.dialogs.evolving.configuration{
    import flash.display.Sprite;
    import flash.display.DisplayObject;

    public class EvolveTransitionConfiguration {


        public static function makeBackground():DisplayObject{
            var _local1:Sprite = new Sprite();
            _local1.graphics.beginFill(0xFFFFFF);
            _local1.graphics.drawRect(0, 0, 262, 183);
            _local1.graphics.endFill();
            return (_local1);
        }


    }
}//package kabam.rotmg.pets.view.dialogs.evolving.configuration

