import Foundation
import UIKit
import SafariServices

enum WebPresentableStyle {
    case automatic
    case modal
}

protocol WebPresentable: AnyObject {
    func showWeb(url: URL, from view: ControllerBackedProtocol, style: WebPresentableStyle)
}
