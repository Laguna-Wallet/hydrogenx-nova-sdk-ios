import SoraFoundation

protocol ControllerAccountConfirmationInteractorInputProtocol: AnyObject {
    func setup()
    func confirm()
    func estimateFee()
}

protocol ControllerAccountConfirmationInteractorOutputProtocol: AnyObject {
    func didReceiveStashItem(result: Result<StashItem?, Error>)
    func didReceiveStashAccount(result: Result<MetaChainAccountResponse?, Error>)
    func didReceiveFee(result: Result<RuntimeDispatchInfo, Error>)
    func didReceivePriceData(result: Result<PriceData?, Error>)
    func didReceiveStakingLedger(result: Result<StakingLedger?, Error>)
    func didReceiveAccountInfo(result: Result<AccountInfo?, Error>)
    func didConfirmed(result: Result<String, Error>)
}
