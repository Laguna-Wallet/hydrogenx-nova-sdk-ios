import SoraFoundation

protocol DAppAddFavoriteInteractorInputProtocol: AnyObject {
    func setup()
    func save(favorite: DAppFavorite)
}

protocol DAppAddFavoriteInteractorOutputProtocol: AnyObject {
    func didReceive(proposedModel: DAppFavorite)
    func didCompleteSaveWithResult(_ result: Result<Void, Error>)
}
