// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//org.swiftsuspenders.dependencyproviders.ClassProvider

package org.swiftsuspenders.dependencyproviders{
    import org.swiftsuspenders.utils.SsInternal;
    import org.swiftsuspenders.Injector;
    import flash.utils.Dictionary;

    public class ClassProvider implements DependencyProvider {

        private var _responseType:Class;

        public function ClassProvider(_arg1:Class){
            this._responseType = _arg1;
        }

        public function apply(_arg1:Class, _arg2:Injector, _arg3:Dictionary):Object{
            return (_arg2.SsInternal::instantiateUnmapped(this._responseType));
        }

        public function destroy():void{
        }


    }
}//package org.swiftsuspenders.dependencyproviders

