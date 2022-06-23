import SoraFoundation
import CommonWallet
import BigInt

protocol StakingBondMoreInteractorInputProtocol: AnyObject {
    func setup()
    func estimateFee()
}

protocol StakingBondMoreInteractorOutputProtocol: AnyObject {
    func didReceiveAccountInfo(result: Result<AccountInfo?, Error>)
    func didReceivePriceData(result: Result<PriceData?, Error>)
    func didReceiveFee(result: Result<RuntimeDispatchInfo, Error>)
    func didReceiveStash(result: Result<ChainAccountResponse?, Error>)
    func didReceiveStashItem(result: Result<StashItem?, Error>)
}
