import SoraFoundation

protocol CustomValidatorListInteractorInputProtocol: AnyObject {
    func setup()
}

protocol CustomValidatorListInteractorOutputProtocol: AnyObject {
    func didReceivePriceData(result: Result<PriceData?, Error>)
}
