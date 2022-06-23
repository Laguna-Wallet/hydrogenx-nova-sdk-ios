import Foundation
import SoraFoundation

protocol ExportGenericViewProtocol: ControllerBackedProtocol {
    func set(viewModel: ExportGenericViewModel)
}

protocol ExportGenericPresenterProtocol {
    func setup()
    func activateExport()
    func activateAdvancedSettings()
}

extension ExportGenericPresenterProtocol {
    func activateAccessoryOption() {}
}

protocol ExportGenericWireframeProtocol: ErrorPresentable, AlertPresentable, SharingPresentable {
    func close(view: ExportGenericViewProtocol?)

    func showAdvancedSettings(
        from view: ExportGenericViewProtocol?,
        secretSource: SecretSource,
        settings: AdvancedWalletSettings
    )
}
