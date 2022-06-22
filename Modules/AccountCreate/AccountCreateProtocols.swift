import IrohaCrypto
import SoraFoundation

protocol AccountCreatePresenterProtocol: AnyObject {
    func setup()
    func activateAdvanced()
    func prepareToDisplayMnemonic()
    func proceed()
}

protocol AccountCreateInteractorInputProtocol: AnyObject {
    func setup()
}

protocol AccountCreateInteractorOutputProtocol: AnyObject {
    func didReceive(metadata: MetaAccountCreationMetadata)
    func didReceiveMnemonicGeneration(error: Error)
}
