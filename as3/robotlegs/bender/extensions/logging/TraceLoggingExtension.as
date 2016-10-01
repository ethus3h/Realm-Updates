// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.extensions.logging.TraceLoggingExtension

package robotlegs.bender.extensions.logging{
    import robotlegs.bender.framework.impl.UID;
    import robotlegs.bender.extensions.logging.impl.TraceLogTarget;
    import robotlegs.bender.framework.api.IContext;
    import robotlegs.bender.framework.api.*;

    public class TraceLoggingExtension implements IExtension {

        private const _uid:String = UID.create(TraceLoggingExtension);


        public function extend(_arg1:IContext):void{
            _arg1.addLogTarget(new TraceLogTarget(_arg1));
        }

        public function toString():String{
            return (this._uid);
        }


    }
}//package robotlegs.bender.extensions.logging

