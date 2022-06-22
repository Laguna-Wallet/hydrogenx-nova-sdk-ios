import CommonWallet

protocol OperationDetailsInteractorInputProtocol: AnyObject {
    func setup()
}

protocol OperationDetailsInteractorOutputProtocol: AnyObject {
    func didReceiveDetails(result: Result<OperationDetailsModel, Error>)
}
