import Foundation
import SoraFoundation

// MARK: - Entity

protocol ValidatorStakeInfoProtocol {
    var nominators: [NominatorInfo] { get }
    var totalStake: Decimal { get }
    var ownStake: Decimal { get }
    var stakeReturn: Decimal { get }
    var maxNominatorsRewarded: UInt32 { get }
    var oversubscribed: Bool { get }
}

protocol ValidatorInfoProtocol {
    var address: String { get }
    var identity: AccountIdentity? { get }
    var stakeInfo: ValidatorStakeInfoProtocol? { get }
    var myNomination: ValidatorMyNominationStatus? { get }
    var totalStake: Decimal { get }
    var ownStake: Decimal { get }
    var hasSlashes: Bool { get }
    var blocked: Bool { get }
}

// MARK: - Interactor

protocol ValidatorInfoInteractorInputProtocol: AnyObject {
    func setup()
    func reload()
}

protocol ValidatorInfoInteractorOutputProtocol: AnyObject {
    func didReceivePriceData(result: Result<PriceData?, Error>)
    func didStartLoadingValidatorInfo()
    func didReceiveValidatorInfo(result: Result<ValidatorInfoProtocol?, Error>)
}
