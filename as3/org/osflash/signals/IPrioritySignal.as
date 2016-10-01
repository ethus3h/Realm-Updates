// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//org.osflash.signals.IPrioritySignal

package org.osflash.signals{
    public interface IPrioritySignal extends ISignal {

        function addWithPriority(_arg1:Function, _arg2:int=0):ISlot;
        function addOnceWithPriority(_arg1:Function, _arg2:int=0):ISlot;

    }
}//package org.osflash.signals

