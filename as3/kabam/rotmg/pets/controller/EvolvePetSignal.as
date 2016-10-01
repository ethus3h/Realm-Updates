// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.controller.EvolvePetSignal

package kabam.rotmg.pets.controller{
    import org.osflash.signals.Signal;
    import kabam.rotmg.messaging.impl.EvolvePetInfo;

    public class EvolvePetSignal extends Signal {

        public function EvolvePetSignal(){
            super(EvolvePetInfo);
        }

    }
}//package kabam.rotmg.pets.controller

