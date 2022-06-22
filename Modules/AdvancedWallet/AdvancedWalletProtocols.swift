import Foundation
import SoraFoundation

protocol AdvancedWalletSettingsDelegate: AnyObject {
    func didReceiveNewAdvanced(walletSettings: AdvancedWalletSettings)
}
