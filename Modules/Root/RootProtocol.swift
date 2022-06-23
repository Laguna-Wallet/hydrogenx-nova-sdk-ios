import UIKit

protocol RootInteractorInputProtocol: AnyObject {
    func setup()
    func decideModuleSynchroniously()
}

protocol RootInteractorOutputProtocol: AnyObject {
    func didDecideOnboarding()
    func didDecideLocalAuthentication()
    func didDecidePincodeSetup()
    func didDecideBroken()
}
