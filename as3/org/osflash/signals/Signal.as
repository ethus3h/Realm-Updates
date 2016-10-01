// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//org.osflash.signals.Signal

package org.osflash.signals{
    public class Signal extends OnceSignal implements ISignal {

        public function Signal(... _args){
            var _local1:Array = (((((_args.length == 1)) && ((_args[0] is Array)))) ? _args[0] : _args);
            super(_local1);
        }

        public function add(_arg1:Function):ISlot{
            return (registerListener(_arg1));
        }


    }
}//package org.osflash.signals

