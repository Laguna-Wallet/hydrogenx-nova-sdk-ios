import RobinHood
import CommonWallet

protocol DAppAuthSettingsInteractorInputProtocol: AnyObject {
    func setup()
    func remove(auth: DAppSettings)
}

protocol DAppAuthSettingsInteractorOutputProtocol: AnyObject {
    func didReceiveDAppList(_ list: DAppList?)
    func didReceiveAuthorizationSettings(changes: [DataProviderChange<DAppSettings>])
    func didReceive(error: Error)
}
