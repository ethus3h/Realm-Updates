// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.questrewards.view.QuestRewardsContainer

package kabam.rotmg.questrewards.view{
    import flash.display.Sprite;
    import flash.events.Event;

    public class QuestRewardsContainer extends Sprite {

        public static var modalIsOpen:Boolean = false;

        public function QuestRewardsContainer():void{
            modalIsOpen = true;
            addEventListener(Event.REMOVED_FROM_STAGE, this.removedFromStage);
            super();
        }

        public function removedFromStage(_arg1:Event):void{
            modalIsOpen = false;
        }


    }
}//package kabam.rotmg.questrewards.view

