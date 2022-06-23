protocol AssetsManageInteractorInputProtocol: AnyObject {
    func setup()
    func save(hideZeroBalances: Bool)
}

protocol AssetsManageInteractorOutputProtocol: AnyObject {
    func didReceive(hideZeroBalances: Bool)
    func didSave()
}
