﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//robotlegs.bender.extensions.matching.ITypeFilter

package robotlegs.bender.extensions.matching{
    import __AS3__.vec.Vector;

    public interface ITypeFilter {

        function get allOfTypes():Vector.<Class>;
        function get anyOfTypes():Vector.<Class>;
        function get descriptor():String;
        function get noneOfTypes():Vector.<Class>;
        function matches(_arg1):Boolean;

    }
}//package robotlegs.bender.extensions.matching

