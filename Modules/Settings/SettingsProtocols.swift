import Foundation
import UIKit.UIImage

protocol SettingsInteractorInputProtocol: AnyObject {
    func setup()
}

protocol SettingsInteractorOutputProtocol: AnyObject {
    func didReceive(wallet: MetaAccountModel)
    func didReceiveUserDataProvider(error: Error)
}
