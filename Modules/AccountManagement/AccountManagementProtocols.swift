import Foundation
import RobinHood
import SoraFoundation

protocol AccountManagementInteractorInputProtocol: AnyObject {
    func setup(walletId: String)
    func save(name: String, walletId: String)
    func flushPendingName()
    func requestExportOptions(metaAccount: MetaAccountModel, chain: ChainModel)
}

protocol AccountManagementInteractorOutputProtocol: AnyObject {
    func didReceiveWallet(_ result: Result<MetaAccountModel?, Error>)
    func didReceiveChains(_ result: Result<[ChainModel.Id: ChainModel], Error>)
    func didSaveWalletName(_ result: Result<String, Error>)
    func didReceive(
        exportOptionsResult: Result<[SecretSource], Error>,
        metaAccount: MetaAccountModel,
        chain: ChainModel
    )
}
