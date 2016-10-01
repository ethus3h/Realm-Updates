﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.screens.AccountLoadingScreen

package com.company.assembleegameclient.screens{
    import flash.display.Sprite;
    import kabam.rotmg.text.view.TextFieldDisplayConcrete;
    import com.company.rotmg.graphics.ScreenGraphic;
    import kabam.rotmg.text.view.stringBuilder.LineBuilder;
    import kabam.rotmg.text.model.TextKey;
    import flash.filters.DropShadowFilter;
    import flash.text.TextFieldAutoSize;
    import flash.events.Event;

    public class AccountLoadingScreen extends Sprite {

        private var loadingText_:TextFieldDisplayConcrete;

        public function AccountLoadingScreen(){
            addChild(new ScreenGraphic());
            this.loadingText_ = new TextFieldDisplayConcrete().setSize(30).setColor(0xFFFFFF).setBold(true);
            this.loadingText_.setStringBuilder(new LineBuilder().setParams(TextKey.LOADING_TEXT));
            this.loadingText_.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
            this.loadingText_.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(TextFieldDisplayConcrete.MIDDLE);
            addChild(this.loadingText_);
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        }

        protected function onAddedToStage(_arg1:Event):void{
            removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            this.loadingText_.x = (stage.stageWidth / 2);
            this.loadingText_.y = 550;
        }


    }
}//package com.company.assembleegameclient.screens
