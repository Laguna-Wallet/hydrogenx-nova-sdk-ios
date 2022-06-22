import BigInt

protocol TransferConfirmInteractorInputProtocol: TransferSetupInteractorInputProtocol {
    func submit(amount: BigUInt, recepient: AccountAddress, lastFee: BigUInt?)
}

protocol TransferConfirmInteractorOutputProtocol: TransferSetupInteractorOutputProtocol {
    func didCompleteSubmition()
}
