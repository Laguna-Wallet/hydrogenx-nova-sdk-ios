import RobinHood

protocol DAppSearchInteractorInputProtocol: AnyObject {
    func setup()
}

protocol DAppSearchInteractorOutputProtocol: AnyObject {
    func didReceive(dAppsResult: Result<DAppList?, Error>)
    func didReceiveFavorite(changes: [DataProviderChange<DAppFavorite>])
}

protocol DAppSearchDelegate: AnyObject {
    func didCompleteDAppSearchResult(_ result: DAppSearchResult)
}
