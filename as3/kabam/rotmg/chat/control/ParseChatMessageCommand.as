﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.chat.control.ParseChatMessageCommand

package kabam.rotmg.chat.control{
    import kabam.rotmg.ui.model.HUDModel;
    import kabam.rotmg.game.signals.AddTextLineSignal;
    import kabam.rotmg.appengine.api.AppEngineClient;
    import kabam.rotmg.account.core.Account;
    import kabam.rotmg.chat.model.ChatMessage;
    import com.company.assembleegameclient.parameters.Parameters;
    import kabam.rotmg.text.model.TextKey;

    public class ParseChatMessageCommand {

        [Inject]
        public var data:String;
        [Inject]
        public var hudModel:HUDModel;
        [Inject]
        public var addTextLine:AddTextLineSignal;
        [Inject]
        public var client:AppEngineClient;
        [Inject]
        public var account:Account;


        public function execute():void{
            switch (this.data){
                case "/help":
                    this.addTextLine.dispatch(ChatMessage.make(Parameters.HELP_CHAT_NAME, TextKey.HELP_COMMAND));
                    return;
                default:
                    this.hudModel.gameSprite.gsc_.playerText(this.data);
            };
        }


    }
}//package kabam.rotmg.chat.control

