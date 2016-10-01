// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//org.hamcrest.object.equalTo

package org.hamcrest.object{
    import org.hamcrest.Matcher;

    public function equalTo(_arg1:Object):Matcher{
        return (new IsEqualMatcher(_arg1));
    }

}//package org.hamcrest.object

