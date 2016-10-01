// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.questrewards.controller.QuestRedeemCompleteSignal

package kabam.rotmg.questrewards.controller{
    import org.osflash.signals.Signal;
    import kabam.rotmg.messaging.impl.incoming.QuestRedeemResponse;

    public class QuestRedeemCompleteSignal extends Signal {

        public function QuestRedeemCompleteSignal(){
            super(QuestRedeemResponse);
        }

    }
}//package kabam.rotmg.questrewards.controller

