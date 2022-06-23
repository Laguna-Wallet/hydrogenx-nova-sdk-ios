import SoraFoundation
import CommonWallet
import BigInt

protocol StakingBondMoreConfirmationInteractorInputProtocol: AnyObject {
    func setup()
    func submit(for amount: Decimal)
    func estimateFee(for amount: Decimal)
}

protocol StakingBondMoreConfirmationOutputProtocol: AnyObject {
    func didReceiveAccountInfo(result: Result<AccountInfo?, Error>)
    func didReceivePriceData(result: Result<PriceData?, Error>)
    func didReceiveFee(result: Result<RuntimeDispatchInfo, Error>)
    func didReceiveStash(result: Result<MetaChainAccountResponse?, Error>)
    func didReceiveStashItem(result: Result<StashItem?, Error>)

    func didSubmitBonding(result: Result<String, Error>)
}
