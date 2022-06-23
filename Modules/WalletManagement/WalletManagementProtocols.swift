import Foundation
import RobinHood

protocol WalletManagementInteractorInputProtocol: AnyObject {
    func setup()
    func select(item: ManagedMetaAccountModel)
    func save(items: [ManagedMetaAccountModel])
    func remove(item: ManagedMetaAccountModel)
}

protocol WalletManagementInteractorOutputProtocol: AnyObject {
    func didCompleteSelection(of metaAccount: MetaAccountModel)
    func didReceive(changes: [DataProviderChange<ManagedMetaAccountModel>])
    func didReceive(error: Error)
}
