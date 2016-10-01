﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.promotions.commands.ShowBeginnersPackageCommand

package kabam.rotmg.promotions.commands{
    import kabam.rotmg.account.core.Account;
    import kabam.rotmg.promotions.model.BeginnersPackageModel;
    import kabam.rotmg.dialogs.control.OpenDialogSignal;
    import kabam.rotmg.promotions.service.GetDaysRemainingTask;
    import kabam.rotmg.account.core.services.GetOffersTask;
    import kabam.lib.tasks.TaskMonitor;
    import kabam.lib.tasks.BranchingTask;
    import kabam.lib.tasks.TaskSequence;
    import kabam.lib.tasks.DispatchSignalTask;
    import kabam.rotmg.promotions.view.BeginnersPackageOfferDialog;
    import kabam.lib.tasks.Task;
    import kabam.rotmg.promotions.view.AlreadyPurchasedBeginnersPackageDialog;

    public class ShowBeginnersPackageCommand {

        [Inject]
        public var account:Account;
        [Inject]
        public var model:BeginnersPackageModel;
        [Inject]
        public var openDialog:OpenDialogSignal;
        [Inject]
        public var getDaysRemaining:GetDaysRemainingTask;
        [Inject]
        public var getOffers:GetOffersTask;
        [Inject]
        public var monitor:TaskMonitor;


        public function execute():void{
            var _local1:BranchingTask = new BranchingTask(this.getDaysRemaining, this.makeSuccessTask(), this.makeFailureTask());
            this.monitor.add(_local1);
            _local1.start();
        }

        private function makeSuccessTask():Task{
            var _local1:TaskSequence = new TaskSequence();
            ((this.account.isRegistered()) && (_local1.add(this.getOffers)));
            _local1.add(new DispatchSignalTask(this.openDialog, new BeginnersPackageOfferDialog()));
            return (_local1);
        }

        private function makeFailureTask():Task{
            var _local1:TaskSequence = new TaskSequence();
            _local1.add(new DispatchSignalTask(this.openDialog, new AlreadyPurchasedBeginnersPackageDialog()));
            return (_local1);
        }


    }
}//package kabam.rotmg.promotions.commands

