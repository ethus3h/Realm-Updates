﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.friends.service.FriendDataRequestTask

package kabam.rotmg.friends.service{
    import kabam.lib.tasks.BaseTask;
    import kabam.rotmg.appengine.api.AppEngineClient;
    import kabam.rotmg.account.core.Account;

    public class FriendDataRequestTask extends BaseTask {

        [Inject]
        public var client:AppEngineClient;
        [Inject]
        public var account:Account;
        public var requestURL:String;
        public var xml:XML;


        override protected function startTask():void{
            this.client.setMaxRetries(8);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest(this.requestURL, this.account.getCredentials());
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1){
                this.xml = new XML(_arg2);
                completeTask(true);
            }
            else {
                completeTask(false, _arg2);
            };
        }


    }
}//package kabam.rotmg.friends.service

