import SoraFoundation
import BigInt

protocol MoonbeamTermsInteractorInputProtocol: AnyObject {
    var termsURL: URL { get }
    func setup()
    func submitAgreement()
    func estimateFee()
}

protocol MoonbeamTermsInteractorOutputProtocol: AnyObject {
    func didReceivePriceData(result: Result<PriceData?, Error>)
    func didReceiveFee(result: Result<RuntimeDispatchInfo, Error>)
    func didReceiveVerifyRemark(result: Result<Bool, Error>)
    func didReceiveAccountInfo(result: Result<AccountInfo?, Error>)
    func didReceiveMinimumBalance(result: Result<BigUInt, Error>)
}
