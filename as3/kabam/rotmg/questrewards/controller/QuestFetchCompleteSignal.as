// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.questrewards.controller.QuestFetchCompleteSignal

package kabam.rotmg.questrewards.controller{
    import org.osflash.signals.Signal;
    import kabam.rotmg.messaging.impl.incoming.QuestFetchResponse;

    public class QuestFetchCompleteSignal extends Signal {

        public function QuestFetchCompleteSignal(){
            super(QuestFetchResponse);
        }

    }
}//package kabam.rotmg.questrewards.controller

