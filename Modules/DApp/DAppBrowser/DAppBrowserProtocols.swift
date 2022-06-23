import Foundation
import RobinHood

protocol DAppBrowserInteractorInputProtocol: AnyObject {
    func setup()
    func process(host: String)
    func process(message: Any, host: String, transport name: String)
    func processConfirmation(response: DAppOperationResponse, forTransport name: String)
    func process(newQuery: DAppSearchResult)
    func processAuth(response: DAppAuthResponse, forTransport name: String)
    func removeFromFavorites(record: DAppFavorite)
    func reload()
}

protocol DAppBrowserInteractorOutputProtocol: AnyObject {
    func didReceive(error: Error)
    func didReceiveDApp(model: DAppBrowserModel)
    func didReceiveReplacement(
        transports: [DAppTransportModel],
        postExecution script: DAppScriptResponse
    )
    func didReceive(response: DAppScriptResponse, forTransport name: String)
    func didReceiveConfirmation(
        request: DAppOperationRequest,
        type: DAppSigningType
    )
    func didReceiveAuth(request: DAppAuthRequest)
    func didDetectPhishing(host: String)
    func didReceiveFavorite(changes: [DataProviderChange<DAppFavorite>])
}
