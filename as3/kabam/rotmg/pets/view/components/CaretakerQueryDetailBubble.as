﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.view.components.CaretakerQueryDetailBubble

package kabam.rotmg.pets.view.components{
    import flash.display.Sprite;
    import flash.display.Shape;
    import kabam.rotmg.text.view.TextFieldDisplayConcrete;
    import flash.text.TextFieldAutoSize;
    import flashx.textLayout.formats.VerticalAlign;
    import kabam.rotmg.text.view.stringBuilder.LineBuilder;
    import kabam.rotmg.util.graphics.GraphicsHelper;
    import kabam.rotmg.util.graphics.BevelRect;

    public class CaretakerQueryDetailBubble extends Sprite {

        private const WIDTH:int = 235;
        private const HEIGHT:int = 252;
        private const BEVEL:int = 4;
        private const POINT:int = 6;
        private const POINT_CENTER:int = 25;
        private const PADDING:int = 8;
        private const bubble:Shape = new Shape();
        private const textfield:TextFieldDisplayConcrete = CaretakerQueryDetailBubble.makeText();

        public function CaretakerQueryDetailBubble(){
            addChild(this.bubble);
            addChild(this.textfield);
        }

        private function makeText():TextFieldDisplayConcrete{
            var _local1:TextFieldDisplayConcrete = new TextFieldDisplayConcrete().setSize(16).setLeading(3).setAutoSize(TextFieldAutoSize.LEFT).setVerticalAlign(VerticalAlign.TOP).setMultiLine(true).setWordWrap(true).setPosition(this.PADDING, this.PADDING).setTextWidth((this.WIDTH - (2 * this.PADDING))).setTextHeight((this.HEIGHT - (2 * this.PADDING)));
            return (_local1);
        }

        public function setText(_arg1:String):void{
            this.textfield.setStringBuilder(new LineBuilder().setParams(_arg1));
            this.textfield.textChanged.add(this.onTextUpdated);
        }

        private function onTextUpdated():void{
            this.makeBubble();
        }

        private function makeBubble():void{
            var _local1:GraphicsHelper = new GraphicsHelper();
            var _local2:BevelRect = new BevelRect(this.WIDTH, (this.textfield.height + 16), this.BEVEL);
            this.bubble.graphics.beginFill(0xE0E0E0);
            _local1.drawBevelRect(0, 0, _local2, this.bubble.graphics);
            this.bubble.graphics.endFill();
            this.bubble.graphics.beginFill(0xE0E0E0);
            this.bubble.graphics.moveTo((this.POINT_CENTER - this.POINT), 0);
            this.bubble.graphics.lineTo(this.POINT_CENTER, -(this.POINT));
            this.bubble.graphics.lineTo((this.POINT_CENTER + this.POINT), 0);
            this.bubble.graphics.endFill();
        }


    }
}//package kabam.rotmg.pets.view.components

