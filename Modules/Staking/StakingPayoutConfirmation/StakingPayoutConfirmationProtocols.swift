import SoraFoundation

protocol StakingPayoutConfirmationInteractorInputProtocol: AnyObject {
    func setup()
    func submitPayout()
    func estimateFee()
}

protocol StakingPayoutConfirmationInteractorOutputProtocol: AnyObject {
    func didRecieve(account: MetaChainAccountResponse, rewardAmount: Decimal)

    func didReceivePriceData(result: Result<PriceData?, Error>)
    func didReceiveAccountInfo(result: Result<AccountInfo?, Error>)

    func didReceiveFee(result: Result<Decimal, Error>)

    func didStartPayout()
    func didCompletePayout(txHashes: [String])
    func didFailPayout(error: Error)
}

