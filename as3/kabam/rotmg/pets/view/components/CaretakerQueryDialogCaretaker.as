﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.view.components.CaretakerQueryDialogCaretaker

package kabam.rotmg.pets.view.components{
    import flash.display.Sprite;
    import flash.display.Bitmap;
    import kabam.rotmg.pets.view.dialogs.CaretakerQueryDialog;
    import flash.display.BitmapData;

    public class CaretakerQueryDialogCaretaker extends Sprite {

        private const speechBubble:CaretakerQuerySpeechBubble = CaretakerQueryDialogCaretaker.makeSpeechBubble();
        private const detailBubble:CaretakerQueryDetailBubble = CaretakerQueryDialogCaretaker.makeDetailBubble();
        private const icon:Bitmap = CaretakerQueryDialogCaretaker.makeCaretakerIcon();


        private function makeSpeechBubble():CaretakerQuerySpeechBubble{
            var _local1:CaretakerQuerySpeechBubble;
            _local1 = new CaretakerQuerySpeechBubble(CaretakerQueryDialog.QUERY);
            _local1.x = 60;
            addChild(_local1);
            return (_local1);
        }

        private function makeDetailBubble():CaretakerQueryDetailBubble{
            var _local1:CaretakerQueryDetailBubble;
            _local1 = new CaretakerQueryDetailBubble();
            _local1.y = 60;
            return (_local1);
        }

        private function makeCaretakerIcon():Bitmap{
            var _local1:Bitmap = new Bitmap(this.makeDebugBitmapData());
            _local1.x = -16;
            _local1.y = -32;
            addChild(_local1);
            return (_local1);
        }

        private function makeDebugBitmapData():BitmapData{
            return (new BitmapDataSpy(42, 42, true, 0xFF00FF00));
        }

        public function showDetail(_arg1:String):void{
            this.detailBubble.setText(_arg1);
            removeChild(this.speechBubble);
            addChild(this.detailBubble);
        }

        public function showSpeech():void{
            removeChild(this.detailBubble);
            addChild(this.speechBubble);
        }

        public function setCaretakerIcon(_arg1:BitmapData):void{
            this.icon.bitmapData = _arg1;
        }


    }
}//package kabam.rotmg.pets.view.components

