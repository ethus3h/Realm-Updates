// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.questrewards.QuestRewardsConfig

package kabam.rotmg.questrewards{
    import org.swiftsuspenders.Injector;
    import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
    import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;
    import robotlegs.bender.extensions.commandCenter.api.ICommandCenter;
    import kabam.rotmg.questrewards.view.QuestRewardsPanel;
    import kabam.rotmg.questrewards.view.QuestRewardsPanelMediator;
    import kabam.rotmg.questrewards.view.QuestRewardsContainer;
    import kabam.rotmg.questrewards.view.QuestRewardsMediator;
    import kabam.rotmg.questrewards.controller.QuestFetchCompleteSignal;
    import kabam.rotmg.questrewards.controller.QuestRedeemCompleteSignal;
    import robotlegs.bender.framework.api.*;

    public class QuestRewardsConfig implements IConfig {

        [Inject]
        public var injector:Injector;
        [Inject]
        public var mediatorMap:IMediatorMap;
        [Inject]
        public var commandMap:ISignalCommandMap;
        [Inject]
        public var commandCenter:ICommandCenter;


        public function configure():void{
            this.mediatorMap.map(QuestRewardsPanel).toMediator(QuestRewardsPanelMediator);
            this.mediatorMap.map(QuestRewardsContainer).toMediator(QuestRewardsMediator);
            this.injector.map(QuestFetchCompleteSignal).asSingleton();
            this.injector.map(QuestRedeemCompleteSignal).asSingleton();
        }


    }
}//package kabam.rotmg.questrewards

