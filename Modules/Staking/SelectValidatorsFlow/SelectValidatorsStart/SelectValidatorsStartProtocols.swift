import Foundation
import SoraFoundation

protocol SelectValidatorsStartInteractorInputProtocol: AnyObject {
    func setup()
}

protocol SelectValidatorsStartInteractorOutputProtocol: AnyObject {
    func didReceiveValidators(result: Result<[ElectedValidatorInfo], Error>)
    func didReceiveMaxNominations(result: Result<Int, Error>)
}

