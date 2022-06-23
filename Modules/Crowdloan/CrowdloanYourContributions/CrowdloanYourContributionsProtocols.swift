import SoraFoundation

protocol CrowdloanYourContributionsInteractorInputProtocol: AnyObject {
    func setup()
}

protocol CrowdloanYourContributionsInteractorOutputProtocol: AnyObject {
    func didReceiveExternalContributions(result: Result<[ExternalContribution], Error>)
}
