import UIKit

protocol OperationIdOptionsPresentable {
    func presentTransactionHashOptions(
        from view: ControllerBackedProtocol,
        transactionHash: String,
        explorers: [ChainModel.Explorer]?,
        locale: Locale
    )

    func presentEventIdOptions(
        from view: ControllerBackedProtocol,
        eventId: String,
        explorers: [ChainModel.Explorer]?,
        locale: Locale
    )
}
