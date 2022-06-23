import UIKit

typealias AuthorizationCompletionBlock = (Bool) -> Void

protocol AuthorizationPresentable: ScreenAuthorizationWireframeProtocol {
    func authorize(
        animated: Bool,
        cancellable: Bool,
        with completionBlock: @escaping AuthorizationCompletionBlock
    )
}

protocol AuthorizationAccessible {
    var isAuthorizing: Bool { get }
}

private let authorization = UUID().uuidString

private enum AuthorizationConstants {
    static var completionBlockKey: String = "co.jp.novawallet.auth.delegate"
    static var authorizationViewKey: String = "co.jp.novawallet.auth.view"
}
