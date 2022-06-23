protocol DAppPhishingViewDelegate: AnyObject {
    func dappPhishingViewDidHide()
}

protocol DAppPhishingViewProtocol: ControllerBackedProtocol {}

protocol DAppPhishingPresenterProtocol: AnyObject {
    func setup()
    func goBack()
}
