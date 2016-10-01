// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.extensions.matching.TypeMatcherError

package robotlegs.bender.extensions.matching{
    public class TypeMatcherError extends Error {

        public static const EMPTY_MATCHER:String = "An empty matcher will create a filter which matches nothing. You should specify at least one condition for the filter.";

        public function TypeMatcherError(_arg1:String){
            super(_arg1);
        }

    }
}//package robotlegs.bender.extensions.matching

