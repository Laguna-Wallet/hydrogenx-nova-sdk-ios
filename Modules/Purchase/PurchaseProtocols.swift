import UIKit
import CommonWallet

protocol PurchaseInteractorInputProtocol: AnyObject {
    func setup()
}

protocol PurchaseInteractorOutputProtocol: AnyObject {
    func didCompletePurchase()
}
