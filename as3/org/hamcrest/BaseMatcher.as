// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//org.hamcrest.BaseMatcher

package org.hamcrest{
    import flash.errors.IllegalOperationError;

    public class BaseMatcher implements Matcher {


        public function describeMismatch(_arg1:Object, _arg2:Description):void{
            _arg2.appendText("was ").appendValue(_arg1);
        }

        public function matches(_arg1:Object):Boolean{
            throw (new IllegalOperationError("BaseMatcher#matches must be override by subclass"));
        }

        public function describeTo(_arg1:Description):void{
            throw (new IllegalOperationError("BaseMatcher#describeTo must be override by subclass"));
        }

        public function toString():String{
            return (StringDescription.toString(this));
        }


    }
}//package org.hamcrest

