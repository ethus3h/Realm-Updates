﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.hurlant.math.IReduction

package com.hurlant.math{
    import com.hurlant.math.BigInteger;

    interface IReduction {

        function convert(_arg1:BigInteger):BigInteger;
        function revert(_arg1:BigInteger):BigInteger;
        function reduce(_arg1:BigInteger):void;
        function mulTo(_arg1:BigInteger, _arg2:BigInteger, _arg3:BigInteger):void;
        function sqrTo(_arg1:BigInteger, _arg2:BigInteger):void;

    }
}//package com.hurlant.math

