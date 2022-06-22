import Foundation
import SoraFoundation

protocol AccountExportPasswordInteractorInputProtocol: AnyObject {
    func exportAccount(password: String)
}

protocol AccountExportPasswordInteractorOutputProtocol: AnyObject {
    func didExport(json: RestoreJson)
    func didReceive(error: Error)
}
