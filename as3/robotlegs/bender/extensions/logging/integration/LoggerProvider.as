﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.extensions.logging.integration.LoggerProvider

package robotlegs.bender.extensions.logging.integration{
    import robotlegs.bender.framework.api.IContext;
    import org.swiftsuspenders.Injector;
    import flash.utils.Dictionary;
    import org.swiftsuspenders.dependencyproviders.*;

    public class LoggerProvider implements DependencyProvider {

        private var _context:IContext;

        public function LoggerProvider(_arg1:IContext){
            this._context = _arg1;
        }

        public function apply(_arg1:Class, _arg2:Injector, _arg3:Dictionary):Object{
            return (this._context.getLogger(_arg1));
        }

        public function destroy():void{
        }


    }
}//package robotlegs.bender.extensions.logging.integration

