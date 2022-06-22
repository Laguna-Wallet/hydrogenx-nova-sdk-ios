import BigInt
import CommonWallet

protocol NftDetailsInteractorInputProtocol: AnyObject {
    func setup()
    func refresh()
}

protocol NftDetailsInteractorOutputProtocol: AnyObject {
    func didReceive(name: String?)
    func didReceive(label: NftDetailsLabel?)
    func didReceive(description: String?)
    func didReceive(media: NftMediaViewModelProtocol?)
    func didReceive(price: BigUInt?, tokenPriceData: PriceData?)
    func didReceive(collection: NftDetailsCollection?)
    func didReceive(owner: DisplayAddress)
    func didReceive(issuer: DisplayAddress?)
    func didReceive(error: Error)
}
