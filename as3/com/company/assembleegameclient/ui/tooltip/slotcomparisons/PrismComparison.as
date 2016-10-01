﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.tooltip.slotcomparisons.PrismComparison

package com.company.assembleegameclient.ui.tooltip.slotcomparisons{
    import kabam.rotmg.text.view.stringBuilder.AppendingLineBuilder;
    import kabam.rotmg.text.model.TextKey;
    import kabam.rotmg.text.view.stringBuilder.LineBuilder;
    import com.company.assembleegameclient.ui.tooltip.TooltipHelper;

    public class PrismComparison extends SlotComparison {

        private var decoy:XMLList;
        private var otherDecoy:XMLList;


        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            var duration:Number;
            var otherDuration:Number;
            var textColor:uint;
            var test:String;
            var itemXML:XML = _arg1;
            var curItemXML:XML = _arg2;
            this.decoy = itemXML.Activate.(text() == "Decoy");
            this.otherDecoy = curItemXML.Activate.(text() == "Decoy");
            comparisonStringBuilder = new AppendingLineBuilder();
            if ((((this.decoy.length() == 1)) && ((this.otherDecoy.length() == 1)))){
                duration = Number(this.decoy[0].@duration);
                otherDuration = Number(this.otherDecoy[0].@duration);
                textColor = getTextColor((duration - otherDuration));
                comparisonStringBuilder.pushParams(TextKey.DECOY, {data:new LineBuilder().setParams(TextKey.SEC_COUNT, {duration:duration.toString()}).setPrefix(TooltipHelper.getOpenTag(textColor)).setPostfix(TooltipHelper.getCloseTag())});
                test = this.decoy[0].toXMLString();
                processedTags[this.decoy[0].toXMLString()] = true;
            };
        }


    }
}//package com.company.assembleegameclient.ui.tooltip.slotcomparisons

