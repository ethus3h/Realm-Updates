﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.particles.ParticleEffect

package com.company.assembleegameclient.objects.particles{
    import com.company.assembleegameclient.objects.GameObject;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map.Camera;

    public class ParticleEffect extends GameObject {

        public var reducedDrawEnabled:Boolean;

        public function ParticleEffect(){
            super(null);
            objectId_ = getNextFakeObjectId();
            hasShadow_ = false;
            this.reducedDrawEnabled = false;
        }

        public static function fromProps(_arg1:EffectProperties, _arg2:GameObject):ParticleEffect{
            switch (_arg1.id){
                case "Healing":
                    return (new HealingEffect(_arg2));
                case "Fountain":
                    return (new FountainEffect(_arg2));
                case "Gas":
                    return (new GasEffect(_arg2, _arg1));
                case "Vent":
                    return (new VentEffect(_arg2));
                case "Bubbles":
                    return (new BubbleEffect(_arg2, _arg1));
                case "XMLEffect":
                    return (new XMLEffect(_arg2, _arg1));
                case "CustomParticles":
                    return (ParticleGenerator.attachParticleGenerator(_arg1, _arg2));
            };
            return (null);
        }


        override public function update(_arg1:int, _arg2:int):Boolean{
            if (this.reducedDrawEnabled){
                return (this.runEasyRendering(_arg1, _arg2));
            };
            return (this.runNormalRendering(_arg1, _arg2));
        }

        public function runNormalRendering(_arg1:int, _arg2:int):Boolean{
            return (false);
        }

        public function runEasyRendering(_arg1:int, _arg2:int):Boolean{
            return (false);
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:Camera, _arg3:int):void{
        }


    }
}//package com.company.assembleegameclient.objects.particles

