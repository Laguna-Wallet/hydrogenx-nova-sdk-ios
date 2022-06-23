import Foundation
import SoraFoundation
import BigInt
import CommonWallet

protocol StakingAmountInteractorInputProtocol: AnyObject {
    func setup()
    func estimateFee(
        for address: String,
        amount: BigUInt,
        rewardDestination: RewardDestination<ChainAccountResponse>
    )
    func fetchAccounts()
}

protocol StakingAmountInteractorOutputProtocol: AnyObject {
    func didReceive(accounts: [MetaChainAccountResponse])
    func didReceive(price: PriceData?)
    func didReceive(balance: AccountData?)
    func didReceive(
        paymentInfo: RuntimeDispatchInfo,
        for amount: BigUInt,
        rewardDestination: RewardDestination<ChainAccountResponse>
    )
    func didReceive(error: Error)
    func didReceive(calculator: RewardCalculatorEngineProtocol)
    func didReceive(calculatorError: Error)
    func didReceive(minimalBalance: BigUInt)
    func didReceive(minBondAmount: BigUInt?)
    func didReceive(counterForNominators: UInt32?)
    func didReceive(maxNominatorsCount: UInt32?)
}
