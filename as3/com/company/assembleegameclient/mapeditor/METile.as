﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.mapeditor.METile

package com.company.assembleegameclient.mapeditor{
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class METile {

        public var types_:Vector.<int>;
        public var objName_:String = null;

        public function METile(){
            this.types_ = new <int>[-1, -1, -1];
            super();
        }

        public function clone():METile{
            var _local1:METile = new METile();
            _local1.types_ = this.types_.concat();
            _local1.objName_ = this.objName_;
            return (_local1);
        }

        public function isEmpty():Boolean{
            var _local1:int;
            while (_local1 < Layer.NUM_LAYERS) {
                if (this.types_[_local1] != -1){
                    return (false);
                };
                _local1++;
            };
            return (true);
        }


    }
}//package com.company.assembleegameclient.mapeditor

