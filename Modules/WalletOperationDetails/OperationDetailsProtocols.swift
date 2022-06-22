import CommonWallet

protocol OperationDetailsPresenterProtocol: AnyObject {
    func setup()

    func showSenderActions()
    func showRecepientActions()
    func showOperationActions()
    func send()
}

protocol OperationDetailsInteractorInputProtocol: AnyObject {
    func setup()
}

protocol OperationDetailsInteractorOutputProtocol: AnyObject {
    func didReceiveDetails(result: Result<OperationDetailsModel, Error>)
}
