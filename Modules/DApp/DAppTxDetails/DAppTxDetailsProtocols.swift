protocol DAppTxDetailsInteractorInputProtocol: AnyObject {
    func setup()
}

protocol DAppTxDetailsInteractorOutputProtocol: AnyObject {
    func didReceive(displayResult: Result<String, Error>)
}
