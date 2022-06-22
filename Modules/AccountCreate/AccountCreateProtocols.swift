import IrohaCrypto
import SoraFoundation

protocol AccountCreateInteractorInputProtocol: AnyObject {
    func setup()
}

protocol AccountCreateInteractorOutputProtocol: AnyObject {
    func didReceive(metadata: MetaAccountCreationMetadata)
    func didReceiveMnemonicGeneration(error: Error)
}
