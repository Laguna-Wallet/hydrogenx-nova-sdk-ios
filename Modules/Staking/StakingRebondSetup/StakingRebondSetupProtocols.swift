import Foundation
import SoraFoundation
import CommonWallet

protocol StakingRebondSetupInteractorInputProtocol: AnyObject {
    func setup()
    func estimateFee()
}

protocol StakingRebondSetupInteractorOutputProtocol: AnyObject {
    func didReceiveStakingLedger(result: Result<StakingLedger?, Error>)
    func didReceiveFee(result: Result<RuntimeDispatchInfo, Error>)
    func didReceivePriceData(result: Result<PriceData?, Error>)
    func didReceiveController(result: Result<ChainAccountResponse?, Error>)
    func didReceiveStashItem(result: Result<StashItem?, Error>)
    func didReceiveAccountInfo(result: Result<AccountInfo?, Error>)
}

// MARK: - StakingRewardDestSetupInteractor

protocol StakingRewardDestSetupInteractorInputProtocol: AnyObject {
    func setup()
    func estimateFee()
    func fetchPayoutAccounts()
}

protocol StakingRewardDestSetupInteractorOutputProtocol: AnyObject {
    func didReceiveFee(result: Result<RuntimeDispatchInfo, Error>)
    func didReceivePriceData(result: Result<PriceData?, Error>)
    func didReceiveStashItem(result: Result<StashItem?, Error>)
    func didReceiveController(result: Result<MetaChainAccountResponse?, Error>)
    func didReceiveStash(result: Result<MetaChainAccountResponse?, Error>)
    func didReceiveStakingLedger(result: Result<StakingLedger?, Error>)
    func didReceiveRewardDestinationAccount(result: Result<RewardDestination<MetaChainAccountResponse>?, Error>)
    func didReceiveRewardDestinationAddress(result: Result<RewardDestination<AccountAddress>?, Error>)
    func didReceiveCalculator(result: Result<RewardCalculatorEngineProtocol?, Error>)
    func didReceiveAccounts(result: Result<[MetaChainAccountResponse], Error>)
    func didReceiveNomination(result: Result<Nomination?, Error>)
    func didReceiveAccountInfo(result: Result<AccountInfo?, Error>)
}
