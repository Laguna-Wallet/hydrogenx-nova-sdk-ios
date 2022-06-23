import SoraFoundation

protocol StakingRewardDetailsInteractorInputProtocol: AnyObject {
    func setup()
}

protocol StakingRewardDetailsInteractorOutputProtocol: AnyObject {
    func didReceive(priceResult: Result<PriceData?, Error>)
}

struct StakingRewardDetailsInput {
    let payoutInfo: PayoutInfo
    let historyDepth: UInt32
    let eraCountdown: EraCountdown

    var timeTillRewardExpiration: TimeInterval {
        eraCountdown.timeIntervalTillSet(targetEra: payoutInfo.era + historyDepth + 1)
    }
}
