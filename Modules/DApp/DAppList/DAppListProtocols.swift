import SubstrateSdk
import RobinHood

protocol DAppListInteractorInputProtocol: AnyObject {
    func setup()
    func refresh()
    func addToFavorites(dApp: DApp)
    func removeFromFavorites(dAppIdentifier: String)
}

protocol DAppListInteractorOutputProtocol: AnyObject {
    func didReceive(accountIdResult: Result<AccountId, Error>)
    func didReceive(dAppsResult: Result<DAppList, Error>?)
    func didReceiveFavoriteDapp(changes: [DataProviderChange<DAppFavorite>])
}
