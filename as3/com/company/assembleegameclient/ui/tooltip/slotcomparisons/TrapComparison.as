// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.tooltip.slotcomparisons.TrapComparison

package com.company.assembleegameclient.ui.tooltip.slotcomparisons{
    import kabam.rotmg.text.view.stringBuilder.AppendingLineBuilder;
    import kabam.rotmg.text.model.TextKey;
    import kabam.rotmg.text.view.stringBuilder.LineBuilder;
    import com.company.assembleegameclient.ui.tooltip.TooltipHelper;

    public class TrapComparison extends SlotComparison {


        private function getTrapTag(_arg1:XML):XML{
            var matches:XMLList;
            var xml:XML = _arg1;
            matches = xml.Activate.(text() == "Trap");
            if (matches.length() >= 1){
                return (matches[0]);
            };
            return (null);
        }

        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            var trap:XML;
            var otherTrap:XML;
            var tag:XML;
            var radius:Number;
            var otherRadius:Number;
            var damage:int;
            var otherDamage:int;
            var duration:int;
            var otherDuration:int;
            var avg:Number;
            var otherAvg:Number;
            var textColor:uint;
            var itemXML:XML = _arg1;
            var curItemXML:XML = _arg2;
            trap = this.getTrapTag(itemXML);
            otherTrap = this.getTrapTag(curItemXML);
            comparisonStringBuilder = new AppendingLineBuilder();
            if (((!((trap == null))) && (!((otherTrap == null))))){
                if (itemXML.@id == "Coral Venom Trap"){
                    tag = itemXML.Activate.(text() == "Trap")[0];
                    comparisonStringBuilder.pushParams(TextKey.TRAP, {data:new LineBuilder().setParams(TextKey.HP_WITHIN_SQRS, {
                            amount:tag.@totalDamage,
                            range:tag.@radius
                        }).setPrefix(TooltipHelper.getOpenTag(UNTIERED_COLOR)).setPostfix(TooltipHelper.getCloseTag())});
                    comparisonStringBuilder.pushParams(TextKey.EFFECT_FOR_DURATION, {
                        effect:new LineBuilder().setParams(TextKey.CONDITION_EFFECT_PARALYZED),
                        duration:tag.@condDuration
                    }, TooltipHelper.getOpenTag(UNTIERED_COLOR), TooltipHelper.getCloseTag());
                    processedTags[tag.toXMLString()] = true;
                }
                else {
                    radius = Number(trap.@radius);
                    otherRadius = Number(otherTrap.@radius);
                    damage = int(trap.@totalDamage);
                    otherDamage = int(otherTrap.@totalDamage);
                    duration = int(trap.@condDuration);
                    otherDuration = int(otherTrap.@condDuration);
                    avg = (((0.33 * radius) + (0.33 * damage)) + (0.33 * duration));
                    otherAvg = (((0.33 * otherRadius) + (0.33 * otherDamage)) + (0.33 * otherDuration));
                    textColor = getTextColor((avg - otherAvg));
                    comparisonStringBuilder.pushParams(TextKey.TRAP, {data:new LineBuilder().setParams(TextKey.HP_WITHIN_SQRS, {
                            amount:trap.@totalDamage,
                            range:trap.@radius
                        }).setPrefix(TooltipHelper.getOpenTag(textColor)).setPostfix(TooltipHelper.getCloseTag())});
                    comparisonStringBuilder.pushParams(TextKey.EFFECT_FOR_DURATION, {
                        effect:new LineBuilder().setParams(TextKey.CONDITION_EFFECT_SLOWED),
                        duration:trap.@condDuration
                    }, TooltipHelper.getOpenTag(textColor), TooltipHelper.getCloseTag());
                    processedTags[trap.toXMLString()] = true;
                };
            };
        }


    }
}//package com.company.assembleegameclient.ui.tooltip.slotcomparisons

