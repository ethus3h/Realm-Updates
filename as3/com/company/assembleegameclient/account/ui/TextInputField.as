// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.account.ui.TextInputField

package com.company.assembleegameclient.account.ui{
    import flash.display.Sprite;
    import kabam.rotmg.text.view.TextFieldDisplayConcrete;
    import com.company.ui.BaseSimpleText;
    import kabam.rotmg.text.view.stringBuilder.LineBuilder;
    import flash.filters.DropShadowFilter;
    import flash.events.Event;
    import kabam.rotmg.text.view.stringBuilder.StaticStringBuilder;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;

    public class TextInputField extends Sprite {

        public static const HEIGHT:int = 88;
        public static const BACKGROUND_COLOR:uint = 0x333333;
        public static const ERROR_BORDER_COLOR:uint = 16549442;
        public static const NORMAL_BORDER_COLOR:uint = 0x454545;

        public var nameText_:TextFieldDisplayConcrete;
        public var inputText_:BaseSimpleText;
        public var errorText_:TextFieldDisplayConcrete;
        private var textInputFieldWidth:int = 0;

        public function TextInputField(_arg1:String, _arg2:Boolean, _arg3:int=0){
            this.textInputFieldWidth = _arg3;
            this.nameText_ = new TextFieldDisplayConcrete().setSize(18).setColor(0xB3B3B3);
            if (_arg3 != 0){
                this.nameText_.setTextWidth(_arg3);
                this.nameText_.setMultiLine(true);
                this.nameText_.setWordWrap(true);
                this.nameText_.textChanged.add(this.textFieldWasCreatedHandler);
            };
            this.nameText_.setBold(true);
            this.nameText_.setStringBuilder(new LineBuilder().setParams(_arg1));
            this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.nameText_);
            this.inputText_ = new BaseSimpleText(20, 0xB3B3B3, true, 238, 30);
            this.inputText_.y = 30;
            this.inputText_.x = 6;
            this.inputText_.border = false;
            this.inputText_.displayAsPassword = _arg2;
            this.inputText_.updateMetrics();
            addChild(this.inputText_);
            this.drawInputBorders(false);
            this.inputText_.addEventListener(Event.CHANGE, this.onInputChange);
            this.errorText_ = new TextFieldDisplayConcrete().setSize(12).setColor(16549442);
            this.errorText_.y = (this.inputText_.y + 32);
            this.errorText_.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.errorText_);
        }

        public function text():String{
            return (this.inputText_.text);
        }

        public function clearText():void{
            this.inputText_.text = "";
        }

        public function setError(_arg1:String, _arg2:Object=null):void{
            this.errorText_.setStringBuilder(new LineBuilder().setParams(_arg1, _arg2));
        }

        public function clearError():void{
            this.errorText_.setStringBuilder(new StaticStringBuilder(""));
        }

        private function drawInputBorders(_arg1:Boolean):void{
            var _local2:uint = ((_arg1) ? ERROR_BORDER_COLOR : NORMAL_BORDER_COLOR);
            graphics.clear();
            graphics.lineStyle(2, _local2, 1, false, LineScaleMode.NORMAL, CapsStyle.ROUND, JointStyle.ROUND);
            graphics.beginFill(BACKGROUND_COLOR, 1);
            graphics.drawRect(0, this.inputText_.y, 238, 30);
            graphics.endFill();
            graphics.lineStyle();
        }

        public function setErrorHighlight(_arg1:Boolean):void{
            this.drawInputBorders(_arg1);
        }

        private function textFieldWasCreatedHandler():void{
            if (this.textInputFieldWidth != 0){
                this.inputText_.y = (this.nameText_.getTextHeight() + 8);
                this.drawInputBorders(false);
            };
        }

        public function onInputChange(_arg1:Event):void{
            this.errorText_.setStringBuilder(new StaticStringBuilder(""));
        }


    }
}//package com.company.assembleegameclient.account.ui

