import BigInt
import CommonWallet
import SoraFoundation

protocol TransferSetupInteractorInputProtocol: AnyObject {
    func setup()
    func estimateFee(for amount: BigUInt, recepient: AccountAddress?)
    func change(recepient: AccountAddress?)
}

protocol TransferSetupInteractorOutputProtocol: AnyObject {
    func didReceiveSendingAssetSenderBalance(_ balance: AssetBalance)
    func didReceiveUtilityAssetSenderBalance(_ balance: AssetBalance)
    func didReceiveSendingAssetRecepientBalance(_ balance: AssetBalance)
    func didReceiveUtilityAssetRecepientBalance(_ balance: AssetBalance)
    func didReceiveFee(result: Result<BigUInt, Error>)
    func didReceiveSendingAssetPrice(_ price: PriceData?)
    func didReceiveUtilityAssetPrice(_ price: PriceData?)
    func didReceiveUtilityAssetMinBalance(_ value: BigUInt)
    func didReceiveSendingAssetMinBalance(_ value: BigUInt)
    func didCompleteSetup()
    func didReceiveError(_ error: Error)
}
