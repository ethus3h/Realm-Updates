﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.messaging.impl.outgoing.CheckCredits

package kabam.rotmg.messaging.impl.outgoing{
    import flash.utils.IDataOutput;

    public class CheckCredits extends OutgoingMessage {

        public function CheckCredits(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
        }

        override public function toString():String{
            return (formatToString("CHECKCREDITS"));
        }


    }
}//package kabam.rotmg.messaging.impl.outgoing

