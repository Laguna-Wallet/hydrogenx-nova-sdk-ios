import SoraFoundation

protocol StakingRewardDestConfirmInteractorInputProtocol: AnyObject {
    func setup()
    func estimateFee(for rewardDestination: RewardDestination<AccountAddress>, stashItem: StashItem)
    func submit(rewardDestination: RewardDestination<AccountAddress>, for stashItem: StashItem)
}

protocol StakingRewardDestConfirmInteractorOutputProtocol: AnyObject {
    func didReceiveFee(result: Result<RuntimeDispatchInfo, Error>)
    func didReceivePriceData(result: Result<PriceData?, Error>)
    func didReceiveStashItem(result: Result<StashItem?, Error>)
    func didReceiveController(result: Result<MetaChainAccountResponse?, Error>)
    func didReceiveAccountInfo(result: Result<AccountInfo?, Error>)
    func didSubmitRewardDest(result: Result<String, Error>)
}
