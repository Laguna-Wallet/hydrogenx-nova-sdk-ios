import UIKit

protocol ModalAlertPresenting {
    func presentSuccessNotification(
        _ title: String,
        from view: ControllerBackedProtocol?,
        completion closure: (() -> Void)?
    )
}
