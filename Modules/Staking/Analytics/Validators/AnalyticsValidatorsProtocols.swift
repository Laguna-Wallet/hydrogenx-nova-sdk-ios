import SoraFoundation

protocol AnalyticsValidatorsInteractorInputProtocol: AnyObject {
    func setup()
    func reload()
}

protocol AnalyticsValidatorsInteractorOutputProtocol: AnyObject {
    func didReceive(identitiesByAddressResult: Result<[AccountAddress: AccountIdentity], Error>)
    func didReceive(eraValidatorInfosResult: Result<[SubqueryEraValidatorInfo]?, Error>)
    func didReceive(stashAddressResult: Result<AccountAddress?, Error>)
    func didReceive(rewardsResult: Result<[SubqueryRewardItemData], Error>)
    func didReceive(nominationResult: Result<Nomination?, Error>)
    func didReceive(eraRange: EraRange)
}
