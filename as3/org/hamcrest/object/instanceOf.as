// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//org.hamcrest.object.instanceOf

package org.hamcrest.object{
    import org.hamcrest.Matcher;

    public function instanceOf(_arg1:Class):Matcher{
        return (new IsInstanceOfMatcher(_arg1));
    }

}//package org.hamcrest.object

