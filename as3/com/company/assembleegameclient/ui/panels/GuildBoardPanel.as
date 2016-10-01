﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.panels.GuildBoardPanel

package com.company.assembleegameclient.ui.panels{
    import kabam.rotmg.text.model.TextKey;
    import com.company.assembleegameclient.game.GameSprite;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.ui.board.GuildBoardWindow;
    import com.company.assembleegameclient.util.GuildUtil;
    import flash.events.MouseEvent;

    public class GuildBoardPanel extends ButtonPanel {

        public function GuildBoardPanel(_arg1:GameSprite){
            super(_arg1, TextKey.GUILD_BOARD_TITLE, TextKey.PANEL_VIEW_BUTTON);
        }

        override protected function onButtonClick(_arg1:MouseEvent):void{
            var _local2:Player = gs_.map.player_;
            if (_local2 == null){
                return;
            };
            gs_.addChild(new GuildBoardWindow((_local2.guildRank_ >= GuildUtil.OFFICER)));
        }


    }
}//package com.company.assembleegameclient.ui.panels

