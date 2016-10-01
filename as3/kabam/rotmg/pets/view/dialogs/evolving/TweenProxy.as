// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.view.dialogs.evolving.TweenProxy

package kabam.rotmg.pets.view.dialogs.evolving{
    import flash.display.DisplayObject;

    public class TweenProxy {

        protected var onComplete:Function;
        protected var target:DisplayObject;

        public function TweenProxy(_arg1:DisplayObject){
            this.target = _arg1;
        }

        public function start():void{
        }

        public function setOnComplete(_arg1:Function):void{
            this.onComplete = _arg1;
        }


    }
}//package kabam.rotmg.pets.view.dialogs.evolving

