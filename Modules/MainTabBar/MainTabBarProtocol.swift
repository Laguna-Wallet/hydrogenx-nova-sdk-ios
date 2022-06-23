import UIKit
import CommonWallet

protocol MainTabBarInteractorInputProtocol: AnyObject {
    func setup()
}

protocol MainTabBarInteractorOutputProtocol: AnyObject {
    func didReloadSelectedAccount()
    func didRequestImportAccount()
}
