// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.framework.impl.safelyCallBack

package robotlegs.bender.framework.impl{
    public function safelyCallBack(_arg1:Function, _arg2:Object=null, _arg3:Object=null):void{
        if (_arg1.length == 0){
            (_arg1());
        }
        else {
            if (_arg1.length == 1){
                (_arg1(_arg2));
            }
            else {
                (_arg1(_arg2, _arg3));
            };
        };
    }

}//package robotlegs.bender.framework.impl

