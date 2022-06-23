import SubstrateSdk

struct ValidatorSearchCellViewModel {
    let icon: DrawableIcon?
    let name: String?
    let address: String
    let details: String?
    let shouldShowWarning: Bool
    let shouldShowError: Bool
    var isSelected: Bool = false
}
