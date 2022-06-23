import SoraFoundation

protocol ValidatorSearchInteractorInputProtocol {
    func performValidatorSearch(accountId: AccountId)
}

protocol ValidatorSearchInteractorOutputProtocol: AnyObject {
    func didReceiveValidatorInfo(result: Result<SelectedValidatorInfo?, Error>)
}
