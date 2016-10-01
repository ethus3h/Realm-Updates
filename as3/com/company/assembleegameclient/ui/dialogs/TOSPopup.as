﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.dialogs.TOSPopup

package com.company.assembleegameclient.ui.dialogs{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.util.GraphicsUtil;
    import flash.display.Shape;
    import kabam.rotmg.text.view.TextFieldDisplayConcrete;
    import com.company.assembleegameclient.util.StageProxy;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.GraphicsPath;
    import com.company.assembleegameclient.ui.DeprecatedTextButton;
    import kabam.rotmg.ui.view.SignalWaiter;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.text.TextFieldAutoSize;
    import kabam.rotmg.text.view.stringBuilder.LineBuilder;
    import flash.filters.DropShadowFilter;
    import com.company.assembleegameclient.parameters.Parameters;
    import kabam.rotmg.text.model.TextKey;
    import flash.events.MouseEvent;
    import flash.display.Graphics;
    import kabam.rotmg.core.StaticInjectorContext;
    import kabam.rotmg.appengine.api.AppEngineClient;
    import kabam.rotmg.account.core.Account;
    import kabam.rotmg.dialogs.control.CloseDialogsSignal;
    import __AS3__.vec.*;

    public class TOSPopup extends Sprite {

        public static const LEFT_BUTTON:String = "dialogLeftButton";
        public static const GREY:int = 0xB3B3B3;
        public static const WIDTH:int = 210;

        protected const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[TOSPopup.lineStyle_, TOSPopup.backgroundFill_, TOSPopup.path_, com.company.util.GraphicsUtil.END_FILL, com.company.util.GraphicsUtil.END_STROKE];

        public var box_:Sprite;
        public var rect_:Shape;
        public var textText_:TextFieldDisplayConcrete;
        public var textText2_:TextFieldDisplayConcrete;
        public var offsetX:Number = 0;
        public var offsetY:Number = 20;
        public var stageProxy:StageProxy;
        public var textTextYPosition:int = 4;
        public var buttonSpace:int = 16;
        public var bottomSpace:int = 22;
        public var dialogWidth:int;
        private var textMargin:int = 15;
        private var outlineFill_:GraphicsSolidFill;
        private var lineStyle_:GraphicsStroke;
        private var backgroundFill_:GraphicsSolidFill;
        protected var path_:GraphicsPath;
        protected var buttonAccept:DeprecatedTextButton;
        protected var uiWaiter:SignalWaiter;

        public function TOSPopup(){
            this.box_ = new Sprite();
            this.rect_ = new Shape();
            this.dialogWidth = this.setDialogWidth();
            this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
            this.lineStyle_ = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
            this.backgroundFill_ = new GraphicsSolidFill(0x363636, 1);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            this.uiWaiter = new SignalWaiter();
            super();
            this._makeUIAndAdd();
            addChild(this.box_);
            this.uiWaiter.complete.addOnce(this.onComplete);
        }

        protected function setDialogWidth():int{
            return (WIDTH);
        }

        private function _makeUIAndAdd():void{
            this.makeButton();
            this.initText();
            this.initText2();
            this.addTextFieldDisplay(this.textText_);
            this.addTextFieldDisplay(this.textText2_);
        }

        protected function initText():void{
            this.textText_ = new TextFieldDisplayConcrete().setSize(16).setColor(GREY);
            this.textText_.setTextWidth((this.dialogWidth - (this.textMargin * 2)));
            this.textText_.x = this.textMargin;
            this.textText_.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
            var _local1:LineBuilder = new LineBuilder().setParams("Legal.tos1");
            _local1.setPrefix('<p align="center">').setPostfix("</p>");
            this.textText_.setStringBuilder(_local1);
            this.textText_.setHTML(true);
            this.textText_.mouseEnabled = true;
            this.textText_.filters = [new DropShadowFilter(0, 0, 0, 1, 6, 6, 1)];
        }

        protected function initText2():void{
            this.textText2_ = new TextFieldDisplayConcrete().setSize(16).setColor(GREY);
            this.textText2_.setTextWidth((this.dialogWidth - (this.textMargin * 2)));
            this.textText2_.x = this.textMargin;
            this.textText2_.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
            var _local1 = (('<font color="#7777EE"><a href="' + Parameters.TERMS_OF_USE_URL) + '" target="_blank">');
            var _local2 = (('<font color="#7777EE"><a href="' + Parameters.PRIVACY_POLICY_URL) + '" target="_blank">');
            var _local3:LineBuilder = new LineBuilder().setParams("Legal.tos2", {
                tou:_local1,
                _tou:"</a></font>",
                policy:_local2,
                _policy:"</a></font>"
            });
            this.textText2_.setStringBuilder(_local3);
            this.textText2_.setHTML(true);
            this.textText2_.mouseEnabled = true;
            this.textText2_.filters = [new DropShadowFilter(0, 0, 0, 1, 6, 6, 1)];
        }

        private function addTextFieldDisplay(_arg1:TextFieldDisplayConcrete):void{
            this.box_.addChild(_arg1);
            this.uiWaiter.push(_arg1.textChanged);
        }

        private function makeButton():void{
            this.buttonAccept = new DeprecatedTextButton(16, TextKey.TRADE_ACCEPT);
            this.buttonAccept.addEventListener(MouseEvent.CLICK, this.onLeftButtonClick);
        }

        private function onComplete():void{
            this.draw();
            this.positionDialogAndTryAnalytics();
        }

        private function positionDialogAndTryAnalytics():void{
            this.box_.x = ((this.offsetX + (WebMain.STAGE.stageWidth / 2)) - (this.box_.width / 2));
            this.box_.y = ((this.offsetY + (WebMain.STAGE.stageHeight / 2)) - (this.getBoxHeight() / 2));
        }

        private function draw():void{
            this.drawTitleAndText();
            this.drawAdditionalUI();
            this.drawButtonsAndBackground();
        }

        protected function drawAdditionalUI():void{
        }

        protected function drawButtonsAndBackground():void{
            if (this.box_.contains(this.rect_)){
                this.box_.removeChild(this.rect_);
            };
            this.removeButtonsIfAlreadyAdded();
            this.addButtonsAndLayout();
            this.drawBackground();
            this.box_.addChildAt(this.rect_, 0);
            this.box_.filters = [new DropShadowFilter(0, 0, 0, 1, 16, 16, 1)];
        }

        private function drawBackground():void{
            GraphicsUtil.clearPath(this.path_);
            GraphicsUtil.drawCutEdgeRect(0, 0, this.dialogWidth, (this.getBoxHeight() + this.bottomSpace), 4, [1, 1, 1, 1], this.path_);
            var _local1:Graphics = this.rect_.graphics;
            _local1.clear();
            _local1.drawGraphicsData(this.graphicsData_);
        }

        protected function getBoxHeight():Number{
            return (this.box_.height);
        }

        private function addButtonsAndLayout():void{
            var _local1:int = (this.box_.height + this.buttonSpace);
            this.box_.addChild(this.buttonAccept);
            this.buttonAccept.y = _local1;
            this.buttonAccept.x = ((this.dialogWidth / 2) - (this.buttonAccept.width / 2));
        }

        private function drawTitleAndText():void{
            this.textText_.y = this.textTextYPosition;
            this.textText2_.y = ((this.textText_.y + this.textText_.height) + 15);
        }

        private function removeButtonsIfAlreadyAdded():void{
            if (((this.buttonAccept) && (this.box_.contains(this.buttonAccept)))){
                this.box_.removeChild(this.buttonAccept);
            };
        }

        protected function onLeftButtonClick(_arg1:MouseEvent):void{
            var _local2:AppEngineClient = StaticInjectorContext.getInjector().getInstance(AppEngineClient);
            var _local3:Account = StaticInjectorContext.getInjector().getInstance(Account);
            var _local4:Object = _local3.getCredentials();
            _local2.sendRequest("account/acceptTOS", _local4);
            this.buttonAccept.removeEventListener(MouseEvent.CLICK, this.onLeftButtonClick);
            var _local5:CloseDialogsSignal = StaticInjectorContext.getInjector().getInstance(CloseDialogsSignal);
            _local5.dispatch();
        }


    }
}//package com.company.assembleegameclient.ui.dialogs

