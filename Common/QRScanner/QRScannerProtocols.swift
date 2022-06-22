import Foundation
import AVFoundation
import SoraFoundation

protocol QRScannerWireframeProtocol: ApplicationSettingsPresentable, ImageGalleryPresentable {}

protocol QRScannerPresenterProtocol: AnyObject {
    func setup()
    func uploadGallery()
}
