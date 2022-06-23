
protocol ChainSelectionInteractorInputProtocol: AnyObject {
    func setup()
}

protocol ChainSelectionInteractorOutputProtocol: AnyObject {
    func didReceiveChains(result: Result<[ChainModel], Error>)
    func didReceiveAccountInfo(result: Result<AccountInfo?, Error>, for chainId: ChainModel.Id)
}
