import Foundation
import RobinHood
import SubstrateSdk
import BigInt

protocol WalletListInteractorInputProtocol: AnyObject {
    func setup()
    func refresh()
}

protocol WalletListInteractorOutputProtocol: AnyObject {
    func didReceive(genericAccountId: AccountId, name: String)
    func didReceiveChainModelChanges(_ changes: [DataProviderChange<ChainModel>])
    func didReceiveBalance(results: [ChainAssetId: Result<BigUInt?, Error>])
    func didReceiveNft(changes: [DataProviderChange<NftModel>])
    func didReceiveNft(error: Error)
    func didResetNftProvider()
    func didReceivePrices(result: Result<[ChainAssetId: PriceData], Error>?)
    func didReceive(state: WebSocketEngine.State, for chainId: ChainModel.Id)
    func didChange(name: String)
    func didReceive(hidesZeroBalances: Bool)
}
