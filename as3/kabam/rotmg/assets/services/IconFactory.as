﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.assets.services.IconFactory

package kabam.rotmg.assets.services{
    import com.company.assembleegameclient.util.TextureRedrawer;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.util.redrawers.GlowRedrawer;
    import com.company.util.BitmapUtil;
    import flash.display.Bitmap;

    public class IconFactory {


        public static function makeCoin():BitmapData{
            var _local1:BitmapData = TextureRedrawer.resize(AssetLibrary.getImageFromSet("lofiObj3", 225), null, 40, true, 0, 0);
            return (cropAndGlowIcon(_local1));
        }

        public static function makeFortune():BitmapData{
            var _local1:BitmapData = TextureRedrawer.resize(AssetLibrary.getImageFromSet("lofiCharBig", 32), null, 20, true, 0, 0);
            return (cropAndGlowIcon(_local1));
        }

        public static function makeFame():BitmapData{
            var _local1:BitmapData = TextureRedrawer.resize(AssetLibrary.getImageFromSet("lofiObj3", 224), null, 40, true, 0, 0);
            return (cropAndGlowIcon(_local1));
        }

        public static function makeGuildFame():BitmapData{
            var _local1:BitmapData = TextureRedrawer.resize(AssetLibrary.getImageFromSet("lofiObj3", 226), null, 40, true, 0, 0);
            return (cropAndGlowIcon(_local1));
        }

        private static function cropAndGlowIcon(_arg1:BitmapData):BitmapData{
            _arg1 = GlowRedrawer.outlineGlow(_arg1, 0xFFFFFFFF);
            _arg1 = BitmapUtil.cropToBitmapData(_arg1, 10, 10, (_arg1.width - 20), (_arg1.height - 20));
            return (_arg1);
        }


        public function makeIconBitmap(_arg1:int):Bitmap{
            var _local2:BitmapData = AssetLibrary.getImageFromSet("lofiInterfaceBig", _arg1);
            _local2 = TextureRedrawer.redraw(_local2, (320 / _local2.width), true, 0);
            return (new Bitmap(_local2));
        }


    }
}//package kabam.rotmg.assets.services

