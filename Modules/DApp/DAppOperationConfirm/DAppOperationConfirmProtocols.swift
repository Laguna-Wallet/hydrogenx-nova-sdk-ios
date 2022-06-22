import SubstrateSdk

protocol DAppOperationConfirmInteractorInputProtocol: AnyObject {
    func setup()
    func estimateFee()
    func confirm()
    func reject()
    func prepareTxDetails()
}

protocol DAppOperationConfirmInteractorOutputProtocol: AnyObject {
    func didReceive(modelResult: Result<DAppOperationConfirmModel, Error>)
    func didReceive(feeResult: Result<RuntimeDispatchInfo, Error>)
    func didReceive(priceResult: Result<PriceData?, Error>)
    func didReceive(responseResult: Result<DAppOperationResponse, Error>, for request: DAppOperationRequest)
    func didReceive(txDetailsResult: Result<JSON, Error>)
}
