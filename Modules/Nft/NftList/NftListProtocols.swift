import RobinHood

protocol NftListInteractorInputProtocol: AnyObject {
    func setup()
    func refresh()
    func getNftForId(_ identifier: NftModel.Id)
}

protocol NftListInteractorOutputProtocol: AnyObject {
    func didReceiveNft(_ model: NftChainModel)
    func didReceiveNft(changes: [DataProviderChange<NftChainModel>])
    func didReceive(error: Error)
}

