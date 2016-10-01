// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.panels.GuildChroniclePanel

package com.company.assembleegameclient.ui.panels{
    import kabam.rotmg.text.model.TextKey;
    import com.company.assembleegameclient.game.GameSprite;
    import com.company.assembleegameclient.ui.guild.GuildChronicleScreen;
    import flash.events.MouseEvent;

    public class GuildChroniclePanel extends ButtonPanel {

        public function GuildChroniclePanel(_arg1:GameSprite){
            super(_arg1, TextKey.GUILD_CHRONICLE_TITLE, TextKey.PANEL_VIEW_BUTTON);
        }

        override protected function onButtonClick(_arg1:MouseEvent):void{
            gs_.mui_.clearInput();
            gs_.addChild(new GuildChronicleScreen(gs_));
        }


    }
}//package com.company.assembleegameclient.ui.panels

