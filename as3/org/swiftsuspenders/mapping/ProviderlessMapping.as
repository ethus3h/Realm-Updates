﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//org.swiftsuspenders.mapping.ProviderlessMapping

package org.swiftsuspenders.mapping{
    import org.swiftsuspenders.dependencyproviders.DependencyProvider;

    public interface ProviderlessMapping {

        function toType(_arg1:Class):UnsealedMapping;
        function toValue(_arg1:Object):UnsealedMapping;
        function toSingleton(_arg1:Class):UnsealedMapping;
        function asSingleton():UnsealedMapping;
        function toProvider(_arg1:DependencyProvider):UnsealedMapping;
        function seal():Object;

    }
}//package org.swiftsuspenders.mapping

