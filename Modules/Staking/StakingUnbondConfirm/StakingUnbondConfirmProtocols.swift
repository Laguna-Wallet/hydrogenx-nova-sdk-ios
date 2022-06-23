import Foundation
import SoraFoundation
import BigInt

protocol StakingUnbondConfirmInteractorInputProtocol: AnyObject {
    func setup()
    func submit(for amount: Decimal, resettingRewardDestination: Bool, chilling: Bool)
    func estimateFee(for amount: Decimal, resettingRewardDestination: Bool, chilling: Bool)
}

protocol StakingUnbondConfirmInteractorOutputProtocol: AnyObject {
    func didReceiveStakingLedger(result: Result<StakingLedger?, Error>)
    func didReceiveAccountInfo(result: Result<AccountInfo?, Error>)
    func didReceivePriceData(result: Result<PriceData?, Error>)
    func didReceiveExistentialDeposit(result: Result<BigUInt, Error>)
    func didReceiveFee(result: Result<RuntimeDispatchInfo, Error>)
    func didReceiveController(result: Result<MetaChainAccountResponse?, Error>)
    func didReceiveStashItem(result: Result<StashItem?, Error>)
    func didReceivePayee(result: Result<RewardDestinationArg?, Error>)
    func didReceiveMinBonded(result: Result<BigUInt?, Error>)
    func didReceiveNomination(result: Result<Nomination?, Error>)
    func didReceiveBondingDuration(result: Result<UInt32, Error>)
    func didReceiveStakingDuration(result: Result<StakingDuration, Error>)

    func didSubmitUnbonding(result: Result<String, Error>)
}
