﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.google.analytics.API

package com.google.analytics{
    import com.google.analytics.utils.Version;

    public class API {

        public static var version:Version = new Version();

        {
            version.major = 1;
            version.minor = 0;
            version.build = 1;
            version.revision = "$Rev: 319 $ ".split(" ")[1];
        }


    }
}//package com.google.analytics

