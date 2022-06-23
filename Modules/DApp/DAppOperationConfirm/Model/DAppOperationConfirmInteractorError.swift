import Foundation

enum DAppOperationConfirmInteractorError: Error {
    case addressMismatch(actual: AccountAddress, expected: AccountAddress)
    case extrinsicBadField(name: String)
    case signedExtensionsMismatch(actual: [String], expected: [String])
    case invalidRawSignature(data: Data)
    case signingFailed
}
