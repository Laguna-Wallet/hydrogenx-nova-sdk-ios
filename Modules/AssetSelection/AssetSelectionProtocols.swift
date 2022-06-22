protocol AssetSelectionDelegate: AnyObject {
    func assetSelection(view: ChainSelectionViewProtocol, didCompleteWith chainAsset: ChainAsset)
}

typealias AssetSelectionFilter = (ChainModel, AssetModel) -> Bool
