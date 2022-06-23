import Foundation
import CommonWallet
import SoraFoundation
import SubstrateSdk

enum TransactionHistoryViewModelFactoryError: Error {
    case missingAsset
    case unsupportedType
}
