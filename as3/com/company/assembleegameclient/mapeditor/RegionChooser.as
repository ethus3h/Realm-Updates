// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.mapeditor.RegionChooser

package com.company.assembleegameclient.mapeditor{
    import com.company.assembleegameclient.map.RegionLibrary;

    public class RegionChooser extends Chooser {

        public function RegionChooser(){
            var _local1:XML;
            var _local2:RegionElement;
            super(Layer.REGION);
            for each (_local1 in RegionLibrary.xmlLibrary_) {
                _local2 = new RegionElement(_local1);
                addElement(_local2);
            };
        }

    }
}//package com.company.assembleegameclient.mapeditor

