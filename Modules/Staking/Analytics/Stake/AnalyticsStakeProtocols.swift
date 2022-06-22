import SoraFoundation

protocol AnalyticsStakeInteractorInputProtocol: AnyObject {
    func setup()
    func fetchStakeHistory(stashAddress: AccountAddress)
}

protocol AnalyticsStakeInteractorOutputProtocol: AnyObject {
    func didReceieve(stakeDataResult: Result<[SubqueryStakeChangeData], Error>)
    func didReceivePriceData(result: Result<PriceData?, Error>)
    func didReceiveStashItem(result: Result<StashItem?, Error>)
}
