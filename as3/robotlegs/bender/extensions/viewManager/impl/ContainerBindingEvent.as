// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.extensions.viewManager.impl.ContainerBindingEvent

package robotlegs.bender.extensions.viewManager.impl{
    import flash.events.Event;

    public class ContainerBindingEvent extends Event {

        public static const BINDING_EMPTY:String = "bindingEmpty";

        public function ContainerBindingEvent(_arg1:String){
            super(_arg1);
        }

        override public function clone():Event{
            return (new ContainerBindingEvent(type));
        }


    }
}//package robotlegs.bender.extensions.viewManager.impl

