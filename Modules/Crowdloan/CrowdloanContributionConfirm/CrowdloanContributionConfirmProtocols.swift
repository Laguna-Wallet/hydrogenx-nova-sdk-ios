import SoraFoundation
import BigInt

protocol CrowdloanContributionConfirmPresenterProtocol: AnyObject {
    func setup()
    func confirm()
    func presentAccountOptions()
    func presentRewardDestination()
}

protocol CrowdloanContributionConfirmInteractorInputProtocol: CrowdloanContributionInteractorInputProtocol {
    func estimateFee(for contribution: BigUInt)
    func submit(contribution: BigUInt)
}

protocol CrowdloanContributionConfirmInteractorOutputProtocol: CrowdloanContributionInteractorOutputProtocol {
    func didSubmitContribution(result: Result<String, Error>)
    func didReceiveDisplayAddress(result: Result<DisplayAddress, Error>)
    func didReceiveRewardDestinationAddress(_ address: AccountAddress)
}
